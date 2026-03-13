use crate::runtime::{self, Capability, HsCallback, MVar};
use ffi_convert::*;
use serde::{Deserialize, Serialize};
use std::collections::HashMap;
use std::ffi::CStr;
use std::str::{FromStr, from_utf8_unchecked};
use std::time::Duration;
use temporalio_client::{
    ClientTlsOptions, Connection, ConnectionOptions, RetryOptions, TlsOptions,
};
use temporalio_client::grpc::{OperatorService, TestService, WorkflowService};
use tonic::metadata::{MetadataKey, errors::InvalidMetadataValue};
use url::Url;

#[derive(Serialize, Deserialize)]
pub struct ClientConfig {
    target_url: String,
    client_name: String,
    client_version: String,
    metadata: HashMap<String, String>,
    identity: String,
    tls_config: Option<ClientTlsConfig>,
    retry_config: Option<ClientRetryConfig>,
    api_key: Option<String>,
}

#[derive(Serialize, Deserialize)]
struct ClientTlsConfig {
    server_root_ca_cert: Option<Vec<u8>>,
    domain: Option<String>,
    client_cert: Option<Vec<u8>>,
    client_private_key: Option<Vec<u8>>,
}

#[derive(Serialize, Deserialize)]
struct ClientRetryConfig {
    pub initial_interval_millis: u64,
    pub randomization_factor: f64,
    pub multiplier: f64,
    pub max_interval_millis: u64,
    pub max_elapsed_time_millis: Option<u64>,
    pub max_retries: usize,
}

fn client_config_to_options(
    client_config: ClientConfig,
    metrics_meter: Option<temporalio_common::telemetry::metrics::TemporalMeter>,
) -> ConnectionOptions {
    let tls_options = client_config.tls_config.map(|tls_config| TlsOptions {
        server_root_ca_cert: tls_config.server_root_ca_cert,
        domain: tls_config.domain,
        client_tls_options: match (tls_config.client_cert, tls_config.client_private_key) {
            (Some(client_cert), Some(client_private_key)) => {
                Some(ClientTlsOptions {
                    client_cert,
                    client_private_key,
                })
            }
            _ => None,
        },
    });

    let retry_options = client_config.retry_config.map(|rc| RetryOptions {
        initial_interval: Duration::from_millis(rc.initial_interval_millis),
        randomization_factor: rc.randomization_factor,
        multiplier: rc.multiplier,
        max_interval: Duration::from_millis(rc.max_interval_millis),
        max_elapsed_time: rc.max_elapsed_time_millis.map(Duration::from_millis),
        max_retries: rc.max_retries,
    });

    let mut builder = ConnectionOptions::new(Url::parse(&client_config.target_url).unwrap())
        .client_name(client_config.client_name)
        .client_version(client_config.client_version)
        .identity(client_config.identity);

    if let Some(tls) = tls_options {
        builder = builder.tls_options(tls);
    }
    if let Some(retry) = retry_options {
        builder = builder.retry_options(retry);
    }
    if let Some(key) = client_config.api_key {
        builder = builder.api_key(key);
    }
    if let Some(meter) = metrics_meter {
        builder = builder.metrics_meter(meter);
    }
    if !client_config.metadata.is_empty() {
        builder = builder.headers(client_config.metadata);
    }

    builder.build()
}

#[repr(C)]
pub struct HaskellHashMapEntries {
    key: *const u8,
    key_len: usize,
    value: *const u8,
    value_len: usize,
    next: *const HaskellHashMapEntries,
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
pub unsafe fn convert_hashmap(hashmap: *const HaskellHashMapEntries) -> HashMap<String, String> {
    let mut map = HashMap::new();
    if hashmap.is_null() {
        return map;
    }

    let mut hashmap_ptr = hashmap;
    while !hashmap_ptr.is_null() {
        let hashmap_val = unsafe { &*hashmap_ptr };
        let key = unsafe {
            from_utf8_unchecked(std::slice::from_raw_parts(
                hashmap_val.key,
                hashmap_val.key_len,
            ))
        };
        let value = unsafe {
            from_utf8_unchecked(std::slice::from_raw_parts(
                hashmap_val.value,
                hashmap_val.value_len,
            ))
        };
        map.insert(key.to_string(), value.to_string());
        hashmap_ptr = unsafe { (*hashmap).next };
    }

    map
}
#[repr(C)]
pub struct RpcCall {
    req: *const CArray<u8>,
    retry: bool,
    metadata: *const HaskellHashMapEntries,
    // nullable
    timeout_millis: *const u64,
}

pub(crate) struct TemporalCall {
    pub(crate) req: Vec<u8>,
    pub(crate) retry: bool,
    pub(crate) metadata: HashMap<String, String>,
    pub(crate) timeout_millis: Option<u64>,
}

impl From<&RpcCall> for TemporalCall {
    fn from(rpc_call: &RpcCall) -> Self {
        TemporalCall {
            req: unsafe {
                let req_array = rpc_call.req;
                let rust_vec = (*req_array).as_rust();
                rust_vec.unwrap().clone()
            },
            retry: rpc_call.retry,
            metadata: unsafe { convert_hashmap(rpc_call.metadata) },
            timeout_millis: if rpc_call.timeout_millis.is_null() {
                None
            } else {
                Some(unsafe { *rpc_call.timeout_millis })
            },
        }
    }
}

pub struct ClientRef {
    pub(crate) connection: Connection,
    pub(crate) runtime: runtime::Runtime,
}

impl RawPointerConverter<ClientRef> for ClientRef {
    fn into_raw_pointer(self) -> *const ClientRef {
        convert_into_raw_pointer(self)
    }

    fn into_raw_pointer_mut(self) -> *mut ClientRef {
        convert_into_raw_pointer_mut(self)
    }

    unsafe fn from_raw_pointer(ptr: *const ClientRef) -> Result<Self, UnexpectedNullPointerError> {
        unsafe { take_back_from_raw_pointer(ptr) }
    }

    unsafe fn from_raw_pointer_mut(
        ptr: *mut ClientRef,
    ) -> Result<Self, UnexpectedNullPointerError> {
        unsafe { take_back_from_raw_pointer_mut(ptr) }
    }
}

pub fn connect_client(
    runtime_ref: &runtime::RuntimeRef,
    config: ClientConfig,
    hs_callback: HsCallback<ClientRef, CArray<u8>>,
) {
    let metrics_meter = runtime_ref.runtime.core.telemetry().get_temporal_metric_meter();
    let opts = client_config_to_options(config, metrics_meter);
    let runtime = runtime_ref.runtime.clone();
    runtime_ref
        .runtime
        .future_result_into_hs(hs_callback, async move {
            let connection_result = Connection::connect(opts).await;

            match connection_result {
                Ok(connection) => Ok(ClientRef {
                    connection,
                    runtime,
                }),
                Err(e) => {
                    let err_message = e.to_string().into_bytes();
                    Err(CArray::c_repr_of(err_message).unwrap())
                }
            }
        })
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell <-> Tokio FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_connect_client(
    runtime_ref: *const runtime::RuntimeRef,
    config_json: *const libc::c_char,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CArray<u8>,
    result_slot: *mut *mut ClientRef,
) {
    let runtime_ref = unsafe { &*runtime_ref };
    let config_json = unsafe { CStr::from_ptr(config_json) };
    let config: ClientConfig = serde_json::from_slice(config_json.to_bytes()).unwrap();
    let hs_callback = runtime::HsCallback {
        cap,
        mvar,
        error_slot,
        result_slot,
    };
    connect_client(runtime_ref, config, hs_callback);
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_drop_client(client: *mut ClientRef) {
    unsafe {
        drop(Box::from_raw(client));
    }
}

pub(crate) fn rpc_req<P: prost::Message + Default>(
    call: TemporalCall,
) -> Result<tonic::Request<P>, String> {
    let buf = call.req.as_slice();
    let proto = P::decode(buf).map_err(|err| err.to_string())?;
    let mut req = tonic::Request::new(proto);
    let metadata = &call.metadata;
    for (k, v) in metadata {
        req.metadata_mut().insert(
            MetadataKey::from_str(k.as_str()).map_err(|err| err.to_string())?,
            v.parse()
                .map_err(|err: InvalidMetadataValue| err.to_string())?,
        );
    }
    if let Some(timeout_millis) = call.timeout_millis {
        req.set_timeout(Duration::from_millis(timeout_millis));
    }
    Ok(req)
}

#[derive(Debug)]
pub struct RPCError {
    pub code: u32,
    pub message: String,
    pub details: Vec<u8>,
}

#[repr(C)]
#[derive(CReprOf, AsRust, CDrop, RawPointerConverter)]
#[target_type(RPCError)]
pub struct CRPCError {
    code: u32,
    message: *const libc::c_char,
    details: *const CArray<u8>,
}

impl From<String> for CRPCError {
    fn from(err: String) -> Self {
        CRPCError::c_repr_of(RPCError {
            code: 0,
            message: err,
            details: vec![],
        })
        .unwrap()
    }
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_temporal_drop_rpc_error(error: *mut CRPCError) {
    unsafe {
        CRPCError::drop_raw_pointer(error).unwrap();
    }
}

pub(crate) fn rpc_resp<P>(
    res: Result<tonic::Response<P>, tonic::Status>,
) -> Result<Vec<u8>, CRPCError>
where
    P: prost::Message,
    P: Default,
{
    match res {
        Ok(resp) => Ok(resp.get_ref().encode_to_vec()),
        Err(err) => {
            eprintln!("Error: {:?}", err);
            Err(CRPCError::c_repr_of(RPCError {
                code: err.code() as u32,
                message: err.message().to_owned(),
                details: err.details().into(),
            })
            .unwrap())
        }
    }
}
