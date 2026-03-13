{- This file was auto-generated from temporal/api/activity/v1/message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Temporal.Api.Activity.V1.Message (
        ActivityExecutionInfo(), ActivityExecutionListInfo(),
        ActivityExecutionOutcome(), ActivityExecutionOutcome'Value(..),
        _ActivityExecutionOutcome'Result,
        _ActivityExecutionOutcome'Failure, ActivityOptions()
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Temporal.Api.Common.V1.Message
import qualified Proto.Temporal.Api.Deployment.V1.Message
import qualified Proto.Temporal.Api.Enums.V1.Activity
import qualified Proto.Temporal.Api.Enums.V1.Workflow
import qualified Proto.Temporal.Api.Failure.V1.Message
import qualified Proto.Temporal.Api.Sdk.V1.UserMetadata
import qualified Proto.Temporal.Api.Taskqueue.V1.Message
{- | Fields :
     
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.activityId' @:: Lens' ActivityExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.runId' @:: Lens' ActivityExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.activityType' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Common.V1.Message.ActivityType@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'activityType' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.status' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Enums.V1.Activity.ActivityExecutionStatus@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.runState' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Enums.V1.Workflow.PendingActivityState@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.taskQueue' @:: Lens' ActivityExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.scheduleToCloseTimeout' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'scheduleToCloseTimeout' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.scheduleToStartTimeout' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'scheduleToStartTimeout' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.startToCloseTimeout' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'startToCloseTimeout' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.heartbeatTimeout' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'heartbeatTimeout' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.retryPolicy' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Common.V1.Message.RetryPolicy@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'retryPolicy' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.heartbeatDetails' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'heartbeatDetails' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.lastHeartbeatTime' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'lastHeartbeatTime' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.lastStartedTime' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'lastStartedTime' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.attempt' @:: Lens' ActivityExecutionInfo Data.Int.Int32@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.executionDuration' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'executionDuration' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.scheduleTime' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'scheduleTime' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.expirationTime' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'expirationTime' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.closeTime' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'closeTime' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.lastFailure' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Failure.V1.Message.Failure@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'lastFailure' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.lastWorkerIdentity' @:: Lens' ActivityExecutionInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.currentRetryInterval' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'currentRetryInterval' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.lastAttemptCompleteTime' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'lastAttemptCompleteTime' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.nextAttemptScheduleTime' @:: Lens' ActivityExecutionInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'nextAttemptScheduleTime' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.lastDeploymentVersion' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'lastDeploymentVersion' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.priority' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Common.V1.Message.Priority@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'priority' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.stateTransitionCount' @:: Lens' ActivityExecutionInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.stateSizeBytes' @:: Lens' ActivityExecutionInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.searchAttributes' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Common.V1.Message.SearchAttributes@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'searchAttributes' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.header' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Common.V1.Message.Header@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'header' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.userMetadata' @:: Lens' ActivityExecutionInfo Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'userMetadata' @:: Lens' ActivityExecutionInfo (Prelude.Maybe Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.canceledReason' @:: Lens' ActivityExecutionInfo Data.Text.Text@ -}
data ActivityExecutionInfo
  = ActivityExecutionInfo'_constructor {_ActivityExecutionInfo'activityId :: !Data.Text.Text,
                                        _ActivityExecutionInfo'runId :: !Data.Text.Text,
                                        _ActivityExecutionInfo'activityType :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType),
                                        _ActivityExecutionInfo'status :: !Proto.Temporal.Api.Enums.V1.Activity.ActivityExecutionStatus,
                                        _ActivityExecutionInfo'runState :: !Proto.Temporal.Api.Enums.V1.Workflow.PendingActivityState,
                                        _ActivityExecutionInfo'taskQueue :: !Data.Text.Text,
                                        _ActivityExecutionInfo'scheduleToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _ActivityExecutionInfo'scheduleToStartTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _ActivityExecutionInfo'startToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _ActivityExecutionInfo'heartbeatTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _ActivityExecutionInfo'retryPolicy :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy),
                                        _ActivityExecutionInfo'heartbeatDetails :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads),
                                        _ActivityExecutionInfo'lastHeartbeatTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _ActivityExecutionInfo'lastStartedTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _ActivityExecutionInfo'attempt :: !Data.Int.Int32,
                                        _ActivityExecutionInfo'executionDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _ActivityExecutionInfo'scheduleTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _ActivityExecutionInfo'expirationTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _ActivityExecutionInfo'closeTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _ActivityExecutionInfo'lastFailure :: !(Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure),
                                        _ActivityExecutionInfo'lastWorkerIdentity :: !Data.Text.Text,
                                        _ActivityExecutionInfo'currentRetryInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _ActivityExecutionInfo'lastAttemptCompleteTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _ActivityExecutionInfo'nextAttemptScheduleTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _ActivityExecutionInfo'lastDeploymentVersion :: !(Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion),
                                        _ActivityExecutionInfo'priority :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority),
                                        _ActivityExecutionInfo'stateTransitionCount :: !Data.Int.Int64,
                                        _ActivityExecutionInfo'stateSizeBytes :: !Data.Int.Int64,
                                        _ActivityExecutionInfo'searchAttributes :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes),
                                        _ActivityExecutionInfo'header :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header),
                                        _ActivityExecutionInfo'userMetadata :: !(Prelude.Maybe Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata),
                                        _ActivityExecutionInfo'canceledReason :: !Data.Text.Text,
                                        _ActivityExecutionInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivityExecutionInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "activityId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'activityId
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'activityId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'runId
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "activityType" Proto.Temporal.Api.Common.V1.Message.ActivityType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'activityType
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'activityType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'activityType" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'activityType
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'activityType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "status" Proto.Temporal.Api.Enums.V1.Activity.ActivityExecutionStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'status
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "runState" Proto.Temporal.Api.Enums.V1.Workflow.PendingActivityState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'runState
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'runState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "taskQueue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'taskQueue
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'taskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "scheduleToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'scheduleToCloseTimeout
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'scheduleToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'scheduleToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'scheduleToCloseTimeout
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'scheduleToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "scheduleToStartTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'scheduleToStartTimeout
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'scheduleToStartTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'scheduleToStartTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'scheduleToStartTimeout
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'scheduleToStartTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "startToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'startToCloseTimeout
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'startToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'startToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'startToCloseTimeout
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'startToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "heartbeatTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'heartbeatTimeout
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'heartbeatTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'heartbeatTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'heartbeatTimeout
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'heartbeatTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "retryPolicy" Proto.Temporal.Api.Common.V1.Message.RetryPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'retryPolicy
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'retryPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'retryPolicy" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'retryPolicy
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'retryPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "heartbeatDetails" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'heartbeatDetails
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'heartbeatDetails = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'heartbeatDetails" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'heartbeatDetails
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'heartbeatDetails = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "lastHeartbeatTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastHeartbeatTime
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'lastHeartbeatTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'lastHeartbeatTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastHeartbeatTime
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'lastHeartbeatTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "lastStartedTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastStartedTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'lastStartedTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'lastStartedTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastStartedTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'lastStartedTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "attempt" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'attempt
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'attempt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "executionDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'executionDuration
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'executionDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'executionDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'executionDuration
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'executionDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "scheduleTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'scheduleTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'scheduleTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'scheduleTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'scheduleTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'scheduleTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "expirationTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'expirationTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'expirationTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'expirationTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'expirationTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'expirationTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "closeTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'closeTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'closeTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'closeTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'closeTime
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'closeTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "lastFailure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastFailure
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'lastFailure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'lastFailure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastFailure
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'lastFailure = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "lastWorkerIdentity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastWorkerIdentity
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'lastWorkerIdentity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "currentRetryInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'currentRetryInterval
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'currentRetryInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'currentRetryInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'currentRetryInterval
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'currentRetryInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "lastAttemptCompleteTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastAttemptCompleteTime
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'lastAttemptCompleteTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'lastAttemptCompleteTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastAttemptCompleteTime
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'lastAttemptCompleteTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "nextAttemptScheduleTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'nextAttemptScheduleTime
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'nextAttemptScheduleTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'nextAttemptScheduleTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'nextAttemptScheduleTime
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'nextAttemptScheduleTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "lastDeploymentVersion" Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastDeploymentVersion
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'lastDeploymentVersion = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'lastDeploymentVersion" (Prelude.Maybe Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'lastDeploymentVersion
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'lastDeploymentVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "priority" Proto.Temporal.Api.Common.V1.Message.Priority where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'priority
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'priority = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'priority" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'priority
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'priority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "stateTransitionCount" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'stateTransitionCount
           (\ x__ y__
              -> x__ {_ActivityExecutionInfo'stateTransitionCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "stateSizeBytes" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'stateSizeBytes
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'stateSizeBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "searchAttributes" Proto.Temporal.Api.Common.V1.Message.SearchAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'searchAttributes
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'searchAttributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'searchAttributes" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'searchAttributes
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'searchAttributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "header" Proto.Temporal.Api.Common.V1.Message.Header where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'header
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'header" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Header) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'header
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "userMetadata" Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'userMetadata
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'userMetadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "maybe'userMetadata" (Prelude.Maybe Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'userMetadata
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'userMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionInfo "canceledReason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionInfo'canceledReason
           (\ x__ y__ -> x__ {_ActivityExecutionInfo'canceledReason = y__}))
        Prelude.id
instance Data.ProtoLens.Message ActivityExecutionInfo where
  messageName _
    = Data.Text.pack "temporal.api.activity.v1.ActivityExecutionInfo"
  packedMessageDescriptor _
    = "\n\
      \\NAKActivityExecutionInfo\DC2\US\n\
      \\vactivity_id\CAN\SOH \SOH(\tR\n\
      \activityId\DC2\NAK\n\
      \\ACKrun_id\CAN\STX \SOH(\tR\ENQrunId\DC2I\n\
      \\ractivity_type\CAN\ETX \SOH(\v2$.temporal.api.common.v1.ActivityTypeR\factivityType\DC2F\n\
      \\ACKstatus\CAN\EOT \SOH(\SO2..temporal.api.enums.v1.ActivityExecutionStatusR\ACKstatus\DC2H\n\
      \\trun_state\CAN\ENQ \SOH(\SO2+.temporal.api.enums.v1.PendingActivityStateR\brunState\DC2\GS\n\
      \\n\
      \task_queue\CAN\ACK \SOH(\tR\ttaskQueue\DC2T\n\
      \\EMschedule_to_close_timeout\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2T\n\
      \\EMschedule_to_start_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
      \\SYNstart_to_close_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2F\n\
      \\DC1heartbeat_timeout\CAN\n\
      \ \SOH(\v2\EM.google.protobuf.DurationR\DLEheartbeatTimeout\DC2F\n\
      \\fretry_policy\CAN\v \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2M\n\
      \\DC1heartbeat_details\CAN\f \SOH(\v2 .temporal.api.common.v1.PayloadsR\DLEheartbeatDetails\DC2J\n\
      \\DC3last_heartbeat_time\CAN\r \SOH(\v2\SUB.google.protobuf.TimestampR\DC1lastHeartbeatTime\DC2F\n\
      \\DC1last_started_time\CAN\SO \SOH(\v2\SUB.google.protobuf.TimestampR\SIlastStartedTime\DC2\CAN\n\
      \\aattempt\CAN\SI \SOH(\ENQR\aattempt\DC2H\n\
      \\DC2execution_duration\CAN\DLE \SOH(\v2\EM.google.protobuf.DurationR\DC1executionDuration\DC2?\n\
      \\rschedule_time\CAN\DC1 \SOH(\v2\SUB.google.protobuf.TimestampR\fscheduleTime\DC2C\n\
      \\SIexpiration_time\CAN\DC2 \SOH(\v2\SUB.google.protobuf.TimestampR\SOexpirationTime\DC29\n\
      \\n\
      \close_time\CAN\DC3 \SOH(\v2\SUB.google.protobuf.TimestampR\tcloseTime\DC2C\n\
      \\flast_failure\CAN\DC4 \SOH(\v2 .temporal.api.failure.v1.FailureR\vlastFailure\DC20\n\
      \\DC4last_worker_identity\CAN\NAK \SOH(\tR\DC2lastWorkerIdentity\DC2O\n\
      \\SYNcurrent_retry_interval\CAN\SYN \SOH(\v2\EM.google.protobuf.DurationR\DC4currentRetryInterval\DC2W\n\
      \\SUBlast_attempt_complete_time\CAN\ETB \SOH(\v2\SUB.google.protobuf.TimestampR\ETBlastAttemptCompleteTime\DC2W\n\
      \\SUBnext_attempt_schedule_time\CAN\CAN \SOH(\v2\SUB.google.protobuf.TimestampR\ETBnextAttemptScheduleTime\DC2k\n\
      \\ETBlast_deployment_version\CAN\EM \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\NAKlastDeploymentVersion\DC2<\n\
      \\bpriority\CAN\SUB \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority\DC24\n\
      \\SYNstate_transition_count\CAN\ESC \SOH(\ETXR\DC4stateTransitionCount\DC2(\n\
      \\DLEstate_size_bytes\CAN\FS \SOH(\ETXR\SOstateSizeBytes\DC2U\n\
      \\DC1search_attributes\CAN\GS \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC26\n\
      \\ACKheader\CAN\RS \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader\DC2F\n\
      \\ruser_metadata\CAN\US \SOH(\v2!.temporal.api.sdk.v1.UserMetadataR\fuserMetadata\DC2'\n\
      \\SIcanceled_reason\CAN  \SOH(\tR\SOcanceledReason"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        activityId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activityId")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        runId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"runId")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        activityType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.ActivityType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'activityType")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Activity.ActivityExecutionStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        runState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Workflow.PendingActivityState)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"runState")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        taskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"taskQueue")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        scheduleToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        scheduleToStartTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_start_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        startToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        heartbeatTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heartbeat_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heartbeatTimeout")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        retryPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.RetryPolicy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retryPolicy")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        heartbeatDetails__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heartbeat_details"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heartbeatDetails")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        lastHeartbeatTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_heartbeat_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastHeartbeatTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        lastStartedTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_started_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastStartedTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        attempt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attempt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"attempt")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        executionDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "execution_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'executionDuration")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        scheduleTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        expirationTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expiration_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'expirationTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        closeTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "close_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'closeTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        lastFailure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastFailure")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        lastWorkerIdentity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_worker_identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lastWorkerIdentity")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        currentRetryInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_retry_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'currentRetryInterval")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        lastAttemptCompleteTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_attempt_complete_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastAttemptCompleteTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        nextAttemptScheduleTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "next_attempt_schedule_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nextAttemptScheduleTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        lastDeploymentVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_deployment_version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Deployment.V1.Message.WorkerDeploymentVersion)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastDeploymentVersion")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        priority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Priority)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'priority")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        stateTransitionCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_transition_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateTransitionCount")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        stateSizeBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_size_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateSizeBytes")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        searchAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "search_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.SearchAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'searchAttributes")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Header)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        userMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "user_metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Sdk.V1.UserMetadata.UserMetadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'userMetadata")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
        canceledReason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "canceled_reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"canceledReason")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, activityId__field_descriptor),
           (Data.ProtoLens.Tag 2, runId__field_descriptor),
           (Data.ProtoLens.Tag 3, activityType__field_descriptor),
           (Data.ProtoLens.Tag 4, status__field_descriptor),
           (Data.ProtoLens.Tag 5, runState__field_descriptor),
           (Data.ProtoLens.Tag 6, taskQueue__field_descriptor),
           (Data.ProtoLens.Tag 7, scheduleToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 8, scheduleToStartTimeout__field_descriptor),
           (Data.ProtoLens.Tag 9, startToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 10, heartbeatTimeout__field_descriptor),
           (Data.ProtoLens.Tag 11, retryPolicy__field_descriptor),
           (Data.ProtoLens.Tag 12, heartbeatDetails__field_descriptor),
           (Data.ProtoLens.Tag 13, lastHeartbeatTime__field_descriptor),
           (Data.ProtoLens.Tag 14, lastStartedTime__field_descriptor),
           (Data.ProtoLens.Tag 15, attempt__field_descriptor),
           (Data.ProtoLens.Tag 16, executionDuration__field_descriptor),
           (Data.ProtoLens.Tag 17, scheduleTime__field_descriptor),
           (Data.ProtoLens.Tag 18, expirationTime__field_descriptor),
           (Data.ProtoLens.Tag 19, closeTime__field_descriptor),
           (Data.ProtoLens.Tag 20, lastFailure__field_descriptor),
           (Data.ProtoLens.Tag 21, lastWorkerIdentity__field_descriptor),
           (Data.ProtoLens.Tag 22, currentRetryInterval__field_descriptor),
           (Data.ProtoLens.Tag 23, lastAttemptCompleteTime__field_descriptor),
           (Data.ProtoLens.Tag 24, nextAttemptScheduleTime__field_descriptor),
           (Data.ProtoLens.Tag 25, lastDeploymentVersion__field_descriptor),
           (Data.ProtoLens.Tag 26, priority__field_descriptor),
           (Data.ProtoLens.Tag 27, stateTransitionCount__field_descriptor),
           (Data.ProtoLens.Tag 28, stateSizeBytes__field_descriptor),
           (Data.ProtoLens.Tag 29, searchAttributes__field_descriptor),
           (Data.ProtoLens.Tag 30, header__field_descriptor),
           (Data.ProtoLens.Tag 31, userMetadata__field_descriptor),
           (Data.ProtoLens.Tag 32, canceledReason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivityExecutionInfo'_unknownFields
        (\ x__ y__ -> x__ {_ActivityExecutionInfo'_unknownFields = y__})
  defMessage
    = ActivityExecutionInfo'_constructor
        {_ActivityExecutionInfo'activityId = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'runId = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'activityType = Prelude.Nothing,
         _ActivityExecutionInfo'status = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'runState = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'taskQueue = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'scheduleToCloseTimeout = Prelude.Nothing,
         _ActivityExecutionInfo'scheduleToStartTimeout = Prelude.Nothing,
         _ActivityExecutionInfo'startToCloseTimeout = Prelude.Nothing,
         _ActivityExecutionInfo'heartbeatTimeout = Prelude.Nothing,
         _ActivityExecutionInfo'retryPolicy = Prelude.Nothing,
         _ActivityExecutionInfo'heartbeatDetails = Prelude.Nothing,
         _ActivityExecutionInfo'lastHeartbeatTime = Prelude.Nothing,
         _ActivityExecutionInfo'lastStartedTime = Prelude.Nothing,
         _ActivityExecutionInfo'attempt = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'executionDuration = Prelude.Nothing,
         _ActivityExecutionInfo'scheduleTime = Prelude.Nothing,
         _ActivityExecutionInfo'expirationTime = Prelude.Nothing,
         _ActivityExecutionInfo'closeTime = Prelude.Nothing,
         _ActivityExecutionInfo'lastFailure = Prelude.Nothing,
         _ActivityExecutionInfo'lastWorkerIdentity = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'currentRetryInterval = Prelude.Nothing,
         _ActivityExecutionInfo'lastAttemptCompleteTime = Prelude.Nothing,
         _ActivityExecutionInfo'nextAttemptScheduleTime = Prelude.Nothing,
         _ActivityExecutionInfo'lastDeploymentVersion = Prelude.Nothing,
         _ActivityExecutionInfo'priority = Prelude.Nothing,
         _ActivityExecutionInfo'stateTransitionCount = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'stateSizeBytes = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'searchAttributes = Prelude.Nothing,
         _ActivityExecutionInfo'header = Prelude.Nothing,
         _ActivityExecutionInfo'userMetadata = Prelude.Nothing,
         _ActivityExecutionInfo'canceledReason = Data.ProtoLens.fieldDefault,
         _ActivityExecutionInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivityExecutionInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser ActivityExecutionInfo
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
                                       "activity_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"activityId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "run_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"runId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "activity_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activityType") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "run_state"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"runState") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "task_queue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskQueue") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToCloseTimeout") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_start_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToStartTimeout") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startToCloseTimeout") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "heartbeat_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"heartbeatTimeout") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "retry_policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryPolicy") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "heartbeat_details"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"heartbeatDetails") y x)
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_heartbeat_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastHeartbeatTime") y x)
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_started_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastStartedTime") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "attempt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"attempt") y x)
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "execution_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"executionDuration") y x)
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleTime") y x)
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "expiration_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"expirationTime") y x)
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "close_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"closeTime") y x)
                        162
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_failure"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastFailure") y x)
                        170
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "last_worker_identity"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastWorkerIdentity") y x)
                        178
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "current_retry_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentRetryInterval") y x)
                        186
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_attempt_complete_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastAttemptCompleteTime") y x)
                        194
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "next_attempt_schedule_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nextAttemptScheduleTime") y x)
                        202
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_deployment_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastDeploymentVersion") y x)
                        210
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "priority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priority") y x)
                        216
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state_transition_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stateTransitionCount") y x)
                        224
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state_size_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stateSizeBytes") y x)
                        234
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "search_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"searchAttributes") y x)
                        242
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                        250
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "user_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"userMetadata") y x)
                        258
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "canceled_reason"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"canceledReason") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActivityExecutionInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"activityId") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"runId") _x
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
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'activityType") _x
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
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                  Prelude.fromEnum _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"runState") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     Prelude.fromEnum _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"taskQueue") _x
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
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout")
                                      _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
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
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field
                                            @"maybe'scheduleToStartTimeout")
                                         _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field
                                               @"maybe'startToCloseTimeout")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'heartbeatTimeout")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"maybe'retryPolicy")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                     ((Prelude..)
                                                        (\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                        Data.ProtoLens.encodeMessage _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'heartbeatDetails")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                        ((Prelude..)
                                                           (\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                           Data.ProtoLens.encodeMessage _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'lastHeartbeatTime")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              106)
                                                           ((Prelude..)
                                                              (\ bs
                                                                 -> (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         (Prelude.fromIntegral
                                                                            (Data.ByteString.length
                                                                               bs)))
                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                         bs))
                                                              Data.ProtoLens.encodeMessage _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'lastStartedTime")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 114)
                                                              ((Prelude..)
                                                                 (\ bs
                                                                    -> (Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            (Prelude.fromIntegral
                                                                               (Data.ByteString.length
                                                                                  bs)))
                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                            bs))
                                                                 Data.ProtoLens.encodeMessage _v))
                                                    ((Data.Monoid.<>)
                                                       (let
                                                          _v
                                                            = Lens.Family2.view
                                                                (Data.ProtoLens.Field.field
                                                                   @"attempt")
                                                                _x
                                                        in
                                                          if (Prelude.==)
                                                               _v Data.ProtoLens.fieldDefault then
                                                              Data.Monoid.mempty
                                                          else
                                                              (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   120)
                                                                ((Prelude..)
                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   Prelude.fromIntegral _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'executionDuration")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       130)
                                                                    ((Prelude..)
                                                                       (\ bs
                                                                          -> (Data.Monoid.<>)
                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                  (Prelude.fromIntegral
                                                                                     (Data.ByteString.length
                                                                                        bs)))
                                                                               (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                  bs))
                                                                       Data.ProtoLens.encodeMessage
                                                                       _v))
                                                          ((Data.Monoid.<>)
                                                             (case
                                                                  Lens.Family2.view
                                                                    (Data.ProtoLens.Field.field
                                                                       @"maybe'scheduleTime")
                                                                    _x
                                                              of
                                                                Prelude.Nothing
                                                                  -> Data.Monoid.mempty
                                                                (Prelude.Just _v)
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          138)
                                                                       ((Prelude..)
                                                                          (\ bs
                                                                             -> (Data.Monoid.<>)
                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     (Prelude.fromIntegral
                                                                                        (Data.ByteString.length
                                                                                           bs)))
                                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                     bs))
                                                                          Data.ProtoLens.encodeMessage
                                                                          _v))
                                                             ((Data.Monoid.<>)
                                                                (case
                                                                     Lens.Family2.view
                                                                       (Data.ProtoLens.Field.field
                                                                          @"maybe'expirationTime")
                                                                       _x
                                                                 of
                                                                   Prelude.Nothing
                                                                     -> Data.Monoid.mempty
                                                                   (Prelude.Just _v)
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             146)
                                                                          ((Prelude..)
                                                                             (\ bs
                                                                                -> (Data.Monoid.<>)
                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                        (Prelude.fromIntegral
                                                                                           (Data.ByteString.length
                                                                                              bs)))
                                                                                     (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                        bs))
                                                                             Data.ProtoLens.encodeMessage
                                                                             _v))
                                                                ((Data.Monoid.<>)
                                                                   (case
                                                                        Lens.Family2.view
                                                                          (Data.ProtoLens.Field.field
                                                                             @"maybe'closeTime")
                                                                          _x
                                                                    of
                                                                      Prelude.Nothing
                                                                        -> Data.Monoid.mempty
                                                                      (Prelude.Just _v)
                                                                        -> (Data.Monoid.<>)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                154)
                                                                             ((Prelude..)
                                                                                (\ bs
                                                                                   -> (Data.Monoid.<>)
                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                           (Prelude.fromIntegral
                                                                                              (Data.ByteString.length
                                                                                                 bs)))
                                                                                        (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                           bs))
                                                                                Data.ProtoLens.encodeMessage
                                                                                _v))
                                                                   ((Data.Monoid.<>)
                                                                      (case
                                                                           Lens.Family2.view
                                                                             (Data.ProtoLens.Field.field
                                                                                @"maybe'lastFailure")
                                                                             _x
                                                                       of
                                                                         Prelude.Nothing
                                                                           -> Data.Monoid.mempty
                                                                         (Prelude.Just _v)
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   162)
                                                                                ((Prelude..)
                                                                                   (\ bs
                                                                                      -> (Data.Monoid.<>)
                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                              (Prelude.fromIntegral
                                                                                                 (Data.ByteString.length
                                                                                                    bs)))
                                                                                           (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                              bs))
                                                                                   Data.ProtoLens.encodeMessage
                                                                                   _v))
                                                                      ((Data.Monoid.<>)
                                                                         (let
                                                                            _v
                                                                              = Lens.Family2.view
                                                                                  (Data.ProtoLens.Field.field
                                                                                     @"lastWorkerIdentity")
                                                                                  _x
                                                                          in
                                                                            if (Prelude.==)
                                                                                 _v
                                                                                 Data.ProtoLens.fieldDefault then
                                                                                Data.Monoid.mempty
                                                                            else
                                                                                (Data.Monoid.<>)
                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     170)
                                                                                  ((Prelude..)
                                                                                     (\ bs
                                                                                        -> (Data.Monoid.<>)
                                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                (Prelude.fromIntegral
                                                                                                   (Data.ByteString.length
                                                                                                      bs)))
                                                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                bs))
                                                                                     Data.Text.Encoding.encodeUtf8
                                                                                     _v))
                                                                         ((Data.Monoid.<>)
                                                                            (case
                                                                                 Lens.Family2.view
                                                                                   (Data.ProtoLens.Field.field
                                                                                      @"maybe'currentRetryInterval")
                                                                                   _x
                                                                             of
                                                                               Prelude.Nothing
                                                                                 -> Data.Monoid.mempty
                                                                               (Prelude.Just _v)
                                                                                 -> (Data.Monoid.<>)
                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                         178)
                                                                                      ((Prelude..)
                                                                                         (\ bs
                                                                                            -> (Data.Monoid.<>)
                                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                    (Prelude.fromIntegral
                                                                                                       (Data.ByteString.length
                                                                                                          bs)))
                                                                                                 (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                    bs))
                                                                                         Data.ProtoLens.encodeMessage
                                                                                         _v))
                                                                            ((Data.Monoid.<>)
                                                                               (case
                                                                                    Lens.Family2.view
                                                                                      (Data.ProtoLens.Field.field
                                                                                         @"maybe'lastAttemptCompleteTime")
                                                                                      _x
                                                                                of
                                                                                  Prelude.Nothing
                                                                                    -> Data.Monoid.mempty
                                                                                  (Prelude.Just _v)
                                                                                    -> (Data.Monoid.<>)
                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                            186)
                                                                                         ((Prelude..)
                                                                                            (\ bs
                                                                                               -> (Data.Monoid.<>)
                                                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                       (Prelude.fromIntegral
                                                                                                          (Data.ByteString.length
                                                                                                             bs)))
                                                                                                    (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                       bs))
                                                                                            Data.ProtoLens.encodeMessage
                                                                                            _v))
                                                                               ((Data.Monoid.<>)
                                                                                  (case
                                                                                       Lens.Family2.view
                                                                                         (Data.ProtoLens.Field.field
                                                                                            @"maybe'nextAttemptScheduleTime")
                                                                                         _x
                                                                                   of
                                                                                     Prelude.Nothing
                                                                                       -> Data.Monoid.mempty
                                                                                     (Prelude.Just _v)
                                                                                       -> (Data.Monoid.<>)
                                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                               194)
                                                                                            ((Prelude..)
                                                                                               (\ bs
                                                                                                  -> (Data.Monoid.<>)
                                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                          (Prelude.fromIntegral
                                                                                                             (Data.ByteString.length
                                                                                                                bs)))
                                                                                                       (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                          bs))
                                                                                               Data.ProtoLens.encodeMessage
                                                                                               _v))
                                                                                  ((Data.Monoid.<>)
                                                                                     (case
                                                                                          Lens.Family2.view
                                                                                            (Data.ProtoLens.Field.field
                                                                                               @"maybe'lastDeploymentVersion")
                                                                                            _x
                                                                                      of
                                                                                        Prelude.Nothing
                                                                                          -> Data.Monoid.mempty
                                                                                        (Prelude.Just _v)
                                                                                          -> (Data.Monoid.<>)
                                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                  202)
                                                                                               ((Prelude..)
                                                                                                  (\ bs
                                                                                                     -> (Data.Monoid.<>)
                                                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                             (Prelude.fromIntegral
                                                                                                                (Data.ByteString.length
                                                                                                                   bs)))
                                                                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                             bs))
                                                                                                  Data.ProtoLens.encodeMessage
                                                                                                  _v))
                                                                                     ((Data.Monoid.<>)
                                                                                        (case
                                                                                             Lens.Family2.view
                                                                                               (Data.ProtoLens.Field.field
                                                                                                  @"maybe'priority")
                                                                                               _x
                                                                                         of
                                                                                           Prelude.Nothing
                                                                                             -> Data.Monoid.mempty
                                                                                           (Prelude.Just _v)
                                                                                             -> (Data.Monoid.<>)
                                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                     210)
                                                                                                  ((Prelude..)
                                                                                                     (\ bs
                                                                                                        -> (Data.Monoid.<>)
                                                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                (Prelude.fromIntegral
                                                                                                                   (Data.ByteString.length
                                                                                                                      bs)))
                                                                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                bs))
                                                                                                     Data.ProtoLens.encodeMessage
                                                                                                     _v))
                                                                                        ((Data.Monoid.<>)
                                                                                           (let
                                                                                              _v
                                                                                                = Lens.Family2.view
                                                                                                    (Data.ProtoLens.Field.field
                                                                                                       @"stateTransitionCount")
                                                                                                    _x
                                                                                            in
                                                                                              if (Prelude.==)
                                                                                                   _v
                                                                                                   Data.ProtoLens.fieldDefault then
                                                                                                  Data.Monoid.mempty
                                                                                              else
                                                                                                  (Data.Monoid.<>)
                                                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                       216)
                                                                                                    ((Prelude..)
                                                                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                       Prelude.fromIntegral
                                                                                                       _v))
                                                                                           ((Data.Monoid.<>)
                                                                                              (let
                                                                                                 _v
                                                                                                   = Lens.Family2.view
                                                                                                       (Data.ProtoLens.Field.field
                                                                                                          @"stateSizeBytes")
                                                                                                       _x
                                                                                               in
                                                                                                 if (Prelude.==)
                                                                                                      _v
                                                                                                      Data.ProtoLens.fieldDefault then
                                                                                                     Data.Monoid.mempty
                                                                                                 else
                                                                                                     (Data.Monoid.<>)
                                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                          224)
                                                                                                       ((Prelude..)
                                                                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                          Prelude.fromIntegral
                                                                                                          _v))
                                                                                              ((Data.Monoid.<>)
                                                                                                 (case
                                                                                                      Lens.Family2.view
                                                                                                        (Data.ProtoLens.Field.field
                                                                                                           @"maybe'searchAttributes")
                                                                                                        _x
                                                                                                  of
                                                                                                    Prelude.Nothing
                                                                                                      -> Data.Monoid.mempty
                                                                                                    (Prelude.Just _v)
                                                                                                      -> (Data.Monoid.<>)
                                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                              234)
                                                                                                           ((Prelude..)
                                                                                                              (\ bs
                                                                                                                 -> (Data.Monoid.<>)
                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                         (Prelude.fromIntegral
                                                                                                                            (Data.ByteString.length
                                                                                                                               bs)))
                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                         bs))
                                                                                                              Data.ProtoLens.encodeMessage
                                                                                                              _v))
                                                                                                 ((Data.Monoid.<>)
                                                                                                    (case
                                                                                                         Lens.Family2.view
                                                                                                           (Data.ProtoLens.Field.field
                                                                                                              @"maybe'header")
                                                                                                           _x
                                                                                                     of
                                                                                                       Prelude.Nothing
                                                                                                         -> Data.Monoid.mempty
                                                                                                       (Prelude.Just _v)
                                                                                                         -> (Data.Monoid.<>)
                                                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                 242)
                                                                                                              ((Prelude..)
                                                                                                                 (\ bs
                                                                                                                    -> (Data.Monoid.<>)
                                                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                            (Prelude.fromIntegral
                                                                                                                               (Data.ByteString.length
                                                                                                                                  bs)))
                                                                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                            bs))
                                                                                                                 Data.ProtoLens.encodeMessage
                                                                                                                 _v))
                                                                                                    ((Data.Monoid.<>)
                                                                                                       (case
                                                                                                            Lens.Family2.view
                                                                                                              (Data.ProtoLens.Field.field
                                                                                                                 @"maybe'userMetadata")
                                                                                                              _x
                                                                                                        of
                                                                                                          Prelude.Nothing
                                                                                                            -> Data.Monoid.mempty
                                                                                                          (Prelude.Just _v)
                                                                                                            -> (Data.Monoid.<>)
                                                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                    250)
                                                                                                                 ((Prelude..)
                                                                                                                    (\ bs
                                                                                                                       -> (Data.Monoid.<>)
                                                                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                               (Prelude.fromIntegral
                                                                                                                                  (Data.ByteString.length
                                                                                                                                     bs)))
                                                                                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                               bs))
                                                                                                                    Data.ProtoLens.encodeMessage
                                                                                                                    _v))
                                                                                                       ((Data.Monoid.<>)
                                                                                                          (let
                                                                                                             _v
                                                                                                               = Lens.Family2.view
                                                                                                                   (Data.ProtoLens.Field.field
                                                                                                                      @"canceledReason")
                                                                                                                   _x
                                                                                                           in
                                                                                                             if (Prelude.==)
                                                                                                                  _v
                                                                                                                  Data.ProtoLens.fieldDefault then
                                                                                                                 Data.Monoid.mempty
                                                                                                             else
                                                                                                                 (Data.Monoid.<>)
                                                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                      258)
                                                                                                                   ((Prelude..)
                                                                                                                      (\ bs
                                                                                                                         -> (Data.Monoid.<>)
                                                                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                 (Prelude.fromIntegral
                                                                                                                                    (Data.ByteString.length
                                                                                                                                       bs)))
                                                                                                                              (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                 bs))
                                                                                                                      Data.Text.Encoding.encodeUtf8
                                                                                                                      _v))
                                                                                                          (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                                                             (Lens.Family2.view
                                                                                                                Data.ProtoLens.unknownFields
                                                                                                                _x)))))))))))))))))))))))))))))))))
instance Control.DeepSeq.NFData ActivityExecutionInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivityExecutionInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ActivityExecutionInfo'activityId x__)
                (Control.DeepSeq.deepseq
                   (_ActivityExecutionInfo'runId x__)
                   (Control.DeepSeq.deepseq
                      (_ActivityExecutionInfo'activityType x__)
                      (Control.DeepSeq.deepseq
                         (_ActivityExecutionInfo'status x__)
                         (Control.DeepSeq.deepseq
                            (_ActivityExecutionInfo'runState x__)
                            (Control.DeepSeq.deepseq
                               (_ActivityExecutionInfo'taskQueue x__)
                               (Control.DeepSeq.deepseq
                                  (_ActivityExecutionInfo'scheduleToCloseTimeout x__)
                                  (Control.DeepSeq.deepseq
                                     (_ActivityExecutionInfo'scheduleToStartTimeout x__)
                                     (Control.DeepSeq.deepseq
                                        (_ActivityExecutionInfo'startToCloseTimeout x__)
                                        (Control.DeepSeq.deepseq
                                           (_ActivityExecutionInfo'heartbeatTimeout x__)
                                           (Control.DeepSeq.deepseq
                                              (_ActivityExecutionInfo'retryPolicy x__)
                                              (Control.DeepSeq.deepseq
                                                 (_ActivityExecutionInfo'heartbeatDetails x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_ActivityExecutionInfo'lastHeartbeatTime x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_ActivityExecutionInfo'lastStartedTime x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_ActivityExecutionInfo'attempt x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_ActivityExecutionInfo'executionDuration
                                                                x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_ActivityExecutionInfo'scheduleTime
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_ActivityExecutionInfo'expirationTime
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_ActivityExecutionInfo'closeTime
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_ActivityExecutionInfo'lastFailure
                                                                            x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_ActivityExecutionInfo'lastWorkerIdentity
                                                                               x__)
                                                                            (Control.DeepSeq.deepseq
                                                                               (_ActivityExecutionInfo'currentRetryInterval
                                                                                  x__)
                                                                               (Control.DeepSeq.deepseq
                                                                                  (_ActivityExecutionInfo'lastAttemptCompleteTime
                                                                                     x__)
                                                                                  (Control.DeepSeq.deepseq
                                                                                     (_ActivityExecutionInfo'nextAttemptScheduleTime
                                                                                        x__)
                                                                                     (Control.DeepSeq.deepseq
                                                                                        (_ActivityExecutionInfo'lastDeploymentVersion
                                                                                           x__)
                                                                                        (Control.DeepSeq.deepseq
                                                                                           (_ActivityExecutionInfo'priority
                                                                                              x__)
                                                                                           (Control.DeepSeq.deepseq
                                                                                              (_ActivityExecutionInfo'stateTransitionCount
                                                                                                 x__)
                                                                                              (Control.DeepSeq.deepseq
                                                                                                 (_ActivityExecutionInfo'stateSizeBytes
                                                                                                    x__)
                                                                                                 (Control.DeepSeq.deepseq
                                                                                                    (_ActivityExecutionInfo'searchAttributes
                                                                                                       x__)
                                                                                                    (Control.DeepSeq.deepseq
                                                                                                       (_ActivityExecutionInfo'header
                                                                                                          x__)
                                                                                                       (Control.DeepSeq.deepseq
                                                                                                          (_ActivityExecutionInfo'userMetadata
                                                                                                             x__)
                                                                                                          (Control.DeepSeq.deepseq
                                                                                                             (_ActivityExecutionInfo'canceledReason
                                                                                                                x__)
                                                                                                             ()))))))))))))))))))))))))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.activityId' @:: Lens' ActivityExecutionListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.runId' @:: Lens' ActivityExecutionListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.activityType' @:: Lens' ActivityExecutionListInfo Proto.Temporal.Api.Common.V1.Message.ActivityType@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'activityType' @:: Lens' ActivityExecutionListInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.scheduleTime' @:: Lens' ActivityExecutionListInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'scheduleTime' @:: Lens' ActivityExecutionListInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.closeTime' @:: Lens' ActivityExecutionListInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'closeTime' @:: Lens' ActivityExecutionListInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.status' @:: Lens' ActivityExecutionListInfo Proto.Temporal.Api.Enums.V1.Activity.ActivityExecutionStatus@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.searchAttributes' @:: Lens' ActivityExecutionListInfo Proto.Temporal.Api.Common.V1.Message.SearchAttributes@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'searchAttributes' @:: Lens' ActivityExecutionListInfo (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.taskQueue' @:: Lens' ActivityExecutionListInfo Data.Text.Text@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.stateTransitionCount' @:: Lens' ActivityExecutionListInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.stateSizeBytes' @:: Lens' ActivityExecutionListInfo Data.Int.Int64@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.executionDuration' @:: Lens' ActivityExecutionListInfo Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'executionDuration' @:: Lens' ActivityExecutionListInfo (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data ActivityExecutionListInfo
  = ActivityExecutionListInfo'_constructor {_ActivityExecutionListInfo'activityId :: !Data.Text.Text,
                                            _ActivityExecutionListInfo'runId :: !Data.Text.Text,
                                            _ActivityExecutionListInfo'activityType :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType),
                                            _ActivityExecutionListInfo'scheduleTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                            _ActivityExecutionListInfo'closeTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                            _ActivityExecutionListInfo'status :: !Proto.Temporal.Api.Enums.V1.Activity.ActivityExecutionStatus,
                                            _ActivityExecutionListInfo'searchAttributes :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes),
                                            _ActivityExecutionListInfo'taskQueue :: !Data.Text.Text,
                                            _ActivityExecutionListInfo'stateTransitionCount :: !Data.Int.Int64,
                                            _ActivityExecutionListInfo'stateSizeBytes :: !Data.Int.Int64,
                                            _ActivityExecutionListInfo'executionDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                            _ActivityExecutionListInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivityExecutionListInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "activityId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'activityId
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'activityId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "runId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'runId
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'runId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "activityType" Proto.Temporal.Api.Common.V1.Message.ActivityType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'activityType
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'activityType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "maybe'activityType" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.ActivityType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'activityType
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'activityType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "scheduleTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'scheduleTime
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'scheduleTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "maybe'scheduleTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'scheduleTime
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'scheduleTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "closeTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'closeTime
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'closeTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "maybe'closeTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'closeTime
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'closeTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "status" Proto.Temporal.Api.Enums.V1.Activity.ActivityExecutionStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'status
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "searchAttributes" Proto.Temporal.Api.Common.V1.Message.SearchAttributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'searchAttributes
           (\ x__ y__
              -> x__ {_ActivityExecutionListInfo'searchAttributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "maybe'searchAttributes" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.SearchAttributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'searchAttributes
           (\ x__ y__
              -> x__ {_ActivityExecutionListInfo'searchAttributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "taskQueue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'taskQueue
           (\ x__ y__ -> x__ {_ActivityExecutionListInfo'taskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "stateTransitionCount" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'stateTransitionCount
           (\ x__ y__
              -> x__ {_ActivityExecutionListInfo'stateTransitionCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "stateSizeBytes" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'stateSizeBytes
           (\ x__ y__
              -> x__ {_ActivityExecutionListInfo'stateSizeBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "executionDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'executionDuration
           (\ x__ y__
              -> x__ {_ActivityExecutionListInfo'executionDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityExecutionListInfo "maybe'executionDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionListInfo'executionDuration
           (\ x__ y__
              -> x__ {_ActivityExecutionListInfo'executionDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Message ActivityExecutionListInfo where
  messageName _
    = Data.Text.pack
        "temporal.api.activity.v1.ActivityExecutionListInfo"
  packedMessageDescriptor _
    = "\n\
      \\EMActivityExecutionListInfo\DC2\US\n\
      \\vactivity_id\CAN\SOH \SOH(\tR\n\
      \activityId\DC2\NAK\n\
      \\ACKrun_id\CAN\STX \SOH(\tR\ENQrunId\DC2I\n\
      \\ractivity_type\CAN\ETX \SOH(\v2$.temporal.api.common.v1.ActivityTypeR\factivityType\DC2?\n\
      \\rschedule_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\fscheduleTime\DC29\n\
      \\n\
      \close_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\tcloseTime\DC2F\n\
      \\ACKstatus\CAN\ACK \SOH(\SO2..temporal.api.enums.v1.ActivityExecutionStatusR\ACKstatus\DC2U\n\
      \\DC1search_attributes\CAN\a \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC2\GS\n\
      \\n\
      \task_queue\CAN\b \SOH(\tR\ttaskQueue\DC24\n\
      \\SYNstate_transition_count\CAN\t \SOH(\ETXR\DC4stateTransitionCount\DC2(\n\
      \\DLEstate_size_bytes\CAN\n\
      \ \SOH(\ETXR\SOstateSizeBytes\DC2H\n\
      \\DC2execution_duration\CAN\v \SOH(\v2\EM.google.protobuf.DurationR\DC1executionDuration"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        activityId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"activityId")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        runId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "run_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"runId")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        activityType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "activity_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.ActivityType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'activityType")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        scheduleTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        closeTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "close_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'closeTime")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Enums.V1.Activity.ActivityExecutionStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        searchAttributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "search_attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.SearchAttributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'searchAttributes")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        taskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"taskQueue")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        stateTransitionCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_transition_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateTransitionCount")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        stateSizeBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state_size_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stateSizeBytes")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
        executionDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "execution_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'executionDuration")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionListInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, activityId__field_descriptor),
           (Data.ProtoLens.Tag 2, runId__field_descriptor),
           (Data.ProtoLens.Tag 3, activityType__field_descriptor),
           (Data.ProtoLens.Tag 4, scheduleTime__field_descriptor),
           (Data.ProtoLens.Tag 5, closeTime__field_descriptor),
           (Data.ProtoLens.Tag 6, status__field_descriptor),
           (Data.ProtoLens.Tag 7, searchAttributes__field_descriptor),
           (Data.ProtoLens.Tag 8, taskQueue__field_descriptor),
           (Data.ProtoLens.Tag 9, stateTransitionCount__field_descriptor),
           (Data.ProtoLens.Tag 10, stateSizeBytes__field_descriptor),
           (Data.ProtoLens.Tag 11, executionDuration__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivityExecutionListInfo'_unknownFields
        (\ x__ y__
           -> x__ {_ActivityExecutionListInfo'_unknownFields = y__})
  defMessage
    = ActivityExecutionListInfo'_constructor
        {_ActivityExecutionListInfo'activityId = Data.ProtoLens.fieldDefault,
         _ActivityExecutionListInfo'runId = Data.ProtoLens.fieldDefault,
         _ActivityExecutionListInfo'activityType = Prelude.Nothing,
         _ActivityExecutionListInfo'scheduleTime = Prelude.Nothing,
         _ActivityExecutionListInfo'closeTime = Prelude.Nothing,
         _ActivityExecutionListInfo'status = Data.ProtoLens.fieldDefault,
         _ActivityExecutionListInfo'searchAttributes = Prelude.Nothing,
         _ActivityExecutionListInfo'taskQueue = Data.ProtoLens.fieldDefault,
         _ActivityExecutionListInfo'stateTransitionCount = Data.ProtoLens.fieldDefault,
         _ActivityExecutionListInfo'stateSizeBytes = Data.ProtoLens.fieldDefault,
         _ActivityExecutionListInfo'executionDuration = Prelude.Nothing,
         _ActivityExecutionListInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivityExecutionListInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser ActivityExecutionListInfo
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
                                       "activity_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"activityId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "run_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"runId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "activity_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activityType") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleTime") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "close_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"closeTime") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "search_attributes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"searchAttributes") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "task_queue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskQueue") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state_transition_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stateTransitionCount") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state_size_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stateSizeBytes") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "execution_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"executionDuration") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActivityExecutionListInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"activityId") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"runId") _x
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
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'activityType") _x
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
                             (Data.ProtoLens.Field.field @"maybe'scheduleTime") _x
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
                                (Data.ProtoLens.Field.field @"maybe'closeTime") _x
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
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral)
                                        Prelude.fromEnum _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'searchAttributes") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
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
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"taskQueue") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((Prelude..)
                                              (\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Data.Text.Encoding.encodeUtf8 _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"stateTransitionCount")
                                              _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"stateSizeBytes") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                 ((Prelude..)
                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    Prelude.fromIntegral _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'executionDuration")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                     ((Prelude..)
                                                        (\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                        Data.ProtoLens.encodeMessage _v))
                                           (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                              (Lens.Family2.view
                                                 Data.ProtoLens.unknownFields _x))))))))))))
instance Control.DeepSeq.NFData ActivityExecutionListInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivityExecutionListInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ActivityExecutionListInfo'activityId x__)
                (Control.DeepSeq.deepseq
                   (_ActivityExecutionListInfo'runId x__)
                   (Control.DeepSeq.deepseq
                      (_ActivityExecutionListInfo'activityType x__)
                      (Control.DeepSeq.deepseq
                         (_ActivityExecutionListInfo'scheduleTime x__)
                         (Control.DeepSeq.deepseq
                            (_ActivityExecutionListInfo'closeTime x__)
                            (Control.DeepSeq.deepseq
                               (_ActivityExecutionListInfo'status x__)
                               (Control.DeepSeq.deepseq
                                  (_ActivityExecutionListInfo'searchAttributes x__)
                                  (Control.DeepSeq.deepseq
                                     (_ActivityExecutionListInfo'taskQueue x__)
                                     (Control.DeepSeq.deepseq
                                        (_ActivityExecutionListInfo'stateTransitionCount x__)
                                        (Control.DeepSeq.deepseq
                                           (_ActivityExecutionListInfo'stateSizeBytes x__)
                                           (Control.DeepSeq.deepseq
                                              (_ActivityExecutionListInfo'executionDuration x__)
                                              ())))))))))))
{- | Fields :
     
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'value' @:: Lens' ActivityExecutionOutcome (Prelude.Maybe ActivityExecutionOutcome'Value)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'result' @:: Lens' ActivityExecutionOutcome (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.result' @:: Lens' ActivityExecutionOutcome Proto.Temporal.Api.Common.V1.Message.Payloads@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'failure' @:: Lens' ActivityExecutionOutcome (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.failure' @:: Lens' ActivityExecutionOutcome Proto.Temporal.Api.Failure.V1.Message.Failure@ -}
data ActivityExecutionOutcome
  = ActivityExecutionOutcome'_constructor {_ActivityExecutionOutcome'value :: !(Prelude.Maybe ActivityExecutionOutcome'Value),
                                           _ActivityExecutionOutcome'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivityExecutionOutcome where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ActivityExecutionOutcome'Value
  = ActivityExecutionOutcome'Result !Proto.Temporal.Api.Common.V1.Message.Payloads |
    ActivityExecutionOutcome'Failure !Proto.Temporal.Api.Failure.V1.Message.Failure
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ActivityExecutionOutcome "maybe'value" (Prelude.Maybe ActivityExecutionOutcome'Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionOutcome'value
           (\ x__ y__ -> x__ {_ActivityExecutionOutcome'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityExecutionOutcome "maybe'result" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Payloads) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionOutcome'value
           (\ x__ y__ -> x__ {_ActivityExecutionOutcome'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ActivityExecutionOutcome'Result x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ActivityExecutionOutcome'Result y__))
instance Data.ProtoLens.Field.HasField ActivityExecutionOutcome "result" Proto.Temporal.Api.Common.V1.Message.Payloads where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionOutcome'value
           (\ x__ y__ -> x__ {_ActivityExecutionOutcome'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ActivityExecutionOutcome'Result x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ActivityExecutionOutcome'Result y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ActivityExecutionOutcome "maybe'failure" (Prelude.Maybe Proto.Temporal.Api.Failure.V1.Message.Failure) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionOutcome'value
           (\ x__ y__ -> x__ {_ActivityExecutionOutcome'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ActivityExecutionOutcome'Failure x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ActivityExecutionOutcome'Failure y__))
instance Data.ProtoLens.Field.HasField ActivityExecutionOutcome "failure" Proto.Temporal.Api.Failure.V1.Message.Failure where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityExecutionOutcome'value
           (\ x__ y__ -> x__ {_ActivityExecutionOutcome'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ActivityExecutionOutcome'Failure x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ActivityExecutionOutcome'Failure y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ActivityExecutionOutcome where
  messageName _
    = Data.Text.pack
        "temporal.api.activity.v1.ActivityExecutionOutcome"
  packedMessageDescriptor _
    = "\n\
      \\CANActivityExecutionOutcome\DC2:\n\
      \\ACKresult\CAN\SOH \SOH(\v2 .temporal.api.common.v1.PayloadsH\NULR\ACKresult\DC2<\n\
      \\afailure\CAN\STX \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\afailureB\a\n\
      \\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Payloads)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'result")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionOutcome
        failure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Failure.V1.Message.Failure)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'failure")) ::
              Data.ProtoLens.FieldDescriptor ActivityExecutionOutcome
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, result__field_descriptor),
           (Data.ProtoLens.Tag 2, failure__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivityExecutionOutcome'_unknownFields
        (\ x__ y__ -> x__ {_ActivityExecutionOutcome'_unknownFields = y__})
  defMessage
    = ActivityExecutionOutcome'_constructor
        {_ActivityExecutionOutcome'value = Prelude.Nothing,
         _ActivityExecutionOutcome'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivityExecutionOutcome
          -> Data.ProtoLens.Encoding.Bytes.Parser ActivityExecutionOutcome
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
                                       "result"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"result") y x)
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
          (do loop Data.ProtoLens.defMessage) "ActivityExecutionOutcome"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ActivityExecutionOutcome'Result v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (ActivityExecutionOutcome'Failure v))
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
instance Control.DeepSeq.NFData ActivityExecutionOutcome where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivityExecutionOutcome'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ActivityExecutionOutcome'value x__) ())
instance Control.DeepSeq.NFData ActivityExecutionOutcome'Value where
  rnf (ActivityExecutionOutcome'Result x__) = Control.DeepSeq.rnf x__
  rnf (ActivityExecutionOutcome'Failure x__)
    = Control.DeepSeq.rnf x__
_ActivityExecutionOutcome'Result ::
  Data.ProtoLens.Prism.Prism' ActivityExecutionOutcome'Value Proto.Temporal.Api.Common.V1.Message.Payloads
_ActivityExecutionOutcome'Result
  = Data.ProtoLens.Prism.prism'
      ActivityExecutionOutcome'Result
      (\ p__
         -> case p__ of
              (ActivityExecutionOutcome'Result p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ActivityExecutionOutcome'Failure ::
  Data.ProtoLens.Prism.Prism' ActivityExecutionOutcome'Value Proto.Temporal.Api.Failure.V1.Message.Failure
_ActivityExecutionOutcome'Failure
  = Data.ProtoLens.Prism.prism'
      ActivityExecutionOutcome'Failure
      (\ p__
         -> case p__ of
              (ActivityExecutionOutcome'Failure p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.taskQueue' @:: Lens' ActivityOptions Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'taskQueue' @:: Lens' ActivityOptions (Prelude.Maybe Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.scheduleToCloseTimeout' @:: Lens' ActivityOptions Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'scheduleToCloseTimeout' @:: Lens' ActivityOptions (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.scheduleToStartTimeout' @:: Lens' ActivityOptions Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'scheduleToStartTimeout' @:: Lens' ActivityOptions (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.startToCloseTimeout' @:: Lens' ActivityOptions Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'startToCloseTimeout' @:: Lens' ActivityOptions (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.heartbeatTimeout' @:: Lens' ActivityOptions Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'heartbeatTimeout' @:: Lens' ActivityOptions (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.retryPolicy' @:: Lens' ActivityOptions Proto.Temporal.Api.Common.V1.Message.RetryPolicy@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'retryPolicy' @:: Lens' ActivityOptions (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy)@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.priority' @:: Lens' ActivityOptions Proto.Temporal.Api.Common.V1.Message.Priority@
         * 'Proto.Temporal.Api.Activity.V1.Message_Fields.maybe'priority' @:: Lens' ActivityOptions (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority)@ -}
data ActivityOptions
  = ActivityOptions'_constructor {_ActivityOptions'taskQueue :: !(Prelude.Maybe Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue),
                                  _ActivityOptions'scheduleToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _ActivityOptions'scheduleToStartTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _ActivityOptions'startToCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _ActivityOptions'heartbeatTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _ActivityOptions'retryPolicy :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy),
                                  _ActivityOptions'priority :: !(Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority),
                                  _ActivityOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActivityOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ActivityOptions "taskQueue" Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'taskQueue
           (\ x__ y__ -> x__ {_ActivityOptions'taskQueue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityOptions "maybe'taskQueue" (Prelude.Maybe Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'taskQueue
           (\ x__ y__ -> x__ {_ActivityOptions'taskQueue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityOptions "scheduleToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'scheduleToCloseTimeout
           (\ x__ y__ -> x__ {_ActivityOptions'scheduleToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityOptions "maybe'scheduleToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'scheduleToCloseTimeout
           (\ x__ y__ -> x__ {_ActivityOptions'scheduleToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityOptions "scheduleToStartTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'scheduleToStartTimeout
           (\ x__ y__ -> x__ {_ActivityOptions'scheduleToStartTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityOptions "maybe'scheduleToStartTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'scheduleToStartTimeout
           (\ x__ y__ -> x__ {_ActivityOptions'scheduleToStartTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityOptions "startToCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'startToCloseTimeout
           (\ x__ y__ -> x__ {_ActivityOptions'startToCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityOptions "maybe'startToCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'startToCloseTimeout
           (\ x__ y__ -> x__ {_ActivityOptions'startToCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityOptions "heartbeatTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'heartbeatTimeout
           (\ x__ y__ -> x__ {_ActivityOptions'heartbeatTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityOptions "maybe'heartbeatTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'heartbeatTimeout
           (\ x__ y__ -> x__ {_ActivityOptions'heartbeatTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityOptions "retryPolicy" Proto.Temporal.Api.Common.V1.Message.RetryPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'retryPolicy
           (\ x__ y__ -> x__ {_ActivityOptions'retryPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityOptions "maybe'retryPolicy" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.RetryPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'retryPolicy
           (\ x__ y__ -> x__ {_ActivityOptions'retryPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActivityOptions "priority" Proto.Temporal.Api.Common.V1.Message.Priority where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'priority
           (\ x__ y__ -> x__ {_ActivityOptions'priority = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ActivityOptions "maybe'priority" (Prelude.Maybe Proto.Temporal.Api.Common.V1.Message.Priority) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActivityOptions'priority
           (\ x__ y__ -> x__ {_ActivityOptions'priority = y__}))
        Prelude.id
instance Data.ProtoLens.Message ActivityOptions where
  messageName _
    = Data.Text.pack "temporal.api.activity.v1.ActivityOptions"
  packedMessageDescriptor _
    = "\n\
      \\SIActivityOptions\DC2C\n\
      \\n\
      \task_queue\CAN\SOH \SOH(\v2$.temporal.api.taskqueue.v1.TaskQueueR\ttaskQueue\DC2T\n\
      \\EMschedule_to_close_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2T\n\
      \\EMschedule_to_start_timeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
      \\SYNstart_to_close_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2F\n\
      \\DC1heartbeat_timeout\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\DLEheartbeatTimeout\DC2F\n\
      \\fretry_policy\CAN\ACK \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2<\n\
      \\bpriority\CAN\a \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        taskQueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_queue"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Taskqueue.V1.Message.TaskQueue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'taskQueue")) ::
              Data.ProtoLens.FieldDescriptor ActivityOptions
        scheduleToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ActivityOptions
        scheduleToStartTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schedule_to_start_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout")) ::
              Data.ProtoLens.FieldDescriptor ActivityOptions
        startToCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_to_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startToCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor ActivityOptions
        heartbeatTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heartbeat_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heartbeatTimeout")) ::
              Data.ProtoLens.FieldDescriptor ActivityOptions
        retryPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.RetryPolicy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retryPolicy")) ::
              Data.ProtoLens.FieldDescriptor ActivityOptions
        priority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Temporal.Api.Common.V1.Message.Priority)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'priority")) ::
              Data.ProtoLens.FieldDescriptor ActivityOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, taskQueue__field_descriptor),
           (Data.ProtoLens.Tag 2, scheduleToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 3, scheduleToStartTimeout__field_descriptor),
           (Data.ProtoLens.Tag 4, startToCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 5, heartbeatTimeout__field_descriptor),
           (Data.ProtoLens.Tag 6, retryPolicy__field_descriptor),
           (Data.ProtoLens.Tag 7, priority__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActivityOptions'_unknownFields
        (\ x__ y__ -> x__ {_ActivityOptions'_unknownFields = y__})
  defMessage
    = ActivityOptions'_constructor
        {_ActivityOptions'taskQueue = Prelude.Nothing,
         _ActivityOptions'scheduleToCloseTimeout = Prelude.Nothing,
         _ActivityOptions'scheduleToStartTimeout = Prelude.Nothing,
         _ActivityOptions'startToCloseTimeout = Prelude.Nothing,
         _ActivityOptions'heartbeatTimeout = Prelude.Nothing,
         _ActivityOptions'retryPolicy = Prelude.Nothing,
         _ActivityOptions'priority = Prelude.Nothing,
         _ActivityOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActivityOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser ActivityOptions
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
                                       "task_queue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskQueue") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToCloseTimeout") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "schedule_to_start_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scheduleToStartTimeout") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_to_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startToCloseTimeout") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "heartbeat_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"heartbeatTimeout") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "retry_policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryPolicy") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "priority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priority") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActivityOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'taskQueue") _x
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'scheduleToCloseTimeout") _x
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
                          (Data.ProtoLens.Field.field @"maybe'scheduleToStartTimeout") _x
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
                             (Data.ProtoLens.Field.field @"maybe'startToCloseTimeout") _x
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
                                (Data.ProtoLens.Field.field @"maybe'heartbeatTimeout") _x
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
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'retryPolicy") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'priority") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
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
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData ActivityOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActivityOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ActivityOptions'taskQueue x__)
                (Control.DeepSeq.deepseq
                   (_ActivityOptions'scheduleToCloseTimeout x__)
                   (Control.DeepSeq.deepseq
                      (_ActivityOptions'scheduleToStartTimeout x__)
                      (Control.DeepSeq.deepseq
                         (_ActivityOptions'startToCloseTimeout x__)
                         (Control.DeepSeq.deepseq
                            (_ActivityOptions'heartbeatTimeout x__)
                            (Control.DeepSeq.deepseq
                               (_ActivityOptions'retryPolicy x__)
                               (Control.DeepSeq.deepseq (_ActivityOptions'priority x__) ())))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&temporal/api/activity/v1/message.proto\DC2\CANtemporal.api.activity.v1\SUB\RSgoogle/protobuf/duration.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB$temporal/api/common/v1/message.proto\SUB(temporal/api/deployment/v1/message.proto\SUB$temporal/api/enums/v1/activity.proto\SUB$temporal/api/enums/v1/workflow.proto\SUB%temporal/api/failure/v1/message.proto\SUB'temporal/api/taskqueue/v1/message.proto\SUB'temporal/api/sdk/v1/user_metadata.proto\"\157\SOH\n\
    \\CANActivityExecutionOutcome\DC2:\n\
    \\ACKresult\CAN\SOH \SOH(\v2 .temporal.api.common.v1.PayloadsH\NULR\ACKresult\DC2<\n\
    \\afailure\CAN\STX \SOH(\v2 .temporal.api.failure.v1.FailureH\NULR\afailureB\a\n\
    \\ENQvalue\"\160\EOT\n\
    \\SIActivityOptions\DC2C\n\
    \\n\
    \task_queue\CAN\SOH \SOH(\v2$.temporal.api.taskqueue.v1.TaskQueueR\ttaskQueue\DC2T\n\
    \\EMschedule_to_close_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2T\n\
    \\EMschedule_to_start_timeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
    \\SYNstart_to_close_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2F\n\
    \\DC1heartbeat_timeout\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\DLEheartbeatTimeout\DC2F\n\
    \\fretry_policy\CAN\ACK \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2<\n\
    \\bpriority\CAN\a \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority\"\228\DLE\n\
    \\NAKActivityExecutionInfo\DC2\US\n\
    \\vactivity_id\CAN\SOH \SOH(\tR\n\
    \activityId\DC2\NAK\n\
    \\ACKrun_id\CAN\STX \SOH(\tR\ENQrunId\DC2I\n\
    \\ractivity_type\CAN\ETX \SOH(\v2$.temporal.api.common.v1.ActivityTypeR\factivityType\DC2F\n\
    \\ACKstatus\CAN\EOT \SOH(\SO2..temporal.api.enums.v1.ActivityExecutionStatusR\ACKstatus\DC2H\n\
    \\trun_state\CAN\ENQ \SOH(\SO2+.temporal.api.enums.v1.PendingActivityStateR\brunState\DC2\GS\n\
    \\n\
    \task_queue\CAN\ACK \SOH(\tR\ttaskQueue\DC2T\n\
    \\EMschedule_to_close_timeout\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToCloseTimeout\DC2T\n\
    \\EMschedule_to_start_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\SYNscheduleToStartTimeout\DC2N\n\
    \\SYNstart_to_close_timeout\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\DC3startToCloseTimeout\DC2F\n\
    \\DC1heartbeat_timeout\CAN\n\
    \ \SOH(\v2\EM.google.protobuf.DurationR\DLEheartbeatTimeout\DC2F\n\
    \\fretry_policy\CAN\v \SOH(\v2#.temporal.api.common.v1.RetryPolicyR\vretryPolicy\DC2M\n\
    \\DC1heartbeat_details\CAN\f \SOH(\v2 .temporal.api.common.v1.PayloadsR\DLEheartbeatDetails\DC2J\n\
    \\DC3last_heartbeat_time\CAN\r \SOH(\v2\SUB.google.protobuf.TimestampR\DC1lastHeartbeatTime\DC2F\n\
    \\DC1last_started_time\CAN\SO \SOH(\v2\SUB.google.protobuf.TimestampR\SIlastStartedTime\DC2\CAN\n\
    \\aattempt\CAN\SI \SOH(\ENQR\aattempt\DC2H\n\
    \\DC2execution_duration\CAN\DLE \SOH(\v2\EM.google.protobuf.DurationR\DC1executionDuration\DC2?\n\
    \\rschedule_time\CAN\DC1 \SOH(\v2\SUB.google.protobuf.TimestampR\fscheduleTime\DC2C\n\
    \\SIexpiration_time\CAN\DC2 \SOH(\v2\SUB.google.protobuf.TimestampR\SOexpirationTime\DC29\n\
    \\n\
    \close_time\CAN\DC3 \SOH(\v2\SUB.google.protobuf.TimestampR\tcloseTime\DC2C\n\
    \\flast_failure\CAN\DC4 \SOH(\v2 .temporal.api.failure.v1.FailureR\vlastFailure\DC20\n\
    \\DC4last_worker_identity\CAN\NAK \SOH(\tR\DC2lastWorkerIdentity\DC2O\n\
    \\SYNcurrent_retry_interval\CAN\SYN \SOH(\v2\EM.google.protobuf.DurationR\DC4currentRetryInterval\DC2W\n\
    \\SUBlast_attempt_complete_time\CAN\ETB \SOH(\v2\SUB.google.protobuf.TimestampR\ETBlastAttemptCompleteTime\DC2W\n\
    \\SUBnext_attempt_schedule_time\CAN\CAN \SOH(\v2\SUB.google.protobuf.TimestampR\ETBnextAttemptScheduleTime\DC2k\n\
    \\ETBlast_deployment_version\CAN\EM \SOH(\v23.temporal.api.deployment.v1.WorkerDeploymentVersionR\NAKlastDeploymentVersion\DC2<\n\
    \\bpriority\CAN\SUB \SOH(\v2 .temporal.api.common.v1.PriorityR\bpriority\DC24\n\
    \\SYNstate_transition_count\CAN\ESC \SOH(\ETXR\DC4stateTransitionCount\DC2(\n\
    \\DLEstate_size_bytes\CAN\FS \SOH(\ETXR\SOstateSizeBytes\DC2U\n\
    \\DC1search_attributes\CAN\GS \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC26\n\
    \\ACKheader\CAN\RS \SOH(\v2\RS.temporal.api.common.v1.HeaderR\ACKheader\DC2F\n\
    \\ruser_metadata\CAN\US \SOH(\v2!.temporal.api.sdk.v1.UserMetadataR\fuserMetadata\DC2'\n\
    \\SIcanceled_reason\CAN  \SOH(\tR\SOcanceledReason\"\130\ENQ\n\
    \\EMActivityExecutionListInfo\DC2\US\n\
    \\vactivity_id\CAN\SOH \SOH(\tR\n\
    \activityId\DC2\NAK\n\
    \\ACKrun_id\CAN\STX \SOH(\tR\ENQrunId\DC2I\n\
    \\ractivity_type\CAN\ETX \SOH(\v2$.temporal.api.common.v1.ActivityTypeR\factivityType\DC2?\n\
    \\rschedule_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\fscheduleTime\DC29\n\
    \\n\
    \close_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\tcloseTime\DC2F\n\
    \\ACKstatus\CAN\ACK \SOH(\SO2..temporal.api.enums.v1.ActivityExecutionStatusR\ACKstatus\DC2U\n\
    \\DC1search_attributes\CAN\a \SOH(\v2(.temporal.api.common.v1.SearchAttributesR\DLEsearchAttributes\DC2\GS\n\
    \\n\
    \task_queue\CAN\b \SOH(\tR\ttaskQueue\DC24\n\
    \\SYNstate_transition_count\CAN\t \SOH(\ETXR\DC4stateTransitionCount\DC2(\n\
    \\DLEstate_size_bytes\CAN\n\
    \ \SOH(\ETXR\SOstateSizeBytes\DC2H\n\
    \\DC2execution_duration\CAN\v \SOH(\v2\EM.google.protobuf.DurationR\DC1executionDurationB\147\SOH\n\
    \\ESCio.temporal.api.activity.v1B\fMessageProtoP\SOHZ'go.temporal.io/api/activity/v1;activity\170\STX\SUBTemporalio.Api.Activity.V1\234\STX\GSTemporalio::Api::Activity::V1J\128H\n\
    \\a\DC2\ENQ\NUL\NUL\196\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL>\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\EOT\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL4\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ENQ\NUL4\n\
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
    \\SOH\b\DC2\ETX\b\NUL6\n\
    \\t\n\
    \\STX\b-\DC2\ETX\b\NUL6\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL7\n\
    \\t\n\
    \\STX\b%\DC2\ETX\t\NUL7\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\v\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\f\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\SO\NUL.\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\SI\NUL2\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\DLE\NUL.\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\DC1\NUL.\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\DC2\NUL/\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\DC3\NUL1\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\DC4\NUL1\n\
    \e\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL\RS\SOH\SUBY The outcome of a completed activity execution: either a successful result or a failure.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b \n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\CAN\EOT\GS\ENQ\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\CAN\n\
    \\SI\n\
    \A\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\b3\SUB4 The result if the activity completed successfully.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\SUB\b'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB(.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB12\n\
    \D\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\FS\b4\SUB7 The failure if the activity completed unsuccessfully.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\FS\b'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\FS(/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\FS23\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT \NUL@\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX \b\ETB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX!\EOT7\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX!\EOT'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX!(2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX!56\n\
    \\186\STX\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX(\EOT;\SUB\172\STX Indicates how long the caller is willing to wait for an activity completion. Limits how long\n\
    \ retries will be attempted. Either this or `start_to_close_timeout` must be specified.\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX(\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX(\GS6\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX(9:\n\
    \\158\ETX\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX0\EOT;\SUB\144\ETX Limits time an activity task can stay in a task queue before a worker picks it up. This\n\
    \ timeout is always non retryable, as all a retry would achieve is to put it back into the same\n\
    \ queue. Defaults to `schedule_to_close_timeout` or workflow execution timeout if not\n\
    \ specified.\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX0\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX0\GS6\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX09:\n\
    \\186\STX\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX7\EOT8\SUB\172\STX Maximum time an activity is allowed to execute after being picked up by a worker. This\n\
    \ timeout is always retryable. Either this or `schedule_to_close_timeout` must be\n\
    \ specified.\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETX7\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX7\GS3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX767\n\
    \K\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX9\EOT3\SUB> Maximum permitted time between successful worker heartbeats.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETX9\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX9\GS.\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX912\n\
    \`\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX;\EOT8\SUBS The retry policy for the activity. Will never exceed `schedule_to_close_timeout`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\ETX;\EOT&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX;'3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX;67\n\
    \\140\SOH\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETX?\EOT1\SUB\DEL Priority metadata. If this message is not present, or any fields are not\n\
    \ present, they inherit the values from the workflow.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\ETX?\EOT#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETX?$,\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETX?/0\n\
    \7\n\
    \\STX\EOT\STX\DC2\ENQC\NUL\163\SOH\SOH\SUB* Information about a standalone activity.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXC\b\GS\n\
    \a\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXE\EOT\ESC\SUBT Unique identifier of this activity within its namespace along with run ID (below).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXE\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXE\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXE\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXF\EOT\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXF\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXF\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXF\DC4\NAK\n\
    \a\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETXI\EOT:\SUBT The type of the activity, a string that maps to a registered activity on a worker.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETXI\EOT'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXI(5\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXI89\n\
    \\128\SOH\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETXK\EOT=\SUBs A general status for this activity, indicates whether it is currently running or in one of the terminal statuses.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETXK\EOT1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETXK28\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETXK;<\n\
    \L\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETXM\EOT=\SUB? More detailed breakdown of ACTIVITY_EXECUTION_STATUS_RUNNING.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\ETXM\EOT.\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETXM/8\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETXM;<\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETXO\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\ETXO\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETXO\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETXO\CAN\EM\n\
    \\255\SOH\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETXV\EOT;\SUB\241\SOH Indicates how long the caller is willing to wait for an activity completion. Limits how long\n\
    \ retries will be attempted.\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ACK\DC2\ETXV\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETXV\GS6\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETXV9:\n\
    \\238\STX\n\
    \\EOT\EOT\STX\STX\a\DC2\ETX]\EOT;\SUB\224\STX Limits time an activity task can stay in a task queue before a worker picks it up. This\n\
    \ timeout is always non retryable, as all a retry would achieve is to put it back into the same\n\
    \ queue. Defaults to `schedule_to_close_timeout`.\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ACK\DC2\ETX]\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\ETX]\GS6\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\ETX]9:\n\
    \\137\STX\n\
    \\EOT\EOT\STX\STX\b\DC2\ETXc\EOT8\SUB\251\SOH Maximum time a single activity attempt is allowed to execute after being picked up by a worker. This\n\
    \ timeout is always retryable.\n\
    \\n\
    \ (-- api-linter: core::0140::prepositions=disabled\n\
    \     aip.dev/not-precedent: \"to\" is used to indicate interval. --)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\ACK\DC2\ETXc\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\SOH\DC2\ETXc\GS3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\ETX\DC2\ETXc67\n\
    \K\n\
    \\EOT\EOT\STX\STX\t\DC2\ETXf\EOT4\SUB> Maximum permitted time between successful worker heartbeats.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\ACK\DC2\ETXf\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\SOH\DC2\ETXf\GS.\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\ETX\DC2\ETXf13\n\
    \`\n\
    \\EOT\EOT\STX\STX\n\
    \\DC2\ETXi\EOT9\SUBS The retry policy for the activity. Will never exceed `schedule_to_close_timeout`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\ACK\DC2\ETXi\EOT&\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\SOH\DC2\ETXi'3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\ETX\DC2\ETXi68\n\
    \H\n\
    \\EOT\EOT\STX\STX\v\DC2\ETXl\EOT;\SUB; Details provided in the last recorded activity heartbeat.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\ACK\DC2\ETXl\EOT#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\SOH\DC2\ETXl$5\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\ETX\DC2\ETXl8:\n\
    \4\n\
    \\EOT\EOT\STX\STX\f\DC2\ETXn\EOT7\SUB' Time the last heartbeat was recorded.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\ACK\DC2\ETXn\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\SOH\DC2\ETXn\RS1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\ETX\DC2\ETXn46\n\
    \1\n\
    \\EOT\EOT\STX\STX\r\DC2\ETXp\EOT5\SUB$ Time the last attempt was started.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\r\ACK\DC2\ETXp\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\r\SOH\DC2\ETXp\RS/\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\r\ETX\DC2\ETXp24\n\
    \k\n\
    \\EOT\EOT\STX\STX\SO\DC2\ETXr\EOT\ETB\SUB^ The attempt this activity is currently on. Incremented each time a new attempt is scheduled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SO\ENQ\DC2\ETXr\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SO\SOH\DC2\ETXr\n\
    \\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SO\ETX\DC2\ETXr\DC4\SYN\n\
    \p\n\
    \\EOT\EOT\STX\STX\SI\DC2\ETXt\EOT5\SUBc How long this activity has been running for, including all attempts and backoff between attempts.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SI\ACK\DC2\ETXt\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SI\SOH\DC2\ETXt\GS/\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SI\ETX\DC2\ETXt24\n\
    \_\n\
    \\EOT\EOT\STX\STX\DLE\DC2\ETXv\EOT1\SUBR Time the activity was originally scheduled via a StartActivityExecution request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DLE\ACK\DC2\ETXv\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DLE\SOH\DC2\ETXv\RS+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DLE\ETX\DC2\ETXv.0\n\
    \:\n\
    \\EOT\EOT\STX\STX\DC1\DC2\ETXx\EOT3\SUB- Scheduled time + schedule to close timeout.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC1\ACK\DC2\ETXx\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC1\SOH\DC2\ETXx\RS-\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC1\ETX\DC2\ETXx02\n\
    \E\n\
    \\EOT\EOT\STX\STX\DC2\DC2\ETXz\EOT.\SUB8 Time when the activity transitioned to a closed state.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC2\ACK\DC2\ETXz\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC2\SOH\DC2\ETXz\RS(\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC2\ETX\DC2\ETXz+-\n\
    \<\n\
    \\EOT\EOT\STX\STX\DC3\DC2\ETX}\EOT6\SUB/ Failure details from the last failed attempt.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC3\ACK\DC2\ETX}\EOT#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC3\SOH\DC2\ETX}$0\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC3\ETX\DC2\ETX}35\n\
    \\v\n\
    \\EOT\EOT\STX\STX\DC4\DC2\ETX~\EOT%\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC4\ENQ\DC2\ETX~\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC4\SOH\DC2\ETX~\v\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC4\ETX\DC2\ETX~\"$\n\
    \\138\EOT\n\
    \\EOT\EOT\STX\STX\NAK\DC2\EOT\134\SOH\EOT9\SUB\251\ETX Time from the last attempt failure to the next activity retry.\n\
    \ If the activity is currently running, this represents the next retry interval in case the attempt fails.\n\
    \ If activity is currently backing off between attempt, this represents the current retry interval.\n\
    \ If there is no next retry allowed, this field will be null.\n\
    \ This interval is typically calculated from the specified retry policy, but may be modified if an activity fails\n\
    \ with a retryable application failure specifying a retry delay.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NAK\ACK\DC2\EOT\134\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NAK\SOH\DC2\EOT\134\SOH\GS3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NAK\ETX\DC2\EOT\134\SOH68\n\
    \{\n\
    \\EOT\EOT\STX\STX\SYN\DC2\EOT\137\SOH\EOT>\SUBm The time when the last activity attempt completed. If activity has not been completed yet, it will be null.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SYN\ACK\DC2\EOT\137\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SYN\SOH\DC2\EOT\137\SOH\RS8\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SYN\ETX\DC2\EOT\137\SOH;=\n\
    \\148\SOH\n\
    \\EOT\EOT\STX\STX\ETB\DC2\EOT\141\SOH\EOT>\SUB\133\SOH The time when the next activity attempt will be scheduled.\n\
    \ If activity is currently scheduled or started, this field will be null.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETB\ACK\DC2\EOT\141\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETB\SOH\DC2\EOT\141\SOH\RS8\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETB\ETX\DC2\EOT\141\SOH;=\n\
    \\192\SOH\n\
    \\EOT\EOT\STX\STX\CAN\DC2\EOT\145\SOH\EOTT\SUB\177\SOH The Worker Deployment Version this activity was dispatched to most recently.\n\
    \ If nil, the activity has not yet been dispatched or was last dispatched to an unversioned worker.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\CAN\ACK\DC2\EOT\145\SOH\EOT6\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\CAN\SOH\DC2\EOT\145\SOH7N\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\CAN\ETX\DC2\EOT\145\SOHQS\n\
    \\"\n\
    \\EOT\EOT\STX\STX\EM\DC2\EOT\148\SOH\EOT2\SUB\DC4 Priority metadata.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EM\ACK\DC2\EOT\148\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EM\SOH\DC2\EOT\148\SOH$,\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EM\ETX\DC2\EOT\148\SOH/1\n\
    \U\n\
    \\EOT\EOT\STX\STX\SUB\DC2\EOT\151\SOH\EOT&\SUBG Incremented each time the activity's state is mutated in persistence.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SUB\ENQ\DC2\EOT\151\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SUB\SOH\DC2\EOT\151\SOH\n\
    \ \n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SUB\ETX\DC2\EOT\151\SOH#%\n\
    \F\n\
    \\EOT\EOT\STX\STX\ESC\DC2\EOT\154\SOH\EOT \SUB8 Updated once on scheduled and once on terminal status.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ESC\ENQ\DC2\EOT\154\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ESC\SOH\DC2\EOT\154\SOH\n\
    \\SUB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ESC\ETX\DC2\EOT\154\SOH\GS\US\n\
    \\f\n\
    \\EOT\EOT\STX\STX\FS\DC2\EOT\156\SOH\EOTC\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\FS\ACK\DC2\EOT\156\SOH\EOT+\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\FS\SOH\DC2\EOT\156\SOH,=\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\FS\ETX\DC2\EOT\156\SOH@B\n\
    \\f\n\
    \\EOT\EOT\STX\STX\GS\DC2\EOT\157\SOH\EOT.\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\GS\ACK\DC2\EOT\157\SOH\EOT!\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\GS\SOH\DC2\EOT\157\SOH\"(\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\GS\ETX\DC2\EOT\157\SOH+-\n\
    \y\n\
    \\EOT\EOT\STX\STX\RS\DC2\EOT\159\SOH\EOT8\SUBk Metadata for use by user interfaces to display the fixed as-of-start summary and details of the activity.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\RS\ACK\DC2\EOT\159\SOH\EOT$\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\RS\SOH\DC2\EOT\159\SOH%2\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\RS\ETX\DC2\EOT\159\SOH57\n\
    \:\n\
    \\EOT\EOT\STX\STX\US\DC2\EOT\162\SOH\EOT \SUB, Set if activity cancelation was requested.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\US\ENQ\DC2\EOT\162\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\US\SOH\DC2\EOT\162\SOH\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\US\ETX\DC2\EOT\162\SOH\GS\US\n\
    \\248\SOH\n\
    \\STX\EOT\ETX\DC2\ACK\168\SOH\NUL\196\SOH\SOH\SUB\233\SOH Limited activity information returned in the list response.\n\
    \ When adding fields here, ensure that it is also present in ActivityExecutionInfo (note that it\n\
    \ may already be present in ActivityExecutionInfo but not at the top-level).\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\168\SOH\b!\n\
    \d\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\170\SOH\EOT\ESC\SUBV A unique identifier of this activity within its namespace along with run ID (below).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\170\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\170\SOH\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\170\SOH\EM\SUB\n\
    \6\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\172\SOH\EOT\SYN\SUB( The run ID of the standalone activity.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\EOT\172\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\172\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\172\SOH\DC4\NAK\n\
    \b\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOT\175\SOH\EOT:\SUBT The type of the activity, a string that maps to a registered activity on a worker.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\EOT\175\SOH\EOT'\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\EOT\175\SOH(5\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\EOT\175\SOH89\n\
    \`\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\EOT\177\SOH\EOT0\SUBR Time the activity was originally scheduled via a StartActivityExecution request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ACK\DC2\EOT\177\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\EOT\177\SOH\RS+\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\EOT\177\SOH./\n\
    \\129\SOH\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\EOT\179\SOH\EOT-\SUBs If the activity is in a terminal status, this field represents the time the activity transitioned to that status.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ACK\DC2\EOT\179\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\EOT\179\SOH\RS(\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\EOT\179\SOH+,\n\
    \\156\SOH\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\EOT\182\SOH\EOT=\SUB\141\SOH Only scheduled and terminal statuses appear here. More detailed information in PendingActivityInfo but not\n\
    \ available in the list response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\ACK\DC2\EOT\182\SOH\EOT1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\EOT\182\SOH28\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\EOT\182\SOH;<\n\
    \9\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\EOT\185\SOH\EOTB\SUB+ Search attributes from the start request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\ACK\DC2\EOT\185\SOH\EOT+\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\EOT\185\SOH,=\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\EOT\185\SOH@A\n\
    \\129\SOH\n\
    \\EOT\EOT\ETX\STX\a\DC2\EOT\188\SOH\EOT\SUB\SUBs The task queue this activity was scheduled on when it was originally started, updated on activity options update.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\ENQ\DC2\EOT\188\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\EOT\188\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\EOT\188\SOH\CAN\EM\n\
    \+\n\
    \\EOT\EOT\ETX\STX\b\DC2\EOT\190\SOH\EOT%\SUB\GS Updated on terminal status.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\b\ENQ\DC2\EOT\190\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\b\SOH\DC2\EOT\190\SOH\n\
    \ \n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\b\ETX\DC2\EOT\190\SOH#$\n\
    \F\n\
    \\EOT\EOT\ETX\STX\t\DC2\EOT\192\SOH\EOT \SUB8 Updated once on scheduled and once on terminal status.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\t\ENQ\DC2\EOT\192\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\t\SOH\DC2\EOT\192\SOH\n\
    \\SUB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\t\ETX\DC2\EOT\192\SOH\GS\US\n\
    \~\n\
    \\EOT\EOT\ETX\STX\n\
    \\DC2\EOT\195\SOH\EOT5\SUBp The difference between close time and scheduled time.\n\
    \ This field is only populated if the activity is closed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ACK\DC2\EOT\195\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\n\
    \\SOH\DC2\EOT\195\SOH\GS/\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ETX\DC2\EOT\195\SOH24b\ACKproto3"