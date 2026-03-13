{- This file was auto-generated from temporal/api/nexus/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Nexus.V1.Message (
        CancelOperationRequest(), CancelOperationResponse(), Endpoint(),
        EndpointSpec(), EndpointTarget(), EndpointTarget'Variant(..),
        _EndpointTarget'Worker', _EndpointTarget'External',
        EndpointTarget'External(), EndpointTarget'Worker(), Failure(),
        Failure'MetadataEntry(), HandlerError(), Link(), Request(),
        Request'Variant(..), _Request'StartOperation,
        _Request'CancelOperation, Request'Capabilities(),
        Request'HeaderEntry(), Response(), Response'Variant(..),
        _Response'StartOperation, _Response'CancelOperation,
        StartOperationRequest(),
        StartOperationRequest'CallbackHeaderEntry(),
        StartOperationResponse(), StartOperationResponse'Variant(..),
        _StartOperationResponse'SyncSuccess,
        _StartOperationResponse'AsyncSuccess,
        _StartOperationResponse'OperationError,
        _StartOperationResponse'Failure, StartOperationResponse'Async(),
        StartOperationResponse'Sync(), UnsuccessfulOperationError()
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Enums.V1.Nexus
import qualified Proto.Temporal.Api.Failure.V1.Message
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.service' @:: Lens' CancelOperationRequest Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operation' @:: Lens' CancelOperationRequest Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operationId' @:: Lens' CancelOperationRequest Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operationToken' @:: Lens' CancelOperationRequest Data.Text.Text@ -}
data CancelOperationRequest
  = CancelOperationRequest'_constructor {_CancelOperationRequest'service :: !Data.Text.Text,
                                         _CancelOperationRequest'operation :: !Data.Text.Text,
                                         _CancelOperationRequest'operationId :: !Data.Text.Text,
                                         _CancelOperationRequest'operationToken :: !Data.Text.Text,
                                         _CancelOperationRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CancelOperationRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CancelOperationRequest "service" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelOperationRequest'service
           (\ x__ y__ -> x__ {_CancelOperationRequest'service = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CancelOperationRequest "operation" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelOperationRequest'operation
           (\ x__ y__ -> x__ {_CancelOperationRequest'operation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CancelOperationRequest "operationId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelOperationRequest'operationId
           (\ x__ y__ -> x__ {_CancelOperationRequest'operationId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CancelOperationRequest "operationToken" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelOperationRequest'operationToken
           (\ x__ y__ -> x__ {_CancelOperationRequest'operationToken = y__}))
        Prelude.id
instance Data.ProtoLens.Message CancelOperationRequest where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.CancelOperationRequest"
  packedMessageDescriptor _
    = "\n\
      \\SYNCancelOperationRequest\DC2\CAN\n\
      \\aservice\CAN\SOH \SOH(\tR\aservice\DC2\FS\n\
      \\toperation\CAN\STX \SOH(\tR\toperation\DC2%\n\
      \\foperation_id\CAN\ETX \SOH(\tR\voperationIdB\STX\CAN\SOH\DC2'\n\
      \\SIoperation_token\CAN\EOT \SOH(\tR\SOoperationToken"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        service__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"service")) ::
              Data.ProtoLens.FieldDescriptor CancelOperationRequest
        operation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operation")) ::
              Data.ProtoLens.FieldDescriptor CancelOperationRequest
        operationId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationId")) ::
              Data.ProtoLens.FieldDescriptor CancelOperationRequest
        operationToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationToken")) ::
              Data.ProtoLens.FieldDescriptor CancelOperationRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, service__field_descriptor),
           (Data.ProtoLens.Tag 2, operation__field_descriptor),
           (Data.ProtoLens.Tag 3, operationId__field_descriptor),
           (Data.ProtoLens.Tag 4, operationToken__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CancelOperationRequest'_unknownFields
        (\ x__ y__ -> x__ {_CancelOperationRequest'_unknownFields = y__})
  defMessage
    = CancelOperationRequest'_constructor
        {_CancelOperationRequest'service = Data.ProtoLens.fieldDefault,
         _CancelOperationRequest'operation = Data.ProtoLens.fieldDefault,
         _CancelOperationRequest'operationId = Data.ProtoLens.fieldDefault,
         _CancelOperationRequest'operationToken = Data.ProtoLens.fieldDefault,
         _CancelOperationRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CancelOperationRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser CancelOperationRequest
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "service"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"service") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operation") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operationId") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_token"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"operationToken") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CancelOperationRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"service") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operation") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"operationId") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"operationToken") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData CancelOperationRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CancelOperationRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CancelOperationRequest'service x__)
                (Control.DeepSeq.deepseq
                   (_CancelOperationRequest'operation x__)
                   (Control.DeepSeq.deepseq
                      (_CancelOperationRequest'operationId x__)
                      (Control.DeepSeq.deepseq
                         (_CancelOperationRequest'operationToken x__) ()))))
{- | Fields :
      -}
data CancelOperationResponse
  = CancelOperationResponse'_constructor {_CancelOperationResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CancelOperationResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message CancelOperationResponse where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.CancelOperationResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBCancelOperationResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CancelOperationResponse'_unknownFields
        (\ x__ y__ -> x__ {_CancelOperationResponse'_unknownFields = y__})
  defMessage
    = CancelOperationResponse'_constructor
        {_CancelOperationResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CancelOperationResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser CancelOperationResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CancelOperationResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData CancelOperationResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CancelOperationResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.version' @:: Lens' Endpoint Data.Int.Int64@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.id' @:: Lens' Endpoint Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.spec' @:: Lens' Endpoint EndpointSpec@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'spec' @:: Lens' Endpoint (Prelude.Maybe EndpointSpec)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.createdTime' @:: Lens' Endpoint Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'createdTime' @:: Lens' Endpoint (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.lastModifiedTime' @:: Lens' Endpoint Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'lastModifiedTime' @:: Lens' Endpoint (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.urlPrefix' @:: Lens' Endpoint Data.Text.Text@ -}
data Endpoint
  = Endpoint'_constructor {_Endpoint'version :: !Data.Int.Int64,
                           _Endpoint'id :: !Data.Text.Text,
                           _Endpoint'spec :: !(Prelude.Maybe EndpointSpec),
                           _Endpoint'createdTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                           _Endpoint'lastModifiedTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                           _Endpoint'urlPrefix :: !Data.Text.Text,
                           _Endpoint'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Endpoint where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Endpoint "version" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'version (\ x__ y__ -> x__ {_Endpoint'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Endpoint "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'id (\ x__ y__ -> x__ {_Endpoint'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Endpoint "spec" EndpointSpec where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'spec (\ x__ y__ -> x__ {_Endpoint'spec = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Endpoint "maybe'spec" (Prelude.Maybe EndpointSpec) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'spec (\ x__ y__ -> x__ {_Endpoint'spec = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Endpoint "createdTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'createdTime
           (\ x__ y__ -> x__ {_Endpoint'createdTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Endpoint "maybe'createdTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'createdTime
           (\ x__ y__ -> x__ {_Endpoint'createdTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Endpoint "lastModifiedTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'lastModifiedTime
           (\ x__ y__ -> x__ {_Endpoint'lastModifiedTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Endpoint "maybe'lastModifiedTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'lastModifiedTime
           (\ x__ y__ -> x__ {_Endpoint'lastModifiedTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Endpoint "urlPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Endpoint'urlPrefix (\ x__ y__ -> x__ {_Endpoint'urlPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Message Endpoint where
  messageName _ = Data.Text.pack "temporal.api.nexus.v1.Endpoint"
  packedMessageDescriptor _
    = "\n\
      \\bEndpoint\DC2\CAN\n\
      \\aversion\CAN\SOH \SOH(\ETXR\aversion\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\tR\STXid\DC27\n\
      \\EOTspec\CAN\ETX \SOH(\v2#.temporal.api.nexus.v1.EndpointSpecR\EOTspec\DC2=\n\
      \\fcreated_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\vcreatedTime\DC2H\n\
      \\DC2last_modified_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\DLElastModifiedTime\DC2\GS\n\
      \\n\
      \url_prefix\CAN\ACK \SOH(\tR\turlPrefix"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor Endpoint
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor Endpoint
        spec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "spec"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EndpointSpec)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'spec")) ::
              Data.ProtoLens.FieldDescriptor Endpoint
        createdTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "created_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'createdTime")) ::
              Data.ProtoLens.FieldDescriptor Endpoint
        lastModifiedTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_modified_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastModifiedTime")) ::
              Data.ProtoLens.FieldDescriptor Endpoint
        urlPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "url_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"urlPrefix")) ::
              Data.ProtoLens.FieldDescriptor Endpoint
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, version__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor),
           (Data.ProtoLens.Tag 3, spec__field_descriptor),
           (Data.ProtoLens.Tag 4, createdTime__field_descriptor),
           (Data.ProtoLens.Tag 5, lastModifiedTime__field_descriptor),
           (Data.ProtoLens.Tag 6, urlPrefix__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Endpoint'_unknownFields
        (\ x__ y__ -> x__ {_Endpoint'_unknownFields = y__})
  defMessage
    = Endpoint'_constructor
        {_Endpoint'version = Data.ProtoLens.fieldDefault,
         _Endpoint'id = Data.ProtoLens.fieldDefault,
         _Endpoint'spec = Prelude.Nothing,
         _Endpoint'createdTime = Prelude.Nothing,
         _Endpoint'lastModifiedTime = Prelude.Nothing,
         _Endpoint'urlPrefix = Data.ProtoLens.fieldDefault,
         _Endpoint'_unknownFields = []}
  parseMessage
    = let
        loop :: Endpoint -> Data.ProtoLens.Encoding.Bytes.Parser Endpoint
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "spec"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"spec") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "created_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"createdTime") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_modified_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastModifiedTime") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "url_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"urlPrefix") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Endpoint"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'spec") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'createdTime") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'lastModifiedTime") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"urlPrefix") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8 _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData Endpoint where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Endpoint'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Endpoint'version x__)
                (Control.DeepSeq.deepseq
                   (_Endpoint'id x__)
                   (Control.DeepSeq.deepseq
                      (_Endpoint'spec x__)
                      (Control.DeepSeq.deepseq
                         (_Endpoint'createdTime x__)
                         (Control.DeepSeq.deepseq
                            (_Endpoint'lastModifiedTime x__)
                            (Control.DeepSeq.deepseq (_Endpoint'urlPrefix x__) ()))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.name' @:: Lens' EndpointSpec Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.description' @:: Lens' EndpointSpec Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'description' @:: Lens' EndpointSpec (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.target' @:: Lens' EndpointSpec EndpointTarget@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'target' @:: Lens' EndpointSpec (Prelude.Maybe EndpointTarget)@ -}
data EndpointSpec
  = EndpointSpec'_constructor {_EndpointSpec'name :: !Data.Text.Text,
                               _EndpointSpec'description :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                               _EndpointSpec'target :: !(Prelude.Maybe EndpointTarget),
                               _EndpointSpec'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EndpointSpec where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EndpointSpec "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointSpec'name (\ x__ y__ -> x__ {_EndpointSpec'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointSpec "description" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointSpec'description
           (\ x__ y__ -> x__ {_EndpointSpec'description = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EndpointSpec "maybe'description" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointSpec'description
           (\ x__ y__ -> x__ {_EndpointSpec'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointSpec "target" EndpointTarget where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointSpec'target
           (\ x__ y__ -> x__ {_EndpointSpec'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EndpointSpec "maybe'target" (Prelude.Maybe EndpointTarget) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointSpec'target
           (\ x__ y__ -> x__ {_EndpointSpec'target = y__}))
        Prelude.id
instance Data.ProtoLens.Message EndpointSpec where
  messageName _ = Data.Text.pack "temporal.api.nexus.v1.EndpointSpec"
  packedMessageDescriptor _
    = "\n\
      \\fEndpointSpec\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2A\n\
      \\vdescription\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\vdescription\DC2=\n\
      \\ACKtarget\CAN\ETX \SOH(\v2%.temporal.api.nexus.v1.EndpointTargetR\ACKtarget"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor EndpointSpec
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'description")) ::
              Data.ProtoLens.FieldDescriptor EndpointSpec
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EndpointTarget)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor EndpointSpec
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, description__field_descriptor),
           (Data.ProtoLens.Tag 3, target__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EndpointSpec'_unknownFields
        (\ x__ y__ -> x__ {_EndpointSpec'_unknownFields = y__})
  defMessage
    = EndpointSpec'_constructor
        {_EndpointSpec'name = Data.ProtoLens.fieldDefault,
         _EndpointSpec'description = Prelude.Nothing,
         _EndpointSpec'target = Prelude.Nothing,
         _EndpointSpec'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EndpointSpec -> Data.ProtoLens.Encoding.Bytes.Parser EndpointSpec
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EndpointSpec"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'description") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData EndpointSpec where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EndpointSpec'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EndpointSpec'name x__)
                (Control.DeepSeq.deepseq
                   (_EndpointSpec'description x__)
                   (Control.DeepSeq.deepseq (_EndpointSpec'target x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'variant' @:: Lens' EndpointTarget (Prelude.Maybe EndpointTarget'Variant)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'worker' @:: Lens' EndpointTarget (Prelude.Maybe EndpointTarget'Worker)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.worker' @:: Lens' EndpointTarget EndpointTarget'Worker@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'external' @:: Lens' EndpointTarget (Prelude.Maybe EndpointTarget'External)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.external' @:: Lens' EndpointTarget EndpointTarget'External@ -}
data EndpointTarget
  = EndpointTarget'_constructor {_EndpointTarget'variant :: !(Prelude.Maybe EndpointTarget'Variant),
                                 _EndpointTarget'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EndpointTarget where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data EndpointTarget'Variant
  = EndpointTarget'Worker' !EndpointTarget'Worker |
    EndpointTarget'External' !EndpointTarget'External
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField EndpointTarget "maybe'variant" (Prelude.Maybe EndpointTarget'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointTarget'variant
           (\ x__ y__ -> x__ {_EndpointTarget'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointTarget "maybe'worker" (Prelude.Maybe EndpointTarget'Worker) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointTarget'variant
           (\ x__ y__ -> x__ {_EndpointTarget'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (EndpointTarget'Worker' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap EndpointTarget'Worker' y__))
instance Data.ProtoLens.Field.HasField EndpointTarget "worker" EndpointTarget'Worker where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointTarget'variant
           (\ x__ y__ -> x__ {_EndpointTarget'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (EndpointTarget'Worker' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap EndpointTarget'Worker' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField EndpointTarget "maybe'external" (Prelude.Maybe EndpointTarget'External) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointTarget'variant
           (\ x__ y__ -> x__ {_EndpointTarget'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (EndpointTarget'External' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap EndpointTarget'External' y__))
instance Data.ProtoLens.Field.HasField EndpointTarget "external" EndpointTarget'External where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointTarget'variant
           (\ x__ y__ -> x__ {_EndpointTarget'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (EndpointTarget'External' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap EndpointTarget'External' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message EndpointTarget where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.EndpointTarget"
  packedMessageDescriptor _
    = "\n\
      \\SOEndpointTarget\DC2F\n\
      \\ACKworker\CAN\SOH \SOH(\v2,.temporal.api.nexus.v1.EndpointTarget.WorkerH\NULR\ACKworker\DC2L\n\
      \\bexternal\CAN\STX \SOH(\v2..temporal.api.nexus.v1.EndpointTarget.ExternalH\NULR\bexternal\SUBE\n\
      \\ACKWorker\DC2\FS\n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\GS\n\
      \\n\
      \task_queue\CAN\STX \SOH(\tR\ttaskQueue\SUB\FS\n\
      \\bExternal\DC2\DLE\n\
      \\ETXurl\CAN\SOH \SOH(\tR\ETXurlB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        worker__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "worker"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EndpointTarget'Worker)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'worker")) ::
              Data.ProtoLens.FieldDescriptor EndpointTarget
        external__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "external"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EndpointTarget'External)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'external")) ::
              Data.ProtoLens.FieldDescriptor EndpointTarget
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, worker__field_descriptor),
           (Data.ProtoLens.Tag 2, external__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EndpointTarget'_unknownFields
        (\ x__ y__ -> x__ {_EndpointTarget'_unknownFields = y__})
  defMessage
    = EndpointTarget'_constructor
        {_EndpointTarget'variant = Prelude.Nothing,
         _EndpointTarget'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EndpointTarget
          -> Data.ProtoLens.Encoding.Bytes.Parser EndpointTarget
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "worker"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"worker") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "external"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"external") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EndpointTarget"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (EndpointTarget'Worker' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (EndpointTarget'External' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EndpointTarget where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EndpointTarget'_unknownFields x__)
             (Control.DeepSeq.deepseq (_EndpointTarget'variant x__) ())
instance Control.DeepSeq.NFData EndpointTarget'Variant where
  rnf (EndpointTarget'Worker' x__) = Control.DeepSeq.rnf x__
  rnf (EndpointTarget'External' x__) = Control.DeepSeq.rnf x__
_EndpointTarget'Worker' ::
  Data.ProtoLens.Prism.Prism' EndpointTarget'Variant EndpointTarget'Worker
_EndpointTarget'Worker'
  = Data.ProtoLens.Prism.prism'
      EndpointTarget'Worker'
      (\ p__
         -> case p__ of
              (EndpointTarget'Worker' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_EndpointTarget'External' ::
  Data.ProtoLens.Prism.Prism' EndpointTarget'Variant EndpointTarget'External
_EndpointTarget'External'
  = Data.ProtoLens.Prism.prism'
      EndpointTarget'External'
      (\ p__
         -> case p__ of
              (EndpointTarget'External' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.url' @:: Lens' EndpointTarget'External Data.Text.Text@ -}
data EndpointTarget'External
  = EndpointTarget'External'_constructor {_EndpointTarget'External'url :: !Data.Text.Text,
                                          _EndpointTarget'External'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EndpointTarget'External where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EndpointTarget'External "url" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointTarget'External'url
           (\ x__ y__ -> x__ {_EndpointTarget'External'url = y__}))
        Prelude.id
instance Data.ProtoLens.Message EndpointTarget'External where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.EndpointTarget.External"
  packedMessageDescriptor _
    = "\n\
      \\bExternal\DC2\DLE\n\
      \\ETXurl\CAN\SOH \SOH(\tR\ETXurl"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        url__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"url")) ::
              Data.ProtoLens.FieldDescriptor EndpointTarget'External
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, url__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EndpointTarget'External'_unknownFields
        (\ x__ y__ -> x__ {_EndpointTarget'External'_unknownFields = y__})
  defMessage
    = EndpointTarget'External'_constructor
        {_EndpointTarget'External'url = Data.ProtoLens.fieldDefault,
         _EndpointTarget'External'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EndpointTarget'External
          -> Data.ProtoLens.Encoding.Bytes.Parser EndpointTarget'External
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "url"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"url") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "External"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"url") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EndpointTarget'External where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EndpointTarget'External'_unknownFields x__)
             (Control.DeepSeq.deepseq (_EndpointTarget'External'url x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.namespace' @:: Lens' EndpointTarget'Worker Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.taskQueue' @:: Lens' EndpointTarget'Worker Data.Text.Text@ -}
data EndpointTarget'Worker
  = EndpointTarget'Worker'_constructor {_EndpointTarget'Worker'namespace :: !Data.Text.Text,
                                        _EndpointTarget'Worker'taskQueue :: !Data.Text.Text,
                                        _EndpointTarget'Worker'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EndpointTarget'Worker where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EndpointTarget'Worker "namespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointTarget'Worker'namespace
           (\ x__ y__ -> x__ {_EndpointTarget'Worker'namespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointTarget'Worker "taskQueue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointTarget'Worker'taskQueue
           (\ x__ y__ -> x__ {_EndpointTarget'Worker'taskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Message EndpointTarget'Worker where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.EndpointTarget.Worker"
  packedMessageDescriptor _
    = "\n\
      \\ACKWorker\DC2\FS\n\
      \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\GS\n\
      \\n\
      \task_queue\CAN\STX \SOH(\tR\ttaskQueue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        namespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "namespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"namespace")) ::
              Data.ProtoLens.FieldDescriptor EndpointTarget'Worker
        taskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"taskQueue")) ::
              Data.ProtoLens.FieldDescriptor EndpointTarget'Worker
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, namespace__field_descriptor),
           (Data.ProtoLens.Tag 2, taskQueue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EndpointTarget'Worker'_unknownFields
        (\ x__ y__ -> x__ {_EndpointTarget'Worker'_unknownFields = y__})
  defMessage
    = EndpointTarget'Worker'_constructor
        {_EndpointTarget'Worker'namespace = Data.ProtoLens.fieldDefault,
         _EndpointTarget'Worker'taskQueue = Data.ProtoLens.fieldDefault,
         _EndpointTarget'Worker'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EndpointTarget'Worker
          -> Data.ProtoLens.Encoding.Bytes.Parser EndpointTarget'Worker
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "namespace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"namespace") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "task_queue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskQueue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Worker"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"namespace") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"taskQueue") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData EndpointTarget'Worker where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EndpointTarget'Worker'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EndpointTarget'Worker'namespace x__)
                (Control.DeepSeq.deepseq
                   (_EndpointTarget'Worker'taskQueue x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.message' @:: Lens' Failure Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.stackTrace' @:: Lens' Failure Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.metadata' @:: Lens' Failure (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.details' @:: Lens' Failure Data.ByteString.ByteString@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.cause' @:: Lens' Failure Failure@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'cause' @:: Lens' Failure (Prelude.Maybe Failure)@ -}
data Failure
  = Failure'_constructor {_Failure'message :: !Data.Text.Text,
                          _Failure'stackTrace :: !Data.Text.Text,
                          _Failure'metadata :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                          _Failure'details :: !Data.ByteString.ByteString,
                          _Failure'cause :: !(Prelude.Maybe Failure),
                          _Failure'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Failure where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Failure "message" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'message (\ x__ y__ -> x__ {_Failure'message = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Failure "stackTrace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'stackTrace (\ x__ y__ -> x__ {_Failure'stackTrace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Failure "metadata" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'metadata (\ x__ y__ -> x__ {_Failure'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Failure "details" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'details (\ x__ y__ -> x__ {_Failure'details = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Failure "cause" Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'cause (\ x__ y__ -> x__ {_Failure'cause = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Failure "maybe'cause" (Prelude.Maybe Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'cause (\ x__ y__ -> x__ {_Failure'cause = y__}))
        Prelude.id
instance Data.ProtoLens.Message Failure where
  messageName _ = Data.Text.pack "temporal.api.nexus.v1.Failure"
  packedMessageDescriptor _
    = "\n\
      \\aFailure\DC2\CAN\n\
      \\amessage\CAN\SOH \SOH(\tR\amessage\DC2\US\n\
      \\vstack_trace\CAN\EOT \SOH(\tR\n\
      \stackTrace\DC2H\n\
      \\bmetadata\CAN\STX \ETX(\v2,.temporal.api.nexus.v1.Failure.MetadataEntryR\bmetadata\DC2\CAN\n\
      \\adetails\CAN\ETX \SOH(\fR\adetails\DC24\n\
      \\ENQcause\CAN\ENQ \SOH(\v2\RS.temporal.api.nexus.v1.FailureR\ENQcause\SUB;\n\
      \\rMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        message__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"message")) ::
              Data.ProtoLens.FieldDescriptor Failure
        stackTrace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stack_trace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stackTrace")) ::
              Data.ProtoLens.FieldDescriptor Failure
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Failure'MetadataEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor Failure
        details__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "details"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"details")) ::
              Data.ProtoLens.FieldDescriptor Failure
        cause__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cause"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cause")) ::
              Data.ProtoLens.FieldDescriptor Failure
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, message__field_descriptor),
           (Data.ProtoLens.Tag 4, stackTrace__field_descriptor),
           (Data.ProtoLens.Tag 2, metadata__field_descriptor),
           (Data.ProtoLens.Tag 3, details__field_descriptor),
           (Data.ProtoLens.Tag 5, cause__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Failure'_unknownFields
        (\ x__ y__ -> x__ {_Failure'_unknownFields = y__})
  defMessage
    = Failure'_constructor
        {_Failure'message = Data.ProtoLens.fieldDefault,
         _Failure'stackTrace = Data.ProtoLens.fieldDefault,
         _Failure'metadata = Data.Map.empty,
         _Failure'details = Data.ProtoLens.fieldDefault,
         _Failure'cause = Prelude.Nothing, _Failure'_unknownFields = []}
  parseMessage
    = let
        loop :: Failure -> Data.ProtoLens.Encoding.Bytes.Parser Failure
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "message"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"message") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "stack_trace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stackTrace") y x)
                        18
                          -> do !(entry :: Failure'MetadataEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                           Data.ProtoLens.Encoding.Bytes.isolate
                                                                             (Prelude.fromIntegral
                                                                                len)
                                                                             Data.ProtoLens.parseMessage)
                                                                       "metadata"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"metadata")
                                        (\ !t -> Data.Map.insert key value t) x))
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "details"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"details") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cause"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cause") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Failure"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"message") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"stackTrace") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (Data.Monoid.mconcat
                      (Prelude.map
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                          (Data.ProtoLens.defMessage :: Failure'MetadataEntry)))))
                         (Data.Map.toList
                            (Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x))))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"details") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                               ((\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cause") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Failure where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Failure'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Failure'message x__)
                (Control.DeepSeq.deepseq
                   (_Failure'stackTrace x__)
                   (Control.DeepSeq.deepseq
                      (_Failure'metadata x__)
                      (Control.DeepSeq.deepseq
                         (_Failure'details x__)
                         (Control.DeepSeq.deepseq (_Failure'cause x__) ())))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.key' @:: Lens' Failure'MetadataEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.value' @:: Lens' Failure'MetadataEntry Data.Text.Text@ -}
data Failure'MetadataEntry
  = Failure'MetadataEntry'_constructor {_Failure'MetadataEntry'key :: !Data.Text.Text,
                                        _Failure'MetadataEntry'value :: !Data.Text.Text,
                                        _Failure'MetadataEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Failure'MetadataEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Failure'MetadataEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'MetadataEntry'key
           (\ x__ y__ -> x__ {_Failure'MetadataEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Failure'MetadataEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Failure'MetadataEntry'value
           (\ x__ y__ -> x__ {_Failure'MetadataEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Failure'MetadataEntry where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.Failure.MetadataEntry"
  packedMessageDescriptor _
    = "\n\
      \\rMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor Failure'MetadataEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor Failure'MetadataEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Failure'MetadataEntry'_unknownFields
        (\ x__ y__ -> x__ {_Failure'MetadataEntry'_unknownFields = y__})
  defMessage
    = Failure'MetadataEntry'_constructor
        {_Failure'MetadataEntry'key = Data.ProtoLens.fieldDefault,
         _Failure'MetadataEntry'value = Data.ProtoLens.fieldDefault,
         _Failure'MetadataEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Failure'MetadataEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser Failure'MetadataEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MetadataEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Failure'MetadataEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Failure'MetadataEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Failure'MetadataEntry'key x__)
                (Control.DeepSeq.deepseq (_Failure'MetadataEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.errorType' @:: Lens' HandlerError Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.failure' @:: Lens' HandlerError Failure@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'failure' @:: Lens' HandlerError (Prelude.Maybe Failure)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.retryBehavior' @:: Lens' HandlerError Proto.Temporal.Api.Enums.V1.Nexus.NexusHandlerErrorRetryBehavior@ -}
data HandlerError
  = HandlerError'_constructor {_HandlerError'errorType :: !Data.Text.Text,
                               _HandlerError'failure :: !(Prelude.Maybe Failure),
                               _HandlerError'retryBehavior :: !Proto.Temporal.Api.Enums.V1.Nexus.NexusHandlerErrorRetryBehavior,
                               _HandlerError'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HandlerError where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HandlerError "errorType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HandlerError'errorType
           (\ x__ y__ -> x__ {_HandlerError'errorType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HandlerError "failure" Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HandlerError'failure
           (\ x__ y__ -> x__ {_HandlerError'failure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HandlerError "maybe'failure" (Prelude.Maybe Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HandlerError'failure
           (\ x__ y__ -> x__ {_HandlerError'failure = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HandlerError "retryBehavior" Proto.Temporal.Api.Enums.V1.Nexus.NexusHandlerErrorRetryBehavior where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HandlerError'retryBehavior
           (\ x__ y__ -> x__ {_HandlerError'retryBehavior = y__}))
        Prelude.id
instance Data.ProtoLens.Message HandlerError where
  messageName _ = Data.Text.pack "temporal.api.nexus.v1.HandlerError"
  packedMessageDescriptor _
    = "\n\
      \\fHandlerError\DC2\GS\n\
      \\n\
      \error_type\CAN\SOH \SOH(\tR\terrorType\DC28\n\
      \\afailure\CAN\STX \SOH(\v2\RS.temporal.api.nexus.v1.FailureR\afailure\DC2\\\n\
      \\SOretry_behavior\CAN\ETX \SOH(\SO25.temporal.api.enums.v1.NexusHandlerErrorRetryBehaviorR\rretryBehavior"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        errorType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"errorType")) ::
              Data.ProtoLens.FieldDescriptor HandlerError
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor HandlerError
        retryBehavior__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_behavior"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Nexus.NexusHandlerErrorRetryBehavior)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"retryBehavior")) ::
              Data.ProtoLens.FieldDescriptor HandlerError
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, errorType__field_descriptor),
           (Data.ProtoLens.Tag 2, failure__field_descriptor),
           (Data.ProtoLens.Tag 3, retryBehavior__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HandlerError'_unknownFields
        (\ x__ y__ -> x__ {_HandlerError'_unknownFields = y__})
  defMessage
    = HandlerError'_constructor
        {_HandlerError'errorType = Data.ProtoLens.fieldDefault,
         _HandlerError'failure = Prelude.Nothing,
         _HandlerError'retryBehavior = Data.ProtoLens.fieldDefault,
         _HandlerError'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HandlerError -> Data.ProtoLens.Encoding.Bytes.Parser HandlerError
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "error_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"errorType") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failure"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failure") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "retry_behavior"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"retryBehavior") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HandlerError"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"errorType") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'failure") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"retryBehavior") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                               Prelude.fromEnum _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData HandlerError where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HandlerError'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HandlerError'errorType x__)
                (Control.DeepSeq.deepseq
                   (_HandlerError'failure x__)
                   (Control.DeepSeq.deepseq (_HandlerError'retryBehavior x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.url' @:: Lens' Link Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.type'' @:: Lens' Link Data.Text.Text@ -}
data Link
  = Link'_constructor {_Link'url :: !Data.Text.Text,
                       _Link'type' :: !Data.Text.Text,
                       _Link'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Link where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Link "url" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'url (\ x__ y__ -> x__ {_Link'url = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Link "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Link'type' (\ x__ y__ -> x__ {_Link'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Message Link where
  messageName _ = Data.Text.pack "temporal.api.nexus.v1.Link"
  packedMessageDescriptor _
    = "\n\
      \\EOTLink\DC2\DLE\n\
      \\ETXurl\CAN\SOH \SOH(\tR\ETXurl\DC2\DC2\n\
      \\EOTtype\CAN\STX \SOH(\tR\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        url__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"url")) ::
              Data.ProtoLens.FieldDescriptor Link
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor Link
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, url__field_descriptor),
           (Data.ProtoLens.Tag 2, type'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Link'_unknownFields
        (\ x__ y__ -> x__ {_Link'_unknownFields = y__})
  defMessage
    = Link'_constructor
        {_Link'url = Data.ProtoLens.fieldDefault,
         _Link'type' = Data.ProtoLens.fieldDefault,
         _Link'_unknownFields = []}
  parseMessage
    = let
        loop :: Link -> Data.ProtoLens.Encoding.Bytes.Parser Link
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "url"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"url") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Link"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"url") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Link where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Link'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Link'url x__) (Control.DeepSeq.deepseq (_Link'type' x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.header' @:: Lens' Request (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.scheduledTime' @:: Lens' Request Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'scheduledTime' @:: Lens' Request (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.capabilities' @:: Lens' Request Request'Capabilities@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'capabilities' @:: Lens' Request (Prelude.Maybe Request'Capabilities)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.endpoint' @:: Lens' Request Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'variant' @:: Lens' Request (Prelude.Maybe Request'Variant)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'startOperation' @:: Lens' Request (Prelude.Maybe StartOperationRequest)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.startOperation' @:: Lens' Request StartOperationRequest@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'cancelOperation' @:: Lens' Request (Prelude.Maybe CancelOperationRequest)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.cancelOperation' @:: Lens' Request CancelOperationRequest@ -}
data Request
  = Request'_constructor {_Request'header :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                          _Request'scheduledTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                          _Request'capabilities :: !(Prelude.Maybe Request'Capabilities),
                          _Request'endpoint :: !Data.Text.Text,
                          _Request'variant :: !(Prelude.Maybe Request'Variant),
                          _Request'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Request where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Request'Variant
  = Request'StartOperation !StartOperationRequest |
    Request'CancelOperation !CancelOperationRequest
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Request "header" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'header (\ x__ y__ -> x__ {_Request'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request "scheduledTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'scheduledTime
           (\ x__ y__ -> x__ {_Request'scheduledTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Request "maybe'scheduledTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'scheduledTime
           (\ x__ y__ -> x__ {_Request'scheduledTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request "capabilities" Request'Capabilities where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'capabilities
           (\ x__ y__ -> x__ {_Request'capabilities = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Request "maybe'capabilities" (Prelude.Maybe Request'Capabilities) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'capabilities
           (\ x__ y__ -> x__ {_Request'capabilities = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request "endpoint" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'endpoint (\ x__ y__ -> x__ {_Request'endpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request "maybe'variant" (Prelude.Maybe Request'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'variant (\ x__ y__ -> x__ {_Request'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request "maybe'startOperation" (Prelude.Maybe StartOperationRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'variant (\ x__ y__ -> x__ {_Request'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'StartOperation x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'StartOperation y__))
instance Data.ProtoLens.Field.HasField Request "startOperation" StartOperationRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'variant (\ x__ y__ -> x__ {_Request'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'StartOperation x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'StartOperation y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Request "maybe'cancelOperation" (Prelude.Maybe CancelOperationRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'variant (\ x__ y__ -> x__ {_Request'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'CancelOperation x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'CancelOperation y__))
instance Data.ProtoLens.Field.HasField Request "cancelOperation" CancelOperationRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'variant (\ x__ y__ -> x__ {_Request'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'CancelOperation x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'CancelOperation y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Request where
  messageName _ = Data.Text.pack "temporal.api.nexus.v1.Request"
  packedMessageDescriptor _
    = "\n\
      \\aRequest\DC2B\n\
      \\ACKheader\CAN\SOH \ETX(\v2*.temporal.api.nexus.v1.Request.HeaderEntryR\ACKheader\DC2A\n\
      \\SOscheduled_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\rscheduledTime\DC2O\n\
      \\fcapabilities\CANd \SOH(\v2+.temporal.api.nexus.v1.Request.CapabilitiesR\fcapabilities\DC2W\n\
      \\SIstart_operation\CAN\ETX \SOH(\v2,.temporal.api.nexus.v1.StartOperationRequestH\NULR\SOstartOperation\DC2Z\n\
      \\DLEcancel_operation\CAN\EOT \SOH(\v2-.temporal.api.nexus.v1.CancelOperationRequestH\NULR\SIcancelOperation\DC2\SUB\n\
      \\bendpoint\CAN\n\
      \ \SOH(\tR\bendpoint\SUBL\n\
      \\fCapabilities\DC2<\n\
      \\SUBtemporal_failure_responses\CAN\SOH \SOH(\bR\CANtemporalFailureResponses\SUB9\n\
      \\vHeaderEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOHB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Request'HeaderEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"header")) ::
              Data.ProtoLens.FieldDescriptor Request
        scheduledTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scheduled_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduledTime")) ::
              Data.ProtoLens.FieldDescriptor Request
        capabilities__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "capabilities"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Request'Capabilities)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'capabilities")) ::
              Data.ProtoLens.FieldDescriptor Request
        endpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endpoint")) ::
              Data.ProtoLens.FieldDescriptor Request
        startOperation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_operation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StartOperationRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startOperation")) ::
              Data.ProtoLens.FieldDescriptor Request
        cancelOperation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancel_operation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CancelOperationRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancelOperation")) ::
              Data.ProtoLens.FieldDescriptor Request
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, header__field_descriptor),
           (Data.ProtoLens.Tag 2, scheduledTime__field_descriptor),
           (Data.ProtoLens.Tag 100, capabilities__field_descriptor),
           (Data.ProtoLens.Tag 10, endpoint__field_descriptor),
           (Data.ProtoLens.Tag 3, startOperation__field_descriptor),
           (Data.ProtoLens.Tag 4, cancelOperation__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Request'_unknownFields
        (\ x__ y__ -> x__ {_Request'_unknownFields = y__})
  defMessage
    = Request'_constructor
        {_Request'header = Data.Map.empty,
         _Request'scheduledTime = Prelude.Nothing,
         _Request'capabilities = Prelude.Nothing,
         _Request'endpoint = Data.ProtoLens.fieldDefault,
         _Request'variant = Prelude.Nothing, _Request'_unknownFields = []}
  parseMessage
    = let
        loop :: Request -> Data.ProtoLens.Encoding.Bytes.Parser Request
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !(entry :: Request'HeaderEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                     (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                         Data.ProtoLens.Encoding.Bytes.isolate
                                                                           (Prelude.fromIntegral
                                                                              len)
                                                                           Data.ProtoLens.parseMessage)
                                                                     "header"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"header")
                                        (\ !t -> Data.Map.insert key value t) x))
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "scheduled_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduledTime") y x)
                        802
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "capabilities"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"capabilities") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "endpoint"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endpoint") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_operation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startOperation") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cancel_operation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cancelOperation") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Request"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.Monoid.mconcat
                (Prelude.map
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                    (Data.ProtoLens.defMessage :: Request'HeaderEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"header") _x))))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'scheduledTime") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'capabilities") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 802)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endpoint") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just (Request'StartOperation v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage v)
                            (Prelude.Just (Request'CancelOperation v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Request where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Request'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Request'header x__)
                (Control.DeepSeq.deepseq
                   (_Request'scheduledTime x__)
                   (Control.DeepSeq.deepseq
                      (_Request'capabilities x__)
                      (Control.DeepSeq.deepseq
                         (_Request'endpoint x__)
                         (Control.DeepSeq.deepseq (_Request'variant x__) ())))))
instance Control.DeepSeq.NFData Request'Variant where
  rnf (Request'StartOperation x__) = Control.DeepSeq.rnf x__
  rnf (Request'CancelOperation x__) = Control.DeepSeq.rnf x__
_Request'StartOperation ::
  Data.ProtoLens.Prism.Prism' Request'Variant StartOperationRequest
_Request'StartOperation
  = Data.ProtoLens.Prism.prism'
      Request'StartOperation
      (\ p__
         -> case p__ of
              (Request'StartOperation p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Request'CancelOperation ::
  Data.ProtoLens.Prism.Prism' Request'Variant CancelOperationRequest
_Request'CancelOperation
  = Data.ProtoLens.Prism.prism'
      Request'CancelOperation
      (\ p__
         -> case p__ of
              (Request'CancelOperation p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.temporalFailureResponses' @:: Lens' Request'Capabilities Prelude.Bool@ -}
data Request'Capabilities
  = Request'Capabilities'_constructor {_Request'Capabilities'temporalFailureResponses :: !Prelude.Bool,
                                       _Request'Capabilities'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Request'Capabilities where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Request'Capabilities "temporalFailureResponses" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'Capabilities'temporalFailureResponses
           (\ x__ y__
              -> x__ {_Request'Capabilities'temporalFailureResponses = y__}))
        Prelude.id
instance Data.ProtoLens.Message Request'Capabilities where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.Request.Capabilities"
  packedMessageDescriptor _
    = "\n\
      \\fCapabilities\DC2<\n\
      \\SUBtemporal_failure_responses\CAN\SOH \SOH(\bR\CANtemporalFailureResponses"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        temporalFailureResponses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "temporal_failure_responses"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"temporalFailureResponses")) ::
              Data.ProtoLens.FieldDescriptor Request'Capabilities
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            temporalFailureResponses__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Request'Capabilities'_unknownFields
        (\ x__ y__ -> x__ {_Request'Capabilities'_unknownFields = y__})
  defMessage
    = Request'Capabilities'_constructor
        {_Request'Capabilities'temporalFailureResponses = Data.ProtoLens.fieldDefault,
         _Request'Capabilities'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Request'Capabilities
          -> Data.ProtoLens.Encoding.Bytes.Parser Request'Capabilities
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "temporal_failure_responses"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"temporalFailureResponses") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Capabilities"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"temporalFailureResponses") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Request'Capabilities where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Request'Capabilities'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Request'Capabilities'temporalFailureResponses x__) ())
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.key' @:: Lens' Request'HeaderEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.value' @:: Lens' Request'HeaderEntry Data.Text.Text@ -}
data Request'HeaderEntry
  = Request'HeaderEntry'_constructor {_Request'HeaderEntry'key :: !Data.Text.Text,
                                      _Request'HeaderEntry'value :: !Data.Text.Text,
                                      _Request'HeaderEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Request'HeaderEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Request'HeaderEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'HeaderEntry'key
           (\ x__ y__ -> x__ {_Request'HeaderEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request'HeaderEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'HeaderEntry'value
           (\ x__ y__ -> x__ {_Request'HeaderEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Request'HeaderEntry where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.Request.HeaderEntry"
  packedMessageDescriptor _
    = "\n\
      \\vHeaderEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor Request'HeaderEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor Request'HeaderEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Request'HeaderEntry'_unknownFields
        (\ x__ y__ -> x__ {_Request'HeaderEntry'_unknownFields = y__})
  defMessage
    = Request'HeaderEntry'_constructor
        {_Request'HeaderEntry'key = Data.ProtoLens.fieldDefault,
         _Request'HeaderEntry'value = Data.ProtoLens.fieldDefault,
         _Request'HeaderEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Request'HeaderEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser Request'HeaderEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HeaderEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Request'HeaderEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Request'HeaderEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Request'HeaderEntry'key x__)
                (Control.DeepSeq.deepseq (_Request'HeaderEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'variant' @:: Lens' Response (Prelude.Maybe Response'Variant)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'startOperation' @:: Lens' Response (Prelude.Maybe StartOperationResponse)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.startOperation' @:: Lens' Response StartOperationResponse@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'cancelOperation' @:: Lens' Response (Prelude.Maybe CancelOperationResponse)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.cancelOperation' @:: Lens' Response CancelOperationResponse@ -}
data Response
  = Response'_constructor {_Response'variant :: !(Prelude.Maybe Response'Variant),
                           _Response'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Response where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Response'Variant
  = Response'StartOperation !StartOperationResponse |
    Response'CancelOperation !CancelOperationResponse
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Response "maybe'variant" (Prelude.Maybe Response'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'variant (\ x__ y__ -> x__ {_Response'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Response "maybe'startOperation" (Prelude.Maybe StartOperationResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'variant (\ x__ y__ -> x__ {_Response'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'StartOperation x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'StartOperation y__))
instance Data.ProtoLens.Field.HasField Response "startOperation" StartOperationResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'variant (\ x__ y__ -> x__ {_Response'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'StartOperation x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'StartOperation y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'cancelOperation" (Prelude.Maybe CancelOperationResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'variant (\ x__ y__ -> x__ {_Response'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'CancelOperation x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'CancelOperation y__))
instance Data.ProtoLens.Field.HasField Response "cancelOperation" CancelOperationResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'variant (\ x__ y__ -> x__ {_Response'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'CancelOperation x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'CancelOperation y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Response where
  messageName _ = Data.Text.pack "temporal.api.nexus.v1.Response"
  packedMessageDescriptor _
    = "\n\
      \\bResponse\DC2X\n\
      \\SIstart_operation\CAN\SOH \SOH(\v2-.temporal.api.nexus.v1.StartOperationResponseH\NULR\SOstartOperation\DC2[\n\
      \\DLEcancel_operation\CAN\STX \SOH(\v2..temporal.api.nexus.v1.CancelOperationResponseH\NULR\SIcancelOperationB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        startOperation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_operation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StartOperationResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startOperation")) ::
              Data.ProtoLens.FieldDescriptor Response
        cancelOperation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancel_operation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CancelOperationResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancelOperation")) ::
              Data.ProtoLens.FieldDescriptor Response
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, startOperation__field_descriptor),
           (Data.ProtoLens.Tag 2, cancelOperation__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Response'_unknownFields
        (\ x__ y__ -> x__ {_Response'_unknownFields = y__})
  defMessage
    = Response'_constructor
        {_Response'variant = Prelude.Nothing,
         _Response'_unknownFields = []}
  parseMessage
    = let
        loop :: Response -> Data.ProtoLens.Encoding.Bytes.Parser Response
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_operation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startOperation") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cancel_operation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cancelOperation") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Response"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Response'StartOperation v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'CancelOperation v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Response where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Response'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Response'variant x__) ())
instance Control.DeepSeq.NFData Response'Variant where
  rnf (Response'StartOperation x__) = Control.DeepSeq.rnf x__
  rnf (Response'CancelOperation x__) = Control.DeepSeq.rnf x__
_Response'StartOperation ::
  Data.ProtoLens.Prism.Prism' Response'Variant StartOperationResponse
_Response'StartOperation
  = Data.ProtoLens.Prism.prism'
      Response'StartOperation
      (\ p__
         -> case p__ of
              (Response'StartOperation p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'CancelOperation ::
  Data.ProtoLens.Prism.Prism' Response'Variant CancelOperationResponse
_Response'CancelOperation
  = Data.ProtoLens.Prism.prism'
      Response'CancelOperation
      (\ p__
         -> case p__ of
              (Response'CancelOperation p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.service' @:: Lens' StartOperationRequest Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operation' @:: Lens' StartOperationRequest Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.requestId' @:: Lens' StartOperationRequest Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.callback' @:: Lens' StartOperationRequest Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.payload' @:: Lens' StartOperationRequest Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'payload' @:: Lens' StartOperationRequest (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.callbackHeader' @:: Lens' StartOperationRequest (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.links' @:: Lens' StartOperationRequest [Link]@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.vec'links' @:: Lens' StartOperationRequest (Data.Vector.Vector Link)@ -}
data StartOperationRequest
  = StartOperationRequest'_constructor {_StartOperationRequest'service :: !Data.Text.Text,
                                        _StartOperationRequest'operation :: !Data.Text.Text,
                                        _StartOperationRequest'requestId :: !Data.Text.Text,
                                        _StartOperationRequest'callback :: !Data.Text.Text,
                                        _StartOperationRequest'payload :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                        _StartOperationRequest'callbackHeader :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                        _StartOperationRequest'links :: !(Data.Vector.Vector Link),
                                        _StartOperationRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartOperationRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StartOperationRequest "service" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'service
           (\ x__ y__ -> x__ {_StartOperationRequest'service = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationRequest "operation" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'operation
           (\ x__ y__ -> x__ {_StartOperationRequest'operation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationRequest "requestId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'requestId
           (\ x__ y__ -> x__ {_StartOperationRequest'requestId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationRequest "callback" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'callback
           (\ x__ y__ -> x__ {_StartOperationRequest'callback = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationRequest "payload" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'payload
           (\ x__ y__ -> x__ {_StartOperationRequest'payload = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartOperationRequest "maybe'payload" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'payload
           (\ x__ y__ -> x__ {_StartOperationRequest'payload = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationRequest "callbackHeader" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'callbackHeader
           (\ x__ y__ -> x__ {_StartOperationRequest'callbackHeader = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationRequest "links" [Link] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'links
           (\ x__ y__ -> x__ {_StartOperationRequest'links = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StartOperationRequest "vec'links" (Data.Vector.Vector Link) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'links
           (\ x__ y__ -> x__ {_StartOperationRequest'links = y__}))
        Prelude.id
instance Data.ProtoLens.Message StartOperationRequest where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.StartOperationRequest"
  packedMessageDescriptor _
    = "\n\
      \\NAKStartOperationRequest\DC2\CAN\n\
      \\aservice\CAN\SOH \SOH(\tR\aservice\DC2\FS\n\
      \\toperation\CAN\STX \SOH(\tR\toperation\DC2\GS\n\
      \\n\
      \request_id\CAN\ETX \SOH(\tR\trequestId\DC2\SUB\n\
      \\bcallback\CAN\EOT \SOH(\tR\bcallback\DC29\n\
      \\apayload\CAN\ENQ \SOH(\v2\US.temporal.api.common.v1.PayloadR\apayload\DC2i\n\
      \\SIcallback_header\CAN\ACK \ETX(\v2@.temporal.api.nexus.v1.StartOperationRequest.CallbackHeaderEntryR\SOcallbackHeader\DC21\n\
      \\ENQlinks\CAN\a \ETX(\v2\ESC.temporal.api.nexus.v1.LinkR\ENQlinks\SUBA\n\
      \\DC3CallbackHeaderEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        service__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"service")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest
        operation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operation")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest
        requestId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestId")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest
        callback__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "callback"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"callback")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest
        payload__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payload"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'payload")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest
        callbackHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "callback_header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StartOperationRequest'CallbackHeaderEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"callbackHeader")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest
        links__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "links"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Link)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"links")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, service__field_descriptor),
           (Data.ProtoLens.Tag 2, operation__field_descriptor),
           (Data.ProtoLens.Tag 3, requestId__field_descriptor),
           (Data.ProtoLens.Tag 4, callback__field_descriptor),
           (Data.ProtoLens.Tag 5, payload__field_descriptor),
           (Data.ProtoLens.Tag 6, callbackHeader__field_descriptor),
           (Data.ProtoLens.Tag 7, links__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartOperationRequest'_unknownFields
        (\ x__ y__ -> x__ {_StartOperationRequest'_unknownFields = y__})
  defMessage
    = StartOperationRequest'_constructor
        {_StartOperationRequest'service = Data.ProtoLens.fieldDefault,
         _StartOperationRequest'operation = Data.ProtoLens.fieldDefault,
         _StartOperationRequest'requestId = Data.ProtoLens.fieldDefault,
         _StartOperationRequest'callback = Data.ProtoLens.fieldDefault,
         _StartOperationRequest'payload = Prelude.Nothing,
         _StartOperationRequest'callbackHeader = Data.Map.empty,
         _StartOperationRequest'links = Data.Vector.Generic.empty,
         _StartOperationRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartOperationRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Link
             -> Data.ProtoLens.Encoding.Bytes.Parser StartOperationRequest
        loop x mutable'links
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'links)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'links") frozen'links x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "service"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"service") y x)
                                  mutable'links
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operation") y x)
                                  mutable'links
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "request_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"requestId") y x)
                                  mutable'links
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "callback"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"callback") y x)
                                  mutable'links
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "payload"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"payload") y x)
                                  mutable'links
                        50
                          -> do !(entry :: StartOperationRequest'CallbackHeaderEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                           (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                               Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                 (Prelude.fromIntegral
                                                                                                    len)
                                                                                                 Data.ProtoLens.parseMessage)
                                                                                           "callback_header"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"callbackHeader")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'links)
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "links"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'links y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'links
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'links)
          "StartOperationRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"service") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operation") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"requestId") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"callback") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'payload") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         ((Data.Monoid.<>)
                            (Data.Monoid.mconcat
                               (Prelude.map
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field @"value")
                                                   (Prelude.snd _v)
                                                   (Data.ProtoLens.defMessage ::
                                                      StartOperationRequest'CallbackHeaderEntry)))))
                                  (Data.Map.toList
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"callbackHeader") _x))))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'links") _x))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData StartOperationRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartOperationRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StartOperationRequest'service x__)
                (Control.DeepSeq.deepseq
                   (_StartOperationRequest'operation x__)
                   (Control.DeepSeq.deepseq
                      (_StartOperationRequest'requestId x__)
                      (Control.DeepSeq.deepseq
                         (_StartOperationRequest'callback x__)
                         (Control.DeepSeq.deepseq
                            (_StartOperationRequest'payload x__)
                            (Control.DeepSeq.deepseq
                               (_StartOperationRequest'callbackHeader x__)
                               (Control.DeepSeq.deepseq
                                  (_StartOperationRequest'links x__) ())))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.key' @:: Lens' StartOperationRequest'CallbackHeaderEntry Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.value' @:: Lens' StartOperationRequest'CallbackHeaderEntry Data.Text.Text@ -}
data StartOperationRequest'CallbackHeaderEntry
  = StartOperationRequest'CallbackHeaderEntry'_constructor {_StartOperationRequest'CallbackHeaderEntry'key :: !Data.Text.Text,
                                                            _StartOperationRequest'CallbackHeaderEntry'value :: !Data.Text.Text,
                                                            _StartOperationRequest'CallbackHeaderEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartOperationRequest'CallbackHeaderEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StartOperationRequest'CallbackHeaderEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'CallbackHeaderEntry'key
           (\ x__ y__
              -> x__ {_StartOperationRequest'CallbackHeaderEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationRequest'CallbackHeaderEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationRequest'CallbackHeaderEntry'value
           (\ x__ y__
              -> x__ {_StartOperationRequest'CallbackHeaderEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message StartOperationRequest'CallbackHeaderEntry where
  messageName _
    = Data.Text.pack
        "temporal.api.nexus.v1.StartOperationRequest.CallbackHeaderEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC3CallbackHeaderEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest'CallbackHeaderEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor StartOperationRequest'CallbackHeaderEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartOperationRequest'CallbackHeaderEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_StartOperationRequest'CallbackHeaderEntry'_unknownFields = y__})
  defMessage
    = StartOperationRequest'CallbackHeaderEntry'_constructor
        {_StartOperationRequest'CallbackHeaderEntry'key = Data.ProtoLens.fieldDefault,
         _StartOperationRequest'CallbackHeaderEntry'value = Data.ProtoLens.fieldDefault,
         _StartOperationRequest'CallbackHeaderEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartOperationRequest'CallbackHeaderEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser StartOperationRequest'CallbackHeaderEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CallbackHeaderEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData StartOperationRequest'CallbackHeaderEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartOperationRequest'CallbackHeaderEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StartOperationRequest'CallbackHeaderEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_StartOperationRequest'CallbackHeaderEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'variant' @:: Lens' StartOperationResponse (Prelude.Maybe StartOperationResponse'Variant)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'syncSuccess' @:: Lens' StartOperationResponse (Prelude.Maybe StartOperationResponse'Sync)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.syncSuccess' @:: Lens' StartOperationResponse StartOperationResponse'Sync@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'asyncSuccess' @:: Lens' StartOperationResponse (Prelude.Maybe StartOperationResponse'Async)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.asyncSuccess' @:: Lens' StartOperationResponse StartOperationResponse'Async@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'operationError' @:: Lens' StartOperationResponse (Prelude.Maybe UnsuccessfulOperationError)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operationError' @:: Lens' StartOperationResponse UnsuccessfulOperationError@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'failure' @:: Lens' StartOperationResponse (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.failure' @:: Lens' StartOperationResponse Proto.Temporal.Api.Failure.V1.Message.Failure@ -}
data StartOperationResponse
  = StartOperationResponse'_constructor {_StartOperationResponse'variant :: !(Prelude.Maybe StartOperationResponse'Variant),
                                         _StartOperationResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartOperationResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data StartOperationResponse'Variant
  = StartOperationResponse'SyncSuccess !StartOperationResponse'Sync |
    StartOperationResponse'AsyncSuccess !StartOperationResponse'Async |
    StartOperationResponse'OperationError !UnsuccessfulOperationError |
    StartOperationResponse'Failure !Proto.Temporal.Api.Failure.V1.Message.Failure
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField StartOperationResponse "maybe'variant" (Prelude.Maybe StartOperationResponse'Variant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationResponse "maybe'syncSuccess" (Prelude.Maybe StartOperationResponse'Sync) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StartOperationResponse'SyncSuccess x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StartOperationResponse'SyncSuccess y__))
instance Data.ProtoLens.Field.HasField StartOperationResponse "syncSuccess" StartOperationResponse'Sync where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StartOperationResponse'SyncSuccess x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StartOperationResponse'SyncSuccess y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField StartOperationResponse "maybe'asyncSuccess" (Prelude.Maybe StartOperationResponse'Async) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StartOperationResponse'AsyncSuccess x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StartOperationResponse'AsyncSuccess y__))
instance Data.ProtoLens.Field.HasField StartOperationResponse "asyncSuccess" StartOperationResponse'Async where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StartOperationResponse'AsyncSuccess x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StartOperationResponse'AsyncSuccess y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField StartOperationResponse "maybe'operationError" (Prelude.Maybe UnsuccessfulOperationError) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StartOperationResponse'OperationError x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap StartOperationResponse'OperationError y__))
instance Data.ProtoLens.Field.HasField StartOperationResponse "operationError" UnsuccessfulOperationError where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StartOperationResponse'OperationError x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap StartOperationResponse'OperationError y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField StartOperationResponse "maybe'failure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StartOperationResponse'Failure x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StartOperationResponse'Failure y__))
instance Data.ProtoLens.Field.HasField StartOperationResponse "failure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'variant
           (\ x__ y__ -> x__ {_StartOperationResponse'variant = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StartOperationResponse'Failure x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StartOperationResponse'Failure y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message StartOperationResponse where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.StartOperationResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNStartOperationResponse\DC2W\n\
      \\fsync_success\CAN\SOH \SOH(\v22.temporal.api.nexus.v1.StartOperationResponse.SyncH\NULR\vsyncSuccess\DC2Z\n\
      \\rasync_success\CAN\STX \SOH(\v23.temporal.api.nexus.v1.StartOperationResponse.AsyncH\NULR\fasyncSuccess\DC2`\n\
      \\SIoperation_error\CAN\ETX \SOH(\v21.temporal.api.nexus.v1.UnsuccessfulOperationErrorH\NULR\SOoperationErrorB\STX\CAN\SOH\DC2<\n\
      \\afailure\CAN\EOT \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\afailure\SUBt\n\
      \\EOTSync\DC29\n\
      \\apayload\CAN\SOH \SOH(\v2\US.temporal.api.common.v1.PayloadR\apayload\DC21\n\
      \\ENQlinks\CAN\STX \ETX(\v2\ESC.temporal.api.nexus.v1.LinkR\ENQlinks\SUB\138\SOH\n\
      \\ENQAsync\DC2%\n\
      \\foperation_id\CAN\SOH \SOH(\tR\voperationIdB\STX\CAN\SOH\DC21\n\
      \\ENQlinks\CAN\STX \ETX(\v2\ESC.temporal.api.nexus.v1.LinkR\ENQlinks\DC2'\n\
      \\SIoperation_token\CAN\ETX \SOH(\tR\SOoperationTokenB\t\n\
      \\avariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        syncSuccess__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sync_success"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StartOperationResponse'Sync)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'syncSuccess")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse
        asyncSuccess__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "async_success"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StartOperationResponse'Async)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'asyncSuccess")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse
        operationError__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_error"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UnsuccessfulOperationError)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'operationError")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, syncSuccess__field_descriptor),
           (Data.ProtoLens.Tag 2, asyncSuccess__field_descriptor),
           (Data.ProtoLens.Tag 3, operationError__field_descriptor),
           (Data.ProtoLens.Tag 4, failure__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartOperationResponse'_unknownFields
        (\ x__ y__ -> x__ {_StartOperationResponse'_unknownFields = y__})
  defMessage
    = StartOperationResponse'_constructor
        {_StartOperationResponse'variant = Prelude.Nothing,
         _StartOperationResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartOperationResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser StartOperationResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "sync_success"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"syncSuccess") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "async_success"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"asyncSuccess") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "operation_error"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"operationError") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failure"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failure") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StartOperationResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'variant") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (StartOperationResponse'SyncSuccess v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (StartOperationResponse'AsyncSuccess v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (StartOperationResponse'OperationError v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (StartOperationResponse'Failure v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData StartOperationResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartOperationResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_StartOperationResponse'variant x__) ())
instance Control.DeepSeq.NFData StartOperationResponse'Variant where
  rnf (StartOperationResponse'SyncSuccess x__)
    = Control.DeepSeq.rnf x__
  rnf (StartOperationResponse'AsyncSuccess x__)
    = Control.DeepSeq.rnf x__
  rnf (StartOperationResponse'OperationError x__)
    = Control.DeepSeq.rnf x__
  rnf (StartOperationResponse'Failure x__) = Control.DeepSeq.rnf x__
_StartOperationResponse'SyncSuccess ::
  Data.ProtoLens.Prism.Prism' StartOperationResponse'Variant StartOperationResponse'Sync
_StartOperationResponse'SyncSuccess
  = Data.ProtoLens.Prism.prism'
      StartOperationResponse'SyncSuccess
      (\ p__
         -> case p__ of
              (StartOperationResponse'SyncSuccess p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StartOperationResponse'AsyncSuccess ::
  Data.ProtoLens.Prism.Prism' StartOperationResponse'Variant StartOperationResponse'Async
_StartOperationResponse'AsyncSuccess
  = Data.ProtoLens.Prism.prism'
      StartOperationResponse'AsyncSuccess
      (\ p__
         -> case p__ of
              (StartOperationResponse'AsyncSuccess p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StartOperationResponse'OperationError ::
  Data.ProtoLens.Prism.Prism' StartOperationResponse'Variant UnsuccessfulOperationError
_StartOperationResponse'OperationError
  = Data.ProtoLens.Prism.prism'
      StartOperationResponse'OperationError
      (\ p__
         -> case p__ of
              (StartOperationResponse'OperationError p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StartOperationResponse'Failure ::
  Data.ProtoLens.Prism.Prism' StartOperationResponse'Variant Proto.Temporal.Api.Failure.V1.Message.Failure
_StartOperationResponse'Failure
  = Data.ProtoLens.Prism.prism'
      StartOperationResponse'Failure
      (\ p__
         -> case p__ of
              (StartOperationResponse'Failure p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operationId' @:: Lens' StartOperationResponse'Async Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.links' @:: Lens' StartOperationResponse'Async [Link]@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.vec'links' @:: Lens' StartOperationResponse'Async (Data.Vector.Vector Link)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operationToken' @:: Lens' StartOperationResponse'Async Data.Text.Text@ -}
data StartOperationResponse'Async
  = StartOperationResponse'Async'_constructor {_StartOperationResponse'Async'operationId :: !Data.Text.Text,
                                               _StartOperationResponse'Async'links :: !(Data.Vector.Vector Link),
                                               _StartOperationResponse'Async'operationToken :: !Data.Text.Text,
                                               _StartOperationResponse'Async'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartOperationResponse'Async where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StartOperationResponse'Async "operationId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'Async'operationId
           (\ x__ y__
              -> x__ {_StartOperationResponse'Async'operationId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationResponse'Async "links" [Link] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'Async'links
           (\ x__ y__ -> x__ {_StartOperationResponse'Async'links = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StartOperationResponse'Async "vec'links" (Data.Vector.Vector Link) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'Async'links
           (\ x__ y__ -> x__ {_StartOperationResponse'Async'links = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationResponse'Async "operationToken" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'Async'operationToken
           (\ x__ y__
              -> x__ {_StartOperationResponse'Async'operationToken = y__}))
        Prelude.id
instance Data.ProtoLens.Message StartOperationResponse'Async where
  messageName _
    = Data.Text.pack
        "temporal.api.nexus.v1.StartOperationResponse.Async"
  packedMessageDescriptor _
    = "\n\
      \\ENQAsync\DC2%\n\
      \\foperation_id\CAN\SOH \SOH(\tR\voperationIdB\STX\CAN\SOH\DC21\n\
      \\ENQlinks\CAN\STX \ETX(\v2\ESC.temporal.api.nexus.v1.LinkR\ENQlinks\DC2'\n\
      \\SIoperation_token\CAN\ETX \SOH(\tR\SOoperationToken"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operationId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationId")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse'Async
        links__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "links"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Link)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"links")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse'Async
        operationToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationToken")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse'Async
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operationId__field_descriptor),
           (Data.ProtoLens.Tag 2, links__field_descriptor),
           (Data.ProtoLens.Tag 3, operationToken__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartOperationResponse'Async'_unknownFields
        (\ x__ y__
           -> x__ {_StartOperationResponse'Async'_unknownFields = y__})
  defMessage
    = StartOperationResponse'Async'_constructor
        {_StartOperationResponse'Async'operationId = Data.ProtoLens.fieldDefault,
         _StartOperationResponse'Async'links = Data.Vector.Generic.empty,
         _StartOperationResponse'Async'operationToken = Data.ProtoLens.fieldDefault,
         _StartOperationResponse'Async'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartOperationResponse'Async
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Link
             -> Data.ProtoLens.Encoding.Bytes.Parser StartOperationResponse'Async
        loop x mutable'links
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'links)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'links") frozen'links x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operationId") y x)
                                  mutable'links
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "links"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'links y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_token"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"operationToken") y x)
                                  mutable'links
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'links
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'links)
          "Async"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"operationId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'links") _x))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"operationToken") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData StartOperationResponse'Async where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartOperationResponse'Async'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StartOperationResponse'Async'operationId x__)
                (Control.DeepSeq.deepseq
                   (_StartOperationResponse'Async'links x__)
                   (Control.DeepSeq.deepseq
                      (_StartOperationResponse'Async'operationToken x__) ())))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.payload' @:: Lens' StartOperationResponse'Sync Proto.Temporal.Api.Common.V1.Message.Payload@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'payload' @:: Lens' StartOperationResponse'Sync (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload)@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.links' @:: Lens' StartOperationResponse'Sync [Link]@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.vec'links' @:: Lens' StartOperationResponse'Sync (Data.Vector.Vector Link)@ -}
data StartOperationResponse'Sync
  = StartOperationResponse'Sync'_constructor {_StartOperationResponse'Sync'payload :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload),
                                              _StartOperationResponse'Sync'links :: !(Data.Vector.Vector Link),
                                              _StartOperationResponse'Sync'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartOperationResponse'Sync where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StartOperationResponse'Sync "payload" Proto.Temporal.Api.Common.V1.Message.Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'Sync'payload
           (\ x__ y__ -> x__ {_StartOperationResponse'Sync'payload = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartOperationResponse'Sync "maybe'payload" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'Sync'payload
           (\ x__ y__ -> x__ {_StartOperationResponse'Sync'payload = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartOperationResponse'Sync "links" [Link] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'Sync'links
           (\ x__ y__ -> x__ {_StartOperationResponse'Sync'links = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StartOperationResponse'Sync "vec'links" (Data.Vector.Vector Link) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartOperationResponse'Sync'links
           (\ x__ y__ -> x__ {_StartOperationResponse'Sync'links = y__}))
        Prelude.id
instance Data.ProtoLens.Message StartOperationResponse'Sync where
  messageName _
    = Data.Text.pack
        "temporal.api.nexus.v1.StartOperationResponse.Sync"
  packedMessageDescriptor _
    = "\n\
      \\EOTSync\DC29\n\
      \\apayload\CAN\SOH \SOH(\v2\US.temporal.api.common.v1.PayloadR\apayload\DC21\n\
      \\ENQlinks\CAN\STX \ETX(\v2\ESC.temporal.api.nexus.v1.LinkR\ENQlinks"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        payload__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payload"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'payload")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse'Sync
        links__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "links"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Link)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"links")) ::
              Data.ProtoLens.FieldDescriptor StartOperationResponse'Sync
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, payload__field_descriptor),
           (Data.ProtoLens.Tag 2, links__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartOperationResponse'Sync'_unknownFields
        (\ x__ y__
           -> x__ {_StartOperationResponse'Sync'_unknownFields = y__})
  defMessage
    = StartOperationResponse'Sync'_constructor
        {_StartOperationResponse'Sync'payload = Prelude.Nothing,
         _StartOperationResponse'Sync'links = Data.Vector.Generic.empty,
         _StartOperationResponse'Sync'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartOperationResponse'Sync
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Link
             -> Data.ProtoLens.Encoding.Bytes.Parser StartOperationResponse'Sync
        loop x mutable'links
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'links)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'links") frozen'links x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "payload"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"payload") y x)
                                  mutable'links
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "links"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'links y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'links
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'links <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'links)
          "Sync"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'payload") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'links") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData StartOperationResponse'Sync where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartOperationResponse'Sync'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StartOperationResponse'Sync'payload x__)
                (Control.DeepSeq.deepseq
                   (_StartOperationResponse'Sync'links x__) ()))
{- | Fields :
     
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.operationState' @:: Lens' UnsuccessfulOperationError Data.Text.Text@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.failure' @:: Lens' UnsuccessfulOperationError Failure@
         * 'Proto.Temporal.Api.Nexus.V1.Message_Fields.maybe'failure' @:: Lens' UnsuccessfulOperationError (Prelude.Maybe Failure)@ -}
data UnsuccessfulOperationError
  = UnsuccessfulOperationError'_constructor {_UnsuccessfulOperationError'operationState :: !Data.Text.Text,
                                             _UnsuccessfulOperationError'failure :: !(Prelude.Maybe Failure),
                                             _UnsuccessfulOperationError'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UnsuccessfulOperationError where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UnsuccessfulOperationError "operationState" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnsuccessfulOperationError'operationState
           (\ x__ y__
              -> x__ {_UnsuccessfulOperationError'operationState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UnsuccessfulOperationError "failure" Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnsuccessfulOperationError'failure
           (\ x__ y__ -> x__ {_UnsuccessfulOperationError'failure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UnsuccessfulOperationError "maybe'failure" (Prelude.Maybe Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnsuccessfulOperationError'failure
           (\ x__ y__ -> x__ {_UnsuccessfulOperationError'failure = y__}))
        Prelude.id
instance Data.ProtoLens.Message UnsuccessfulOperationError where
  messageName _
    = Data.Text.pack "temporal.api.nexus.v1.UnsuccessfulOperationError"
  packedMessageDescriptor _
    = "\n\
      \\SUBUnsuccessfulOperationError\DC2'\n\
      \\SIoperation_state\CAN\SOH \SOH(\tR\SOoperationState\DC28\n\
      \\afailure\CAN\STX \SOH(\v2\RS.temporal.api.nexus.v1.FailureR\afailure"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operationState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationState")) ::
              Data.ProtoLens.FieldDescriptor UnsuccessfulOperationError
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor UnsuccessfulOperationError
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operationState__field_descriptor),
           (Data.ProtoLens.Tag 2, failure__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UnsuccessfulOperationError'_unknownFields
        (\ x__ y__
           -> x__ {_UnsuccessfulOperationError'_unknownFields = y__})
  defMessage
    = UnsuccessfulOperationError'_constructor
        {_UnsuccessfulOperationError'operationState = Data.ProtoLens.fieldDefault,
         _UnsuccessfulOperationError'failure = Prelude.Nothing,
         _UnsuccessfulOperationError'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UnsuccessfulOperationError
          -> Data.ProtoLens.Encoding.Bytes.Parser UnsuccessfulOperationError
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_state"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"operationState") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failure"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"failure") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UnsuccessfulOperationError"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"operationState") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'failure") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData UnsuccessfulOperationError where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UnsuccessfulOperationError'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UnsuccessfulOperationError'operationState x__)
                (Control.DeepSeq.deepseq
                   (_UnsuccessfulOperationError'failure x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \#temporal/api/nexus/v1/message.proto\DC2\NAKtemporal.api.nexus.v1\SUB\USgoogle/protobuf/timestamp.proto\SUB$temporal/api/common/v1/message.proto\SUB!temporal/api/enums/v1/nexus.proto\SUB%temporal/api/failure/v1/message.proto\"\155\STX\n\
    \\aFailure\DC2\CAN\n\
    \\amessage\CAN\SOH \SOH(\tR\amessage\DC2\US\n\
    \\vstack_trace\CAN\EOT \SOH(\tR\n\
    \stackTrace\DC2H\n\
    \\bmetadata\CAN\STX \ETX(\v2,.temporal.api.nexus.v1.Failure.MetadataEntryR\bmetadata\DC2\CAN\n\
    \\adetails\CAN\ETX \SOH(\fR\adetails\DC24\n\
    \\ENQcause\CAN\ENQ \SOH(\v2\RS.temporal.api.nexus.v1.FailureR\ENQcause\SUB;\n\
    \\rMetadataEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH\"\197\SOH\n\
    \\fHandlerError\DC2\GS\n\
    \\n\
    \error_type\CAN\SOH \SOH(\tR\terrorType\DC28\n\
    \\afailure\CAN\STX \SOH(\v2\RS.temporal.api.nexus.v1.FailureR\afailure\DC2\\\n\
    \\SOretry_behavior\CAN\ETX \SOH(\SO25.temporal.api.enums.v1.NexusHandlerErrorRetryBehaviorR\rretryBehavior\"\DEL\n\
    \\SUBUnsuccessfulOperationError\DC2'\n\
    \\SIoperation_state\CAN\SOH \SOH(\tR\SOoperationState\DC28\n\
    \\afailure\CAN\STX \SOH(\v2\RS.temporal.api.nexus.v1.FailureR\afailure\",\n\
    \\EOTLink\DC2\DLE\n\
    \\ETXurl\CAN\SOH \SOH(\tR\ETXurl\DC2\DC2\n\
    \\EOTtype\CAN\STX \SOH(\tR\EOTtype\"\166\ETX\n\
    \\NAKStartOperationRequest\DC2\CAN\n\
    \\aservice\CAN\SOH \SOH(\tR\aservice\DC2\FS\n\
    \\toperation\CAN\STX \SOH(\tR\toperation\DC2\GS\n\
    \\n\
    \request_id\CAN\ETX \SOH(\tR\trequestId\DC2\SUB\n\
    \\bcallback\CAN\EOT \SOH(\tR\bcallback\DC29\n\
    \\apayload\CAN\ENQ \SOH(\v2\US.temporal.api.common.v1.PayloadR\apayload\DC2i\n\
    \\SIcallback_header\CAN\ACK \ETX(\v2@.temporal.api.nexus.v1.StartOperationRequest.CallbackHeaderEntryR\SOcallbackHeader\DC21\n\
    \\ENQlinks\CAN\a \ETX(\v2\ESC.temporal.api.nexus.v1.LinkR\ENQlinks\SUBA\n\
    \\DC3CallbackHeaderEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH\"\160\SOH\n\
    \\SYNCancelOperationRequest\DC2\CAN\n\
    \\aservice\CAN\SOH \SOH(\tR\aservice\DC2\FS\n\
    \\toperation\CAN\STX \SOH(\tR\toperation\DC2%\n\
    \\foperation_id\CAN\ETX \SOH(\tR\voperationIdB\STX\CAN\SOH\DC2'\n\
    \\SIoperation_token\CAN\EOT \SOH(\tR\SOoperationToken\"\198\EOT\n\
    \\aRequest\DC2B\n\
    \\ACKheader\CAN\SOH \ETX(\v2*.temporal.api.nexus.v1.Request.HeaderEntryR\ACKheader\DC2A\n\
    \\SOscheduled_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\rscheduledTime\DC2O\n\
    \\fcapabilities\CANd \SOH(\v2+.temporal.api.nexus.v1.Request.CapabilitiesR\fcapabilities\DC2W\n\
    \\SIstart_operation\CAN\ETX \SOH(\v2,.temporal.api.nexus.v1.StartOperationRequestH\NULR\SOstartOperation\DC2Z\n\
    \\DLEcancel_operation\CAN\EOT \SOH(\v2-.temporal.api.nexus.v1.CancelOperationRequestH\NULR\SIcancelOperation\DC2\SUB\n\
    \\bendpoint\CAN\n\
    \ \SOH(\tR\bendpoint\SUBL\n\
    \\fCapabilities\DC2<\n\
    \\SUBtemporal_failure_responses\CAN\SOH \SOH(\bR\CANtemporalFailureResponses\SUB9\n\
    \\vHeaderEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOHB\t\n\
    \\avariant\"\251\EOT\n\
    \\SYNStartOperationResponse\DC2W\n\
    \\fsync_success\CAN\SOH \SOH(\v22.temporal.api.nexus.v1.StartOperationResponse.SyncH\NULR\vsyncSuccess\DC2Z\n\
    \\rasync_success\CAN\STX \SOH(\v23.temporal.api.nexus.v1.StartOperationResponse.AsyncH\NULR\fasyncSuccess\DC2`\n\
    \\SIoperation_error\CAN\ETX \SOH(\v21.temporal.api.nexus.v1.UnsuccessfulOperationErrorH\NULR\SOoperationErrorB\STX\CAN\SOH\DC2<\n\
    \\afailure\CAN\EOT \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\afailure\SUBt\n\
    \\EOTSync\DC29\n\
    \\apayload\CAN\SOH \SOH(\v2\US.temporal.api.common.v1.PayloadR\apayload\DC21\n\
    \\ENQlinks\CAN\STX \ETX(\v2\ESC.temporal.api.nexus.v1.LinkR\ENQlinks\SUB\138\SOH\n\
    \\ENQAsync\DC2%\n\
    \\foperation_id\CAN\SOH \SOH(\tR\voperationIdB\STX\CAN\SOH\DC21\n\
    \\ENQlinks\CAN\STX \ETX(\v2\ESC.temporal.api.nexus.v1.LinkR\ENQlinks\DC2'\n\
    \\SIoperation_token\CAN\ETX \SOH(\tR\SOoperationTokenB\t\n\
    \\avariant\"\EM\n\
    \\ETBCancelOperationResponse\"\204\SOH\n\
    \\bResponse\DC2X\n\
    \\SIstart_operation\CAN\SOH \SOH(\v2-.temporal.api.nexus.v1.StartOperationResponseH\NULR\SOstartOperation\DC2[\n\
    \\DLEcancel_operation\CAN\STX \SOH(\v2..temporal.api.nexus.v1.CancelOperationResponseH\NULR\SIcancelOperationB\t\n\
    \\avariant\"\149\STX\n\
    \\bEndpoint\DC2\CAN\n\
    \\aversion\CAN\SOH \SOH(\ETXR\aversion\DC2\SO\n\
    \\STXid\CAN\STX \SOH(\tR\STXid\DC27\n\
    \\EOTspec\CAN\ETX \SOH(\v2#.temporal.api.nexus.v1.EndpointSpecR\EOTspec\DC2=\n\
    \\fcreated_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\vcreatedTime\DC2H\n\
    \\DC2last_modified_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\DLElastModifiedTime\DC2\GS\n\
    \\n\
    \url_prefix\CAN\ACK \SOH(\tR\turlPrefix\"\164\SOH\n\
    \\fEndpointSpec\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2A\n\
    \\vdescription\CAN\STX \SOH(\v2\US.temporal.api.common.v1.PayloadR\vdescription\DC2=\n\
    \\ACKtarget\CAN\ETX \SOH(\v2%.temporal.api.nexus.v1.EndpointTargetR\ACKtarget\"\150\STX\n\
    \\SOEndpointTarget\DC2F\n\
    \\ACKworker\CAN\SOH \SOH(\v2,.temporal.api.nexus.v1.EndpointTarget.WorkerH\NULR\ACKworker\DC2L\n\
    \\bexternal\CAN\STX \SOH(\v2..temporal.api.nexus.v1.EndpointTarget.ExternalH\NULR\bexternal\SUBE\n\
    \\ACKWorker\DC2\FS\n\
    \\tnamespace\CAN\SOH \SOH(\tR\tnamespace\DC2\GS\n\
    \\n\
    \task_queue\CAN\STX \SOH(\tR\ttaskQueue\SUB\FS\n\
    \\bExternal\DC2\DLE\n\
    \\ETXurl\CAN\SOH \SOH(\tR\ETXurlB\t\n\
    \\avariantB\132\SOH\n\
    \\CANio.temporal.api.nexus.v1B\fMessageProtoP\SOHZ!go.temporal.io/api/nexus/v1;nexus\170\STX\ETBTemporalio.Api.Nexus.V1\234\STX\SUBTemporalio::Api::Nexus::V1J\182B\n\
    \\a\DC2\ENQ\NUL\NUL\214\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL8\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\EOT\NUL8\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL1\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ENQ\NUL1\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\ACK\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL3\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NUL3\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL4\n\
    \\t\n\
    \\STX\b%\DC2\ETX\t\NUL4\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\v\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\f\NUL.\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\r\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\SO\NUL/\n\
    \q\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL\EM\SOH\SUBe A general purpose failure message.\n\
    \ See: https://github.com/nexus-rpc/api/blob/main/SPEC.md#failure\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\SI\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC3\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC3\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC3\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC3\NAK\SYN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC4\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DC4\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC4\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC4\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\NAK\EOT%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\NAK\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\NAK\CAN \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\NAK#$\n\
    \7\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\ETB\EOT\SYN\SUB* UTF-8 encoded JSON serializable details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\ETB\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\ETB\n\
    \\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\ETB\DC4\NAK\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\CAN\EOT\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\CAN\EOT\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\CAN\f\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\CAN\DC4\NAK\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\ESC\NUL!\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\ESC\b\DC4\n\
    \`\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\GS\EOT\SUB\SUBS See https://github.com/nexus-rpc/api/blob/main/SPEC.md#predefined-handler-errors.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\GS\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\GS\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\GS\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\RS\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\RS\EOT\v\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\RS\f\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\RS\SYN\ETB\n\
    \g\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX \EOTL\SUBZ Retry behavior, defaults to the retry behavior of the error type as defined in the spec.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX \EOT8\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX 9G\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX JK\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT#\NUL'\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX#\b\"\n\
    \T\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX%\EOT\US\SUBG See https://github.com/nexus-rpc/api/blob/main/SPEC.md#operationinfo.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX%\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX%\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX%\GS\RS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX&\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX&\EOT\v\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX&\f\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX&\SYN\ETB\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT)\NUL-\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX)\b\f\n\
    \L\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX+\EOT\DC3\SUB? See https://github.com/nexus-rpc/api/blob/main/SPEC.md#links.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX+\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX+\v\SO\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX+\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX,\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX,\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX,\v\SI\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX,\DC2\DC3\n\
    \.\n\
    \\STX\EOT\EOT\DC2\EOT0\NUL?\SOH\SUB\" A request to start an operation.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX0\b\GS\n\
    \9\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX2\EOT\ETB\SUB, Name of service to start the operation in.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX2\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX2\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX2\NAK\SYN\n\
    \*\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX4\EOT\EM\SUB\GS Type of operation to start.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX4\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX4\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX4\ETB\CAN\n\
    \F\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX6\EOT\SUB\SUB9 A request ID that can be used as an idempotentency key.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX6\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX6\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX6\CAN\EM\n\
    \V\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX8\EOT\CAN\SUBI Callback URL to call upon completion if the started operation is async.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETX8\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX8\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX8\SYN\ETB\n\
    \@\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETX:\EOT/\SUB3 Full request body from the incoming HTTP request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ACK\DC2\ETX:\EOT\"\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETX:#*\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETX:-.\n\
    \k\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\ETX<\EOT,\SUB^ Header that is expected to be attached to the callback request when the operation completes.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ACK\DC2\ETX<\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\ETX<\CAN'\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\ETX<*+\n\
    \m\n\
    \\EOT\EOT\EOT\STX\ACK\DC2\ETX>\EOT\FS\SUB` Links contain caller information and can be attached to the operations started by the handler.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\EOT\DC2\ETX>\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ACK\DC2\ETX>\r\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\SOH\DC2\ETX>\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ETX\DC2\ETX>\SUB\ESC\n\
    \/\n\
    \\STX\EOT\ENQ\DC2\EOTB\NULN\SOH\SUB# A request to cancel an operation.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXB\b\RS\n\
    \\FS\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXD\EOT\ETB\SUB\SI Service name.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETXD\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXD\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXD\NAK\SYN\n\
    \+\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETXF\EOT\EM\SUB\RS Type of operation to cancel.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETXF\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETXF\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETXF\ETB\CAN\n\
    \k\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETXJ\EOT0\SUB^ Operation ID as originally generated by a Handler.\n\
    \\n\
    \ Deprecated. Renamed to operation_token.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETXJ\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETXJ\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETXJ\SUB\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\b\DC2\ETXJ\FS/\n\
    \\r\n\
    \\ACK\EOT\ENQ\STX\STX\b\ETX\DC2\ETXJ\GS.\n\
    \D\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETXM\EOT\US\SUB7 Operation token as originally generated by a Handler.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\ETXM\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETXM\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETXM\GS\RS\n\
    \\RS\n\
    \\STX\EOT\ACK\DC2\EOTQ\NULk\SOH\SUB\DC2 A Nexus request.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXQ\b\SI\n\
    \\f\n\
    \\EOT\EOT\ACK\ETX\NUL\DC2\EOTR\EOTV\ENQ\n\
    \\f\n\
    \\ENQ\EOT\ACK\ETX\NUL\SOH\DC2\ETXR\f\CAN\n\
    \\210\SOH\n\
    \\ACK\EOT\ACK\ETX\NUL\STX\NUL\DC2\ETXU\b,\SUB\194\SOH If set, handlers may use temporal.api.failure.v1.Failure instances to return failures to the server.\n\
    \ This also allows handler and operation errors to have their own messages and stack traces.\n\
    \\n\
    \\SO\n\
    \\a\EOT\ACK\ETX\NUL\STX\NUL\ENQ\DC2\ETXU\b\f\n\
    \\SO\n\
    \\a\EOT\ACK\ETX\NUL\STX\NUL\SOH\DC2\ETXU\r'\n\
    \\SO\n\
    \\a\EOT\ACK\ETX\NUL\STX\NUL\ETX\DC2\ETXU*+\n\
    \\181\SOH\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXZ\EOT#\SUB\167\SOH Headers extracted from the original request in the Temporal frontend.\n\
    \ When using Nexus over HTTP, this includes the request's HTTP headers ignoring multiple values.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\ETXZ\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXZ\CAN\RS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXZ!\"\n\
    \\192\SOH\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX_\EOT1\SUB\178\SOH The timestamp when the request was scheduled in the frontend.\n\
    \ (-- api-linter: core::0142::time-field-names=disabled\n\
    \     aip.dev/not-precedent: Not following linter rules. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\ETX_\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX_\RS,\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX_/0\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETXa\EOT$\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ACK\DC2\ETXa\EOT\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXa\DC1\GS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXa #\n\
    \\f\n\
    \\EOT\EOT\ACK\b\NUL\DC2\EOTc\EOTf\ENQ\n\
    \\f\n\
    \\ENQ\EOT\ACK\b\NUL\SOH\DC2\ETXc\n\
    \\DC1\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ETXd\b2\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ACK\DC2\ETXd\b\GS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETXd\RS-\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETXd01\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\EOT\DC2\ETXe\b4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ACK\DC2\ETXe\b\RS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\SOH\DC2\ETXe\US/\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ETX\DC2\ETXe23\n\
    \\129\SOH\n\
    \\EOT\EOT\ACK\STX\ENQ\DC2\ETXj\EOT\EM\SUBt The endpoint this request was addressed to before forwarding to the worker.\n\
    \ Supported from server version 1.30.0.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\ENQ\DC2\ETXj\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\SOH\DC2\ETXj\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\ETX\DC2\ETXj\SYN\CAN\n\
    \:\n\
    \\STX\EOT\a\DC2\ENQn\NUL\136\SOH\SOH\SUB- Response variant for StartOperationRequest.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXn\b\RS\n\
    \4\n\
    \\EOT\EOT\a\ETX\NUL\DC2\EOTp\EOTs\ENQ\SUB& An operation completed successfully.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\ETX\NUL\SOH\DC2\ETXp\f\DLE\n\
    \\r\n\
    \\ACK\EOT\a\ETX\NUL\STX\NUL\DC2\ETXq\b3\n\
    \\SO\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\ACK\DC2\ETXq\b&\n\
    \\SO\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\SOH\DC2\ETXq'.\n\
    \\SO\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\ETX\DC2\ETXq12\n\
    \\r\n\
    \\ACK\EOT\a\ETX\NUL\STX\SOH\DC2\ETXr\b \n\
    \\SO\n\
    \\a\EOT\a\ETX\NUL\STX\SOH\EOT\DC2\ETXr\b\DLE\n\
    \\SO\n\
    \\a\EOT\a\ETX\NUL\STX\SOH\ACK\DC2\ETXr\DC1\NAK\n\
    \\SO\n\
    \\a\EOT\a\ETX\NUL\STX\SOH\SOH\DC2\ETXr\SYN\ESC\n\
    \\SO\n\
    \\a\EOT\a\ETX\NUL\STX\SOH\ETX\DC2\ETXr\RS\US\n\
    \u\n\
    \\EOT\EOT\a\ETX\SOH\DC2\EOTw\EOT|\ENQ\SUBg The operation will complete asynchronously.\n\
    \ The returned ID can be used to reference this operation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\ETX\SOH\SOH\DC2\ETXw\f\DC1\n\
    \8\n\
    \\ACK\EOT\a\ETX\SOH\STX\NUL\DC2\ETXy\b4\SUB) Deprecated. Renamed to operation_token.\n\
    \\n\
    \\SO\n\
    \\a\EOT\a\ETX\SOH\STX\NUL\ENQ\DC2\ETXy\b\SO\n\
    \\SO\n\
    \\a\EOT\a\ETX\SOH\STX\NUL\SOH\DC2\ETXy\SI\ESC\n\
    \\SO\n\
    \\a\EOT\a\ETX\SOH\STX\NUL\ETX\DC2\ETXy\RS\US\n\
    \\SO\n\
    \\a\EOT\a\ETX\SOH\STX\NUL\b\DC2\ETXy 3\n\
    \\SI\n\
    \\b\EOT\a\ETX\SOH\STX\NUL\b\ETX\DC2\ETXy!2\n\
    \\r\n\
    \\ACK\EOT\a\ETX\SOH\STX\SOH\DC2\ETXz\b \n\
    \\SO\n\
    \\a\EOT\a\ETX\SOH\STX\SOH\EOT\DC2\ETXz\b\DLE\n\
    \\SO\n\
    \\a\EOT\a\ETX\SOH\STX\SOH\ACK\DC2\ETXz\DC1\NAK\n\
    \\SO\n\
    \\a\EOT\a\ETX\SOH\STX\SOH\SOH\DC2\ETXz\SYN\ESC\n\
    \\SO\n\
    \\a\EOT\a\ETX\SOH\STX\SOH\ETX\DC2\ETXz\RS\US\n\
    \\r\n\
    \\ACK\EOT\a\ETX\SOH\STX\STX\DC2\ETX{\b#\n\
    \\SO\n\
    \\a\EOT\a\ETX\SOH\STX\STX\ENQ\DC2\ETX{\b\SO\n\
    \\SO\n\
    \\a\EOT\a\ETX\SOH\STX\STX\SOH\DC2\ETX{\SI\RS\n\
    \\SO\n\
    \\a\EOT\a\ETX\SOH\STX\STX\ETX\DC2\ETX{!\"\n\
    \\r\n\
    \\EOT\EOT\a\b\NUL\DC2\ENQ~\EOT\135\SOH\ENQ\n\
    \\f\n\
    \\ENQ\EOT\a\b\NUL\SOH\DC2\ETX~\n\
    \\DC1\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX\DEL\b\RS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\ETX\DEL\b\f\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX\DEL\r\EM\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX\DEL\FS\GS\n\
    \\f\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\128\SOH\b \n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\EOT\128\SOH\b\r\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\128\SOH\SO\ESC\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\128\SOH\RS\US\n\
    \z\n\
    \\EOT\EOT\a\STX\STX\DC2\EOT\131\SOH\bK\SUBl The operation completed unsuccessfully (failed or canceled).\n\
    \ Deprecated. Use the failure variant instead.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ACK\DC2\EOT\131\SOH\b\"\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\EOT\131\SOH#2\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\EOT\131\SOH56\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\b\DC2\EOT\131\SOH7J\n\
    \\SO\n\
    \\ACK\EOT\a\STX\STX\b\ETX\DC2\EOT\131\SOH8I\n\
    \\163\SOH\n\
    \\EOT\EOT\a\STX\ETX\DC2\EOT\134\SOH\b4\SUB\148\SOH The operation completed unsuccessfully (failed or canceled).\n\
    \ Failure object must contain an ApplicationFailureInfo or CanceledFailureInfo object.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ACK\DC2\EOT\134\SOH\b'\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\EOT\134\SOH(/\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\EOT\134\SOH23\n\
    \<\n\
    \\STX\EOT\b\DC2\ACK\139\SOH\NUL\140\SOH\SOH\SUB. Response variant for CancelOperationRequest.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\139\SOH\b\US\n\
    \\\\n\
    \\STX\EOT\t\DC2\ACK\143\SOH\NUL\149\SOH\SOH\SUBN A response indicating that the handler has successfully processed a request.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\143\SOH\b\DLE\n\
    \P\n\
    \\EOT\EOT\t\b\NUL\DC2\ACK\145\SOH\EOT\148\SOH\ENQ\SUB@ Variant must correlate to the corresponding Request's variant.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\b\NUL\SOH\DC2\EOT\145\SOH\n\
    \\DC1\n\
    \\f\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\146\SOH\b3\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\146\SOH\b\RS\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\146\SOH\US.\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\146\SOH12\n\
    \\f\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\147\SOH\b5\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\EOT\147\SOH\b\US\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\147\SOH 0\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\147\SOH34\n\
    \q\n\
    \\STX\EOT\n\
    \\DC2\ACK\152\SOH\NUL\175\SOH\SOH\SUBc A cluster-global binding from an endpoint ID to a target for dispatching incoming Nexus requests.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\152\SOH\b\DLE\n\
    \t\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\154\SOH\EOT\SYN\SUBf Data version for this endpoint, incremented for every update issued via the UpdateNexusEndpoint API.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\154\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\154\SOH\n\
    \\DC1\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\154\SOH\DC4\NAK\n\
    \4\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\156\SOH\EOT\DC2\SUB& Unique server-generated endpoint ID.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\EOT\156\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\156\SOH\v\r\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\156\SOH\DLE\DC1\n\
    \&\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\EOT\158\SOH\EOT\SUB\SUB\CAN Spec for the endpoint.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ACK\DC2\EOT\158\SOH\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\EOT\158\SOH\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\EOT\158\SOH\CAN\EM\n\
    \\180\SOH\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\EOT\163\SOH\EOT/\SUB\165\SOH The date and time when the endpoint was created.\n\
    \ (-- api-linter: core::0142::time-field-names=disabled\n\
    \     aip.dev/not-precedent: Not following linter rules. --)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ACK\DC2\EOT\163\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\EOT\163\SOH\RS*\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\EOT\163\SOH-.\n\
    \\244\SOH\n\
    \\EOT\EOT\n\
    \\STX\EOT\DC2\EOT\169\SOH\EOT5\SUB\229\SOH The date and time when the endpoint was last modified.\n\
    \ Will not be set if the endpoint has never been modified.\n\
    \ (-- api-linter: core::0142::time-field-names=disabled\n\
    \     aip.dev/not-precedent: Not following linter rules. --)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ACK\DC2\EOT\169\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\SOH\DC2\EOT\169\SOH\RS0\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ETX\DC2\EOT\169\SOH34\n\
    \\130\STX\n\
    \\EOT\EOT\n\
    \\STX\ENQ\DC2\EOT\174\SOH\EOT\SUB\SUB\243\SOH Server exposed URL prefix for invocation of operations on this endpoint.\n\
    \ This doesn't include the protocol, hostname or port as the server does not know how it should be accessed\n\
    \ publicly. The URL is stable in the face of endpoint renames.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ENQ\DC2\EOT\174\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\SOH\DC2\EOT\174\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ETX\DC2\EOT\174\SOH\CAN\EM\n\
    \8\n\
    \\STX\EOT\v\DC2\ACK\178\SOH\NUL\190\SOH\SOH\SUB* Contains mutable fields for an Endpoint.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\178\SOH\b\DC4\n\
    \\201\SOH\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\181\SOH\EOT\DC4\SUB\186\SOH Endpoint name, unique for this cluster. Must match `[a-zA-Z_][a-zA-Z0-9_]*`.\n\
    \ Renaming an endpoint breaks all workflow callers that reference this endpoint, causing operations to fail.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\EOT\181\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\181\SOH\v\SI\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\181\SOH\DC2\DC3\n\
    \\255\SOH\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\186\SOH\EOT3\SUB\240\SOH Markdown description serialized as a single JSON string.\n\
    \ If the Payload is encrypted, the UI and CLI may decrypt with the configured codec server endpoint.\n\
    \ By default, the server enforces a limit of 20,000 bytes for this entire payload.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ACK\DC2\EOT\186\SOH\EOT\"\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\186\SOH#.\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\186\SOH12\n\
    \,\n\
    \\EOT\EOT\v\STX\STX\DC2\EOT\189\SOH\EOT\RS\SUB\RS Target to route requests to.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ACK\DC2\EOT\189\SOH\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\EOT\189\SOH\DC3\EM\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\EOT\189\SOH\FS\GS\n\
    \,\n\
    \\STX\EOT\f\DC2\ACK\193\SOH\NUL\214\SOH\SOH\SUB\RS Target to route requests to.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\193\SOH\b\SYN\n\
    \X\n\
    \\EOT\EOT\f\ETX\NUL\DC2\ACK\195\SOH\EOT\200\SOH\ENQ\SUBH Target a worker polling on a Nexus task queue in a specific namespace.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\ETX\NUL\SOH\DC2\EOT\195\SOH\f\DC2\n\
    \1\n\
    \\ACK\EOT\f\ETX\NUL\STX\NUL\DC2\EOT\197\SOH\b\GS\SUB! Namespace to route requests to.\n\
    \\n\
    \\SI\n\
    \\a\EOT\f\ETX\NUL\STX\NUL\ENQ\DC2\EOT\197\SOH\b\SO\n\
    \\SI\n\
    \\a\EOT\f\ETX\NUL\STX\NUL\SOH\DC2\EOT\197\SOH\SI\CAN\n\
    \\SI\n\
    \\a\EOT\f\ETX\NUL\STX\NUL\ETX\DC2\EOT\197\SOH\ESC\FS\n\
    \8\n\
    \\ACK\EOT\f\ETX\NUL\STX\SOH\DC2\EOT\199\SOH\b\RS\SUB( Nexus task queue to route requests to.\n\
    \\n\
    \\SI\n\
    \\a\EOT\f\ETX\NUL\STX\SOH\ENQ\DC2\EOT\199\SOH\b\SO\n\
    \\SI\n\
    \\a\EOT\f\ETX\NUL\STX\SOH\SOH\DC2\EOT\199\SOH\SI\EM\n\
    \\SI\n\
    \\a\EOT\f\ETX\NUL\STX\SOH\ETX\DC2\EOT\199\SOH\FS\GS\n\
    \\206\SOH\n\
    \\EOT\EOT\f\ETX\SOH\DC2\ACK\205\SOH\EOT\208\SOH\ENQ\SUB\189\SOH Target an external server by URL.\n\
    \ At a later point, this will support providing credentials, in the meantime, an http.RoundTripper can be injected\n\
    \ into the server to modify the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\ETX\SOH\SOH\DC2\EOT\205\SOH\f\DC4\n\
    \\RS\n\
    \\ACK\EOT\f\ETX\SOH\STX\NUL\DC2\EOT\207\SOH\b\ETB\SUB\SO URL to call.\n\
    \\n\
    \\SI\n\
    \\a\EOT\f\ETX\SOH\STX\NUL\ENQ\DC2\EOT\207\SOH\b\SO\n\
    \\SI\n\
    \\a\EOT\f\ETX\SOH\STX\NUL\SOH\DC2\EOT\207\SOH\SI\DC2\n\
    \\SI\n\
    \\a\EOT\f\ETX\SOH\STX\NUL\ETX\DC2\EOT\207\SOH\NAK\SYN\n\
    \\SO\n\
    \\EOT\EOT\f\b\NUL\DC2\ACK\210\SOH\EOT\213\SOH\ENQ\n\
    \\r\n\
    \\ENQ\EOT\f\b\NUL\SOH\DC2\EOT\210\SOH\n\
    \\DC1\n\
    \\f\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\211\SOH\b\SUB\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ACK\DC2\EOT\211\SOH\b\SO\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\211\SOH\SI\NAK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\211\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\212\SOH\b\RS\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ACK\DC2\EOT\212\SOH\b\DLE\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\212\SOH\DC1\EM\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\212\SOH\FS\GSb\ACKproto3"