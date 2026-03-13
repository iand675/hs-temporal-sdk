use crate::client::{rpc_req, rpc_resp, CRPCError, ClientRef, RPCError, RpcCall, TemporalCall};
use crate::runtime::{Capability, HsCallback, MVar};
use ffi_convert::{CArray, CReprOf};

macro_rules! rpc_call {
    ($svc:ident, $call:ident, $call_name:ident) => {{
        let req = rpc_req($call).map_err(|err| {
            CRPCError::c_repr_of(RPCError {
                code: 0,
                message: err,
                details: vec![],
            })
            .unwrap()
        })?;
        rpc_resp($svc.$call_name(req).await)
    }};
}

// TODO, these are all quite repetitive, can we generate them?
// TODO: [publish-crate]
/// # Safety
///
/// Haskell <-> Tokio FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_count_workflow_executions(
    client: *mut ClientRef,
    c_call: *const RpcCall,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CRPCError,
    result_slot: *mut *mut CArray<u8>,
) {
    let client = unsafe { &mut *client };
    let mut svc = client.connection.workflow_service();
    let call: TemporalCall = unsafe { (&*c_call).into() };

    let callback: HsCallback<CArray<u8>, CRPCError> = HsCallback {
        cap,
        mvar,
        result_slot,
        error_slot,
    };
    client.runtime.future_result_into_hs(callback, async move {
        match rpc_call!(svc, call, count_workflow_executions) {
            Ok(resp) => Ok(CArray::c_repr_of(resp).unwrap()),
            Err(err) => Err(err),
        }
    });
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell <-> Tokio FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_create_schedule(
    client: *mut ClientRef,
    c_call: *const RpcCall,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CRPCError,
    result_slot: *mut *mut CArray<u8>,
) {
    let client = unsafe { &mut *client };
    let mut svc = client.connection.workflow_service();
    let call: TemporalCall = unsafe { (&*c_call).into() };

    let callback: HsCallback<CArray<u8>, CRPCError> = HsCallback {
        cap,
        mvar,
        result_slot,
        error_slot,
    };
    client.runtime.future_result_into_hs(callback, async move {
        match rpc_call!(svc, call, create_schedule) {
            Ok(resp) => Ok(CArray::c_repr_of(resp).unwrap()),
            Err(err) => Err(err),
        }
    });
}

// TODO: [publish-crate]
/// # Safety
///
/// Haskell <-> Tokio FFI bridge invariants.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn hs_delete_schedule(
    client: *mut ClientRef,
    c_call: *const RpcCall,
    mvar: *mut MVar,
    cap: Capability,
    error_slot: *mut *mut CRPCError,
    result_slot: *mut *mut CArray<u8>,
) {
    let client = unsafe { &mut *client };
    let mut svc = client.connection.workflow_service();
    let call: TemporalCall = unsafe { (&*c_call).into() };

    let callback: HsCallback<CArray<u8>, CRPCError> = HsCallback {
        cap,
        mvar,
        result_slot,
        error_slot,
    };
    client.runtime.future_result_into_hs(callback, async move {
        match rpc_call!(svc, call, delete_schedule) {
            Ok(resp) => Ok(CArray::c_repr_of(resp).unwrap()),
            Err(err) => Err(err),
        }
    });
}

macro_rules! workflow_rpc {
    ($fn_name:ident, $method:ident) => {
        // TODO: [publish-crate]
        /// # Safety
        ///
        /// Haskell <-> Tokio FFI bridge invariants.
        #[unsafe(no_mangle)]
        pub unsafe extern "C" fn $fn_name(
            client: *mut ClientRef,
            c_call: *const RpcCall,
            mvar: *mut MVar,
            cap: Capability,
            error_slot: *mut *mut CRPCError,
            result_slot: *mut *mut CArray<u8>,
        ) {
            let client = unsafe { &mut *client };
            let mut svc = client.connection.workflow_service();
            let call: TemporalCall = unsafe { (&*c_call).into() };

            let callback: HsCallback<CArray<u8>, CRPCError> = HsCallback {
                cap,
                mvar,
                result_slot,
                error_slot,
            };
            client.runtime.future_result_into_hs(callback, async move {
                match rpc_call!(svc, call, $method) {
                    Ok(resp) => Ok(CArray::c_repr_of(resp).unwrap()),
                    Err(err) => Err(err),
                }
            });
        }
    };
}

macro_rules! operator_rpc {
    ($fn_name:ident, $method:ident) => {
        // TODO: [publish-crate]
        /// # Safety
        ///
        /// Haskell <-> Tokio FFI bridge invariants.
        #[unsafe(no_mangle)]
        pub unsafe extern "C" fn $fn_name(
            client: *mut ClientRef,
            c_call: *const RpcCall,
            mvar: *mut MVar,
            cap: Capability,
            error_slot: *mut *mut CRPCError,
            result_slot: *mut *mut CArray<u8>,
        ) {
            let client = unsafe { &mut *client };
            let mut svc = client.connection.operator_service();
            let call: TemporalCall = unsafe { (&*c_call).into() };

            let callback: HsCallback<CArray<u8>, CRPCError> = HsCallback {
                cap,
                mvar,
                result_slot,
                error_slot,
            };
            client.runtime.future_result_into_hs(callback, async move {
                match rpc_call!(svc, call, $method) {
                    Ok(resp) => Ok(CArray::c_repr_of(resp).unwrap()),
                    Err(err) => Err(err),
                }
            });
        }
    };
}

macro_rules! test_rpc {
    ($fn_name:ident, $method:ident) => {
        // TODO: [publish-crate]
        /// # Safety
        ///
        /// Haskell <-> Tokio FFI bridge invariants.
        #[unsafe(no_mangle)]
        pub unsafe extern "C" fn $fn_name(
            client: *mut ClientRef,
            c_call: *const RpcCall,
            mvar: *mut MVar,
            cap: Capability,
            error_slot: *mut *mut CRPCError,
            result_slot: *mut *mut CArray<u8>,
        ) {
            let client = unsafe { &mut *client };
            let mut svc = client.connection.test_service();
            let call: TemporalCall = unsafe { (&*c_call).into() };

            let callback: HsCallback<CArray<u8>, CRPCError> = HsCallback {
                cap,
                mvar,
                result_slot,
                error_slot,
            };
            client.runtime.future_result_into_hs(callback, async move {
                match rpc_call!(svc, call, $method) {
                    Ok(resp) => Ok(CArray::c_repr_of(resp).unwrap()),
                    Err(err) => Err(err),
                }
            });
        }
    };
}

workflow_rpc!(hs_deprecate_namespace, deprecate_namespace);
workflow_rpc!(hs_describe_namespace, describe_namespace);
workflow_rpc!(hs_describe_schedule, describe_schedule);
workflow_rpc!(hs_describe_task_queue, describe_task_queue);
workflow_rpc!(hs_describe_workflow_execution, describe_workflow_execution);
workflow_rpc!(hs_get_cluster_info, get_cluster_info);
workflow_rpc!(hs_get_search_attributes, get_search_attributes);
workflow_rpc!(hs_get_system_info, get_system_info);
workflow_rpc!(hs_get_worker_build_id_compatibility, get_worker_build_id_compatibility);
workflow_rpc!(hs_get_workflow_execution_history, get_workflow_execution_history);
workflow_rpc!(hs_get_workflow_execution_history_reverse, get_workflow_execution_history_reverse);
workflow_rpc!(hs_list_archived_workflow_executions, list_archived_workflow_executions);
workflow_rpc!(hs_list_closed_workflow_executions, list_closed_workflow_executions);
workflow_rpc!(hs_list_namespaces, list_namespaces);
workflow_rpc!(hs_list_open_workflow_executions, list_open_workflow_executions);
workflow_rpc!(hs_list_schedule_matching_times, list_schedule_matching_times);
workflow_rpc!(hs_list_schedules, list_schedules);
workflow_rpc!(hs_list_task_queue_partitions, list_task_queue_partitions);
workflow_rpc!(hs_list_workflow_executions, list_workflow_executions);
workflow_rpc!(hs_patch_schedule, patch_schedule);
workflow_rpc!(hs_poll_activity_task_queue, poll_activity_task_queue);
workflow_rpc!(hs_poll_workflow_execution_update, poll_workflow_execution_update);
workflow_rpc!(hs_poll_workflow_task_queue, poll_workflow_task_queue);
workflow_rpc!(hs_query_workflow, query_workflow);
workflow_rpc!(hs_record_activity_task_heartbeat, record_activity_task_heartbeat);
workflow_rpc!(hs_record_activity_task_heartbeat_by_id, record_activity_task_heartbeat_by_id);
workflow_rpc!(hs_register_namespace, register_namespace);
workflow_rpc!(hs_request_cancel_workflow_execution, request_cancel_workflow_execution);
workflow_rpc!(hs_reset_sticky_task_queue, reset_sticky_task_queue);
workflow_rpc!(hs_reset_workflow_execution, reset_workflow_execution);
workflow_rpc!(hs_respond_activity_task_canceled, respond_activity_task_canceled);
workflow_rpc!(hs_respond_activity_task_canceled_by_id, respond_activity_task_canceled_by_id);
workflow_rpc!(hs_respond_activity_task_completed, respond_activity_task_completed);
workflow_rpc!(hs_respond_activity_task_completed_by_id, respond_activity_task_completed_by_id);
workflow_rpc!(hs_respond_activity_task_failed, respond_activity_task_failed);
workflow_rpc!(hs_respond_activity_task_failed_by_id, respond_activity_task_failed_by_id);
workflow_rpc!(hs_respond_query_task_completed, respond_query_task_completed);
workflow_rpc!(hs_respond_workflow_task_completed, respond_workflow_task_completed);
workflow_rpc!(hs_respond_workflow_task_failed, respond_workflow_task_failed);
workflow_rpc!(hs_scan_workflow_executions, scan_workflow_executions);
workflow_rpc!(hs_signal_with_start_workflow_execution, signal_with_start_workflow_execution);
workflow_rpc!(hs_signal_workflow_execution, signal_workflow_execution);
workflow_rpc!(hs_start_workflow_execution, start_workflow_execution);
workflow_rpc!(hs_terminate_workflow_execution, terminate_workflow_execution);
workflow_rpc!(hs_update_namespace, update_namespace);
workflow_rpc!(hs_update_schedule, update_schedule);
workflow_rpc!(hs_update_workflow_execution, update_workflow_execution);
workflow_rpc!(hs_update_worker_build_id_compatibility, update_worker_build_id_compatibility);

// Test service RPCs
test_rpc!(hs_get_current_time, get_current_time);
test_rpc!(hs_lock_time_skipping, lock_time_skipping);
test_rpc!(hs_sleep_until, sleep_until);
test_rpc!(hs_sleep, sleep);
test_rpc!(hs_unlock_time_skipping_with_sleep, unlock_time_skipping_with_sleep);
test_rpc!(hs_unlock_time_skipping, unlock_time_skipping);

// Operator service RPCs
operator_rpc!(hs_add_or_update_remote_cluster, add_or_update_remote_cluster);
operator_rpc!(hs_add_search_attributes, add_search_attributes);
operator_rpc!(hs_delete_namespace, delete_namespace);
operator_rpc!(hs_list_clusters, list_clusters);
operator_rpc!(hs_list_search_attributes, list_search_attributes);
operator_rpc!(hs_remove_remote_cluster, remove_remote_cluster);
operator_rpc!(hs_remove_search_attributes, remove_search_attributes);
