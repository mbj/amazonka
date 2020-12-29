{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.Sum
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DynamoDB.Types.Sum where

import Network.AWS.Prelude

data AttributeAction
  = Add
  | Delete
  | Put
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText AttributeAction where
    parser = takeLowerText >>= \case
        "add" -> pure Add
        "delete" -> pure Delete
        "put" -> pure Put
        e -> fromTextError $ "Failure parsing AttributeAction from value: '" <> e
           <> "'. Accepted values: add, delete, put"

instance ToText AttributeAction where
    toText = \case
        Add -> "ADD"
        Delete -> "DELETE"
        Put -> "PUT"

instance Hashable     AttributeAction
instance NFData       AttributeAction
instance ToByteString AttributeAction
instance ToQuery      AttributeAction
instance ToHeader     AttributeAction

instance ToJSON AttributeAction where
    toJSON = toJSONText

data BackupStatus
  = Available
  | Creating
  | Deleted
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText BackupStatus where
    parser = takeLowerText >>= \case
        "available" -> pure Available
        "creating" -> pure Creating
        "deleted" -> pure Deleted
        e -> fromTextError $ "Failure parsing BackupStatus from value: '" <> e
           <> "'. Accepted values: available, creating, deleted"

instance ToText BackupStatus where
    toText = \case
        Available -> "AVAILABLE"
        Creating -> "CREATING"
        Deleted -> "DELETED"

instance Hashable     BackupStatus
instance NFData       BackupStatus
instance ToByteString BackupStatus
instance ToQuery      BackupStatus
instance ToHeader     BackupStatus

instance FromJSON BackupStatus where
    parseJSON = parseJSONText "BackupStatus"

data BackupType
  = AWSBackup
  | System
  | User
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText BackupType where
    parser = takeLowerText >>= \case
        "aws_backup" -> pure AWSBackup
        "system" -> pure System
        "user" -> pure User
        e -> fromTextError $ "Failure parsing BackupType from value: '" <> e
           <> "'. Accepted values: aws_backup, system, user"

instance ToText BackupType where
    toText = \case
        AWSBackup -> "AWS_BACKUP"
        System -> "SYSTEM"
        User -> "USER"

instance Hashable     BackupType
instance NFData       BackupType
instance ToByteString BackupType
instance ToQuery      BackupType
instance ToHeader     BackupType

instance FromJSON BackupType where
    parseJSON = parseJSONText "BackupType"

data BackupTypeFilter
  = BTFAWSBackup
  | BTFAll
  | BTFSystem
  | BTFUser
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText BackupTypeFilter where
    parser = takeLowerText >>= \case
        "aws_backup" -> pure BTFAWSBackup
        "all" -> pure BTFAll
        "system" -> pure BTFSystem
        "user" -> pure BTFUser
        e -> fromTextError $ "Failure parsing BackupTypeFilter from value: '" <> e
           <> "'. Accepted values: aws_backup, all, system, user"

instance ToText BackupTypeFilter where
    toText = \case
        BTFAWSBackup -> "AWS_BACKUP"
        BTFAll -> "ALL"
        BTFSystem -> "SYSTEM"
        BTFUser -> "USER"

instance Hashable     BackupTypeFilter
instance NFData       BackupTypeFilter
instance ToByteString BackupTypeFilter
instance ToQuery      BackupTypeFilter
instance ToHeader     BackupTypeFilter

instance ToJSON BackupTypeFilter where
    toJSON = toJSONText

data BatchStatementErrorCodeEnum
  = AccessDenied
  | ConditionalCheckFailed
  | DuplicateItem
  | InternalServerError
  | ItemCollectionSizeLimitExceeded
  | ProvisionedThroughputExceeded
  | RequestLimitExceeded
  | ResourceNotFound
  | ThrottlingError
  | TransactionConflict
  | ValidationError
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText BatchStatementErrorCodeEnum where
    parser = takeLowerText >>= \case
        "accessdenied" -> pure AccessDenied
        "conditionalcheckfailed" -> pure ConditionalCheckFailed
        "duplicateitem" -> pure DuplicateItem
        "internalservererror" -> pure InternalServerError
        "itemcollectionsizelimitexceeded" -> pure ItemCollectionSizeLimitExceeded
        "provisionedthroughputexceeded" -> pure ProvisionedThroughputExceeded
        "requestlimitexceeded" -> pure RequestLimitExceeded
        "resourcenotfound" -> pure ResourceNotFound
        "throttlingerror" -> pure ThrottlingError
        "transactionconflict" -> pure TransactionConflict
        "validationerror" -> pure ValidationError
        e -> fromTextError $ "Failure parsing BatchStatementErrorCodeEnum from value: '" <> e
           <> "'. Accepted values: accessdenied, conditionalcheckfailed, duplicateitem, internalservererror, itemcollectionsizelimitexceeded, provisionedthroughputexceeded, requestlimitexceeded, resourcenotfound, throttlingerror, transactionconflict, validationerror"

instance ToText BatchStatementErrorCodeEnum where
    toText = \case
        AccessDenied -> "AccessDenied"
        ConditionalCheckFailed -> "ConditionalCheckFailed"
        DuplicateItem -> "DuplicateItem"
        InternalServerError -> "InternalServerError"
        ItemCollectionSizeLimitExceeded -> "ItemCollectionSizeLimitExceeded"
        ProvisionedThroughputExceeded -> "ProvisionedThroughputExceeded"
        RequestLimitExceeded -> "RequestLimitExceeded"
        ResourceNotFound -> "ResourceNotFound"
        ThrottlingError -> "ThrottlingError"
        TransactionConflict -> "TransactionConflict"
        ValidationError -> "ValidationError"

instance Hashable     BatchStatementErrorCodeEnum
instance NFData       BatchStatementErrorCodeEnum
instance ToByteString BatchStatementErrorCodeEnum
instance ToQuery      BatchStatementErrorCodeEnum
instance ToHeader     BatchStatementErrorCodeEnum

instance FromJSON BatchStatementErrorCodeEnum where
    parseJSON = parseJSONText "BatchStatementErrorCodeEnum"

data BillingMode
  = PayPerRequest
  | Provisioned
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText BillingMode where
    parser = takeLowerText >>= \case
        "pay_per_request" -> pure PayPerRequest
        "provisioned" -> pure Provisioned
        e -> fromTextError $ "Failure parsing BillingMode from value: '" <> e
           <> "'. Accepted values: pay_per_request, provisioned"

instance ToText BillingMode where
    toText = \case
        PayPerRequest -> "PAY_PER_REQUEST"
        Provisioned -> "PROVISIONED"

instance Hashable     BillingMode
instance NFData       BillingMode
instance ToByteString BillingMode
instance ToQuery      BillingMode
instance ToHeader     BillingMode

instance ToJSON BillingMode where
    toJSON = toJSONText

instance FromJSON BillingMode where
    parseJSON = parseJSONText "BillingMode"

data ComparisonOperator
  = BeginsWith
  | Between
  | Contains
  | EQ'
  | GE
  | GT'
  | IN
  | LE
  | LT'
  | NE
  | NotContains
  | NotNull
  | Null
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ComparisonOperator where
    parser = takeLowerText >>= \case
        "begins_with" -> pure BeginsWith
        "between" -> pure Between
        "contains" -> pure Contains
        "eq" -> pure EQ'
        "ge" -> pure GE
        "gt" -> pure GT'
        "in" -> pure IN
        "le" -> pure LE
        "lt" -> pure LT'
        "ne" -> pure NE
        "not_contains" -> pure NotContains
        "not_null" -> pure NotNull
        "null" -> pure Null
        e -> fromTextError $ "Failure parsing ComparisonOperator from value: '" <> e
           <> "'. Accepted values: begins_with, between, contains, eq, ge, gt, in, le, lt, ne, not_contains, not_null, null"

instance ToText ComparisonOperator where
    toText = \case
        BeginsWith -> "BEGINS_WITH"
        Between -> "BETWEEN"
        Contains -> "CONTAINS"
        EQ' -> "EQ"
        GE -> "GE"
        GT' -> "GT"
        IN -> "IN"
        LE -> "LE"
        LT' -> "LT"
        NE -> "NE"
        NotContains -> "NOT_CONTAINS"
        NotNull -> "NOT_NULL"
        Null -> "NULL"

instance Hashable     ComparisonOperator
instance NFData       ComparisonOperator
instance ToByteString ComparisonOperator
instance ToQuery      ComparisonOperator
instance ToHeader     ComparisonOperator

instance ToJSON ComparisonOperator where
    toJSON = toJSONText

data ConditionalOperator
  = And
  | OR
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ConditionalOperator where
    parser = takeLowerText >>= \case
        "and" -> pure And
        "or" -> pure OR
        e -> fromTextError $ "Failure parsing ConditionalOperator from value: '" <> e
           <> "'. Accepted values: and, or"

instance ToText ConditionalOperator where
    toText = \case
        And -> "AND"
        OR -> "OR"

instance Hashable     ConditionalOperator
instance NFData       ConditionalOperator
instance ToByteString ConditionalOperator
instance ToQuery      ConditionalOperator
instance ToHeader     ConditionalOperator

instance ToJSON ConditionalOperator where
    toJSON = toJSONText

data ContinuousBackupsStatus
  = CBSDisabled
  | CBSEnabled
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ContinuousBackupsStatus where
    parser = takeLowerText >>= \case
        "disabled" -> pure CBSDisabled
        "enabled" -> pure CBSEnabled
        e -> fromTextError $ "Failure parsing ContinuousBackupsStatus from value: '" <> e
           <> "'. Accepted values: disabled, enabled"

instance ToText ContinuousBackupsStatus where
    toText = \case
        CBSDisabled -> "DISABLED"
        CBSEnabled -> "ENABLED"

instance Hashable     ContinuousBackupsStatus
instance NFData       ContinuousBackupsStatus
instance ToByteString ContinuousBackupsStatus
instance ToQuery      ContinuousBackupsStatus
instance ToHeader     ContinuousBackupsStatus

instance FromJSON ContinuousBackupsStatus where
    parseJSON = parseJSONText "ContinuousBackupsStatus"

data ContributorInsightsAction
  = Disable
  | Enable
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ContributorInsightsAction where
    parser = takeLowerText >>= \case
        "disable" -> pure Disable
        "enable" -> pure Enable
        e -> fromTextError $ "Failure parsing ContributorInsightsAction from value: '" <> e
           <> "'. Accepted values: disable, enable"

instance ToText ContributorInsightsAction where
    toText = \case
        Disable -> "DISABLE"
        Enable -> "ENABLE"

instance Hashable     ContributorInsightsAction
instance NFData       ContributorInsightsAction
instance ToByteString ContributorInsightsAction
instance ToQuery      ContributorInsightsAction
instance ToHeader     ContributorInsightsAction

instance ToJSON ContributorInsightsAction where
    toJSON = toJSONText

data ContributorInsightsStatus
  = CISDisabled
  | CISDisabling
  | CISEnabled
  | CISEnabling
  | CISFailed
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ContributorInsightsStatus where
    parser = takeLowerText >>= \case
        "disabled" -> pure CISDisabled
        "disabling" -> pure CISDisabling
        "enabled" -> pure CISEnabled
        "enabling" -> pure CISEnabling
        "failed" -> pure CISFailed
        e -> fromTextError $ "Failure parsing ContributorInsightsStatus from value: '" <> e
           <> "'. Accepted values: disabled, disabling, enabled, enabling, failed"

instance ToText ContributorInsightsStatus where
    toText = \case
        CISDisabled -> "DISABLED"
        CISDisabling -> "DISABLING"
        CISEnabled -> "ENABLED"
        CISEnabling -> "ENABLING"
        CISFailed -> "FAILED"

instance Hashable     ContributorInsightsStatus
instance NFData       ContributorInsightsStatus
instance ToByteString ContributorInsightsStatus
instance ToQuery      ContributorInsightsStatus
instance ToHeader     ContributorInsightsStatus

instance FromJSON ContributorInsightsStatus where
    parseJSON = parseJSONText "ContributorInsightsStatus"

data DestinationStatus
  = DSActive
  | DSDisabled
  | DSDisabling
  | DSEnableFailed
  | DSEnabling
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText DestinationStatus where
    parser = takeLowerText >>= \case
        "active" -> pure DSActive
        "disabled" -> pure DSDisabled
        "disabling" -> pure DSDisabling
        "enable_failed" -> pure DSEnableFailed
        "enabling" -> pure DSEnabling
        e -> fromTextError $ "Failure parsing DestinationStatus from value: '" <> e
           <> "'. Accepted values: active, disabled, disabling, enable_failed, enabling"

instance ToText DestinationStatus where
    toText = \case
        DSActive -> "ACTIVE"
        DSDisabled -> "DISABLED"
        DSDisabling -> "DISABLING"
        DSEnableFailed -> "ENABLE_FAILED"
        DSEnabling -> "ENABLING"

instance Hashable     DestinationStatus
instance NFData       DestinationStatus
instance ToByteString DestinationStatus
instance ToQuery      DestinationStatus
instance ToHeader     DestinationStatus

instance FromJSON DestinationStatus where
    parseJSON = parseJSONText "DestinationStatus"

data ExportFormat
  = DynamodbJSON
  | Ion
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ExportFormat where
    parser = takeLowerText >>= \case
        "dynamodb_json" -> pure DynamodbJSON
        "ion" -> pure Ion
        e -> fromTextError $ "Failure parsing ExportFormat from value: '" <> e
           <> "'. Accepted values: dynamodb_json, ion"

instance ToText ExportFormat where
    toText = \case
        DynamodbJSON -> "DYNAMODB_JSON"
        Ion -> "ION"

instance Hashable     ExportFormat
instance NFData       ExportFormat
instance ToByteString ExportFormat
instance ToQuery      ExportFormat
instance ToHeader     ExportFormat

instance ToJSON ExportFormat where
    toJSON = toJSONText

instance FromJSON ExportFormat where
    parseJSON = parseJSONText "ExportFormat"

data ExportStatus
  = Completed
  | Failed
  | InProgress
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ExportStatus where
    parser = takeLowerText >>= \case
        "completed" -> pure Completed
        "failed" -> pure Failed
        "in_progress" -> pure InProgress
        e -> fromTextError $ "Failure parsing ExportStatus from value: '" <> e
           <> "'. Accepted values: completed, failed, in_progress"

instance ToText ExportStatus where
    toText = \case
        Completed -> "COMPLETED"
        Failed -> "FAILED"
        InProgress -> "IN_PROGRESS"

instance Hashable     ExportStatus
instance NFData       ExportStatus
instance ToByteString ExportStatus
instance ToQuery      ExportStatus
instance ToHeader     ExportStatus

instance FromJSON ExportStatus where
    parseJSON = parseJSONText "ExportStatus"

data GlobalTableStatus
  = GTSActive
  | GTSCreating
  | GTSDeleting
  | GTSUpdating
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText GlobalTableStatus where
    parser = takeLowerText >>= \case
        "active" -> pure GTSActive
        "creating" -> pure GTSCreating
        "deleting" -> pure GTSDeleting
        "updating" -> pure GTSUpdating
        e -> fromTextError $ "Failure parsing GlobalTableStatus from value: '" <> e
           <> "'. Accepted values: active, creating, deleting, updating"

instance ToText GlobalTableStatus where
    toText = \case
        GTSActive -> "ACTIVE"
        GTSCreating -> "CREATING"
        GTSDeleting -> "DELETING"
        GTSUpdating -> "UPDATING"

instance Hashable     GlobalTableStatus
instance NFData       GlobalTableStatus
instance ToByteString GlobalTableStatus
instance ToQuery      GlobalTableStatus
instance ToHeader     GlobalTableStatus

instance FromJSON GlobalTableStatus where
    parseJSON = parseJSONText "GlobalTableStatus"

data IndexStatus
  = ISActive
  | ISCreating
  | ISDeleting
  | ISUpdating
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText IndexStatus where
    parser = takeLowerText >>= \case
        "active" -> pure ISActive
        "creating" -> pure ISCreating
        "deleting" -> pure ISDeleting
        "updating" -> pure ISUpdating
        e -> fromTextError $ "Failure parsing IndexStatus from value: '" <> e
           <> "'. Accepted values: active, creating, deleting, updating"

instance ToText IndexStatus where
    toText = \case
        ISActive -> "ACTIVE"
        ISCreating -> "CREATING"
        ISDeleting -> "DELETING"
        ISUpdating -> "UPDATING"

instance Hashable     IndexStatus
instance NFData       IndexStatus
instance ToByteString IndexStatus
instance ToQuery      IndexStatus
instance ToHeader     IndexStatus

instance FromJSON IndexStatus where
    parseJSON = parseJSONText "IndexStatus"

data KeyType
  = Hash
  | Range
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText KeyType where
    parser = takeLowerText >>= \case
        "hash" -> pure Hash
        "range" -> pure Range
        e -> fromTextError $ "Failure parsing KeyType from value: '" <> e
           <> "'. Accepted values: hash, range"

instance ToText KeyType where
    toText = \case
        Hash -> "HASH"
        Range -> "RANGE"

instance Hashable     KeyType
instance NFData       KeyType
instance ToByteString KeyType
instance ToQuery      KeyType
instance ToHeader     KeyType

instance ToJSON KeyType where
    toJSON = toJSONText

instance FromJSON KeyType where
    parseJSON = parseJSONText "KeyType"

data PointInTimeRecoveryStatus
  = PITRSDisabled
  | PITRSEnabled
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText PointInTimeRecoveryStatus where
    parser = takeLowerText >>= \case
        "disabled" -> pure PITRSDisabled
        "enabled" -> pure PITRSEnabled
        e -> fromTextError $ "Failure parsing PointInTimeRecoveryStatus from value: '" <> e
           <> "'. Accepted values: disabled, enabled"

instance ToText PointInTimeRecoveryStatus where
    toText = \case
        PITRSDisabled -> "DISABLED"
        PITRSEnabled -> "ENABLED"

instance Hashable     PointInTimeRecoveryStatus
instance NFData       PointInTimeRecoveryStatus
instance ToByteString PointInTimeRecoveryStatus
instance ToQuery      PointInTimeRecoveryStatus
instance ToHeader     PointInTimeRecoveryStatus

instance FromJSON PointInTimeRecoveryStatus where
    parseJSON = parseJSONText "PointInTimeRecoveryStatus"

data ProjectionType
  = PTAll
  | PTInclude
  | PTKeysOnly
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ProjectionType where
    parser = takeLowerText >>= \case
        "all" -> pure PTAll
        "include" -> pure PTInclude
        "keys_only" -> pure PTKeysOnly
        e -> fromTextError $ "Failure parsing ProjectionType from value: '" <> e
           <> "'. Accepted values: all, include, keys_only"

instance ToText ProjectionType where
    toText = \case
        PTAll -> "ALL"
        PTInclude -> "INCLUDE"
        PTKeysOnly -> "KEYS_ONLY"

instance Hashable     ProjectionType
instance NFData       ProjectionType
instance ToByteString ProjectionType
instance ToQuery      ProjectionType
instance ToHeader     ProjectionType

instance ToJSON ProjectionType where
    toJSON = toJSONText

instance FromJSON ProjectionType where
    parseJSON = parseJSONText "ProjectionType"

data ReplicaStatus
  = RSActive
  | RSCreating
  | RSCreationFailed
  | RSDeleting
  | RSInaccessibleEncryptionCredentials
  | RSRegionDisabled
  | RSUpdating
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ReplicaStatus where
    parser = takeLowerText >>= \case
        "active" -> pure RSActive
        "creating" -> pure RSCreating
        "creation_failed" -> pure RSCreationFailed
        "deleting" -> pure RSDeleting
        "inaccessible_encryption_credentials" -> pure RSInaccessibleEncryptionCredentials
        "region_disabled" -> pure RSRegionDisabled
        "updating" -> pure RSUpdating
        e -> fromTextError $ "Failure parsing ReplicaStatus from value: '" <> e
           <> "'. Accepted values: active, creating, creation_failed, deleting, inaccessible_encryption_credentials, region_disabled, updating"

instance ToText ReplicaStatus where
    toText = \case
        RSActive -> "ACTIVE"
        RSCreating -> "CREATING"
        RSCreationFailed -> "CREATION_FAILED"
        RSDeleting -> "DELETING"
        RSInaccessibleEncryptionCredentials -> "INACCESSIBLE_ENCRYPTION_CREDENTIALS"
        RSRegionDisabled -> "REGION_DISABLED"
        RSUpdating -> "UPDATING"

instance Hashable     ReplicaStatus
instance NFData       ReplicaStatus
instance ToByteString ReplicaStatus
instance ToQuery      ReplicaStatus
instance ToHeader     ReplicaStatus

instance FromJSON ReplicaStatus where
    parseJSON = parseJSONText "ReplicaStatus"

-- | Determines the level of detail about provisioned throughput consumption that is returned in the response:
--
--
--     * @INDEXES@ - The response includes the aggregate @ConsumedCapacity@ for the operation, together with @ConsumedCapacity@ for each table and secondary index that was accessed.
--
-- Note that some operations, such as @GetItem@ and @BatchGetItem@ , do not access any indexes at all. In these cases, specifying @INDEXES@ will only return @ConsumedCapacity@ information for table(s).
--
--     * @TOTAL@ - The response includes only the aggregate @ConsumedCapacity@ for the operation.
--
--     * @NONE@ - No @ConsumedCapacity@ details are included in the response.
--
--
--
data ReturnConsumedCapacity
  = RCCIndexes
  | RCCNone
  | RCCTotal
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ReturnConsumedCapacity where
    parser = takeLowerText >>= \case
        "indexes" -> pure RCCIndexes
        "none" -> pure RCCNone
        "total" -> pure RCCTotal
        e -> fromTextError $ "Failure parsing ReturnConsumedCapacity from value: '" <> e
           <> "'. Accepted values: indexes, none, total"

instance ToText ReturnConsumedCapacity where
    toText = \case
        RCCIndexes -> "INDEXES"
        RCCNone -> "NONE"
        RCCTotal -> "TOTAL"

instance Hashable     ReturnConsumedCapacity
instance NFData       ReturnConsumedCapacity
instance ToByteString ReturnConsumedCapacity
instance ToQuery      ReturnConsumedCapacity
instance ToHeader     ReturnConsumedCapacity

instance ToJSON ReturnConsumedCapacity where
    toJSON = toJSONText

data ReturnItemCollectionMetrics
  = RICMNone
  | RICMSize
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ReturnItemCollectionMetrics where
    parser = takeLowerText >>= \case
        "none" -> pure RICMNone
        "size" -> pure RICMSize
        e -> fromTextError $ "Failure parsing ReturnItemCollectionMetrics from value: '" <> e
           <> "'. Accepted values: none, size"

instance ToText ReturnItemCollectionMetrics where
    toText = \case
        RICMNone -> "NONE"
        RICMSize -> "SIZE"

instance Hashable     ReturnItemCollectionMetrics
instance NFData       ReturnItemCollectionMetrics
instance ToByteString ReturnItemCollectionMetrics
instance ToQuery      ReturnItemCollectionMetrics
instance ToHeader     ReturnItemCollectionMetrics

instance ToJSON ReturnItemCollectionMetrics where
    toJSON = toJSONText

data ReturnValue
  = RVAllNew
  | RVAllOld
  | RVNone
  | RVUpdatedNew
  | RVUpdatedOld
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ReturnValue where
    parser = takeLowerText >>= \case
        "all_new" -> pure RVAllNew
        "all_old" -> pure RVAllOld
        "none" -> pure RVNone
        "updated_new" -> pure RVUpdatedNew
        "updated_old" -> pure RVUpdatedOld
        e -> fromTextError $ "Failure parsing ReturnValue from value: '" <> e
           <> "'. Accepted values: all_new, all_old, none, updated_new, updated_old"

instance ToText ReturnValue where
    toText = \case
        RVAllNew -> "ALL_NEW"
        RVAllOld -> "ALL_OLD"
        RVNone -> "NONE"
        RVUpdatedNew -> "UPDATED_NEW"
        RVUpdatedOld -> "UPDATED_OLD"

instance Hashable     ReturnValue
instance NFData       ReturnValue
instance ToByteString ReturnValue
instance ToQuery      ReturnValue
instance ToHeader     ReturnValue

instance ToJSON ReturnValue where
    toJSON = toJSONText

data ReturnValuesOnConditionCheckFailure
  = AllOld
  | None
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ReturnValuesOnConditionCheckFailure where
    parser = takeLowerText >>= \case
        "all_old" -> pure AllOld
        "none" -> pure None
        e -> fromTextError $ "Failure parsing ReturnValuesOnConditionCheckFailure from value: '" <> e
           <> "'. Accepted values: all_old, none"

instance ToText ReturnValuesOnConditionCheckFailure where
    toText = \case
        AllOld -> "ALL_OLD"
        None -> "NONE"

instance Hashable     ReturnValuesOnConditionCheckFailure
instance NFData       ReturnValuesOnConditionCheckFailure
instance ToByteString ReturnValuesOnConditionCheckFailure
instance ToQuery      ReturnValuesOnConditionCheckFailure
instance ToHeader     ReturnValuesOnConditionCheckFailure

instance ToJSON ReturnValuesOnConditionCheckFailure where
    toJSON = toJSONText

data S3SseAlgorithm
  = SSAAES256
  | SSAKMS
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText S3SseAlgorithm where
    parser = takeLowerText >>= \case
        "aes256" -> pure SSAAES256
        "kms" -> pure SSAKMS
        e -> fromTextError $ "Failure parsing S3SseAlgorithm from value: '" <> e
           <> "'. Accepted values: aes256, kms"

instance ToText S3SseAlgorithm where
    toText = \case
        SSAAES256 -> "AES256"
        SSAKMS -> "KMS"

instance Hashable     S3SseAlgorithm
instance NFData       S3SseAlgorithm
instance ToByteString S3SseAlgorithm
instance ToQuery      S3SseAlgorithm
instance ToHeader     S3SseAlgorithm

instance ToJSON S3SseAlgorithm where
    toJSON = toJSONText

instance FromJSON S3SseAlgorithm where
    parseJSON = parseJSONText "S3SseAlgorithm"

data SSEStatus
  = SSESDisabled
  | SSESDisabling
  | SSESEnabled
  | SSESEnabling
  | SSESUpdating
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText SSEStatus where
    parser = takeLowerText >>= \case
        "disabled" -> pure SSESDisabled
        "disabling" -> pure SSESDisabling
        "enabled" -> pure SSESEnabled
        "enabling" -> pure SSESEnabling
        "updating" -> pure SSESUpdating
        e -> fromTextError $ "Failure parsing SSEStatus from value: '" <> e
           <> "'. Accepted values: disabled, disabling, enabled, enabling, updating"

instance ToText SSEStatus where
    toText = \case
        SSESDisabled -> "DISABLED"
        SSESDisabling -> "DISABLING"
        SSESEnabled -> "ENABLED"
        SSESEnabling -> "ENABLING"
        SSESUpdating -> "UPDATING"

instance Hashable     SSEStatus
instance NFData       SSEStatus
instance ToByteString SSEStatus
instance ToQuery      SSEStatus
instance ToHeader     SSEStatus

instance FromJSON SSEStatus where
    parseJSON = parseJSONText "SSEStatus"

data SSEType
  = AES256
  | KMS
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText SSEType where
    parser = takeLowerText >>= \case
        "aes256" -> pure AES256
        "kms" -> pure KMS
        e -> fromTextError $ "Failure parsing SSEType from value: '" <> e
           <> "'. Accepted values: aes256, kms"

instance ToText SSEType where
    toText = \case
        AES256 -> "AES256"
        KMS -> "KMS"

instance Hashable     SSEType
instance NFData       SSEType
instance ToByteString SSEType
instance ToQuery      SSEType
instance ToHeader     SSEType

instance ToJSON SSEType where
    toJSON = toJSONText

instance FromJSON SSEType where
    parseJSON = parseJSONText "SSEType"

data ScalarAttributeType
  = B
  | N
  | S
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText ScalarAttributeType where
    parser = takeLowerText >>= \case
        "b" -> pure B
        "n" -> pure N
        "s" -> pure S
        e -> fromTextError $ "Failure parsing ScalarAttributeType from value: '" <> e
           <> "'. Accepted values: b, n, s"

instance ToText ScalarAttributeType where
    toText = \case
        B -> "B"
        N -> "N"
        S -> "S"

instance Hashable     ScalarAttributeType
instance NFData       ScalarAttributeType
instance ToByteString ScalarAttributeType
instance ToQuery      ScalarAttributeType
instance ToHeader     ScalarAttributeType

instance ToJSON ScalarAttributeType where
    toJSON = toJSONText

instance FromJSON ScalarAttributeType where
    parseJSON = parseJSONText "ScalarAttributeType"

data Select
  = AllAttributes
  | AllProjectedAttributes
  | Count
  | SpecificAttributes
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText Select where
    parser = takeLowerText >>= \case
        "all_attributes" -> pure AllAttributes
        "all_projected_attributes" -> pure AllProjectedAttributes
        "count" -> pure Count
        "specific_attributes" -> pure SpecificAttributes
        e -> fromTextError $ "Failure parsing Select from value: '" <> e
           <> "'. Accepted values: all_attributes, all_projected_attributes, count, specific_attributes"

instance ToText Select where
    toText = \case
        AllAttributes -> "ALL_ATTRIBUTES"
        AllProjectedAttributes -> "ALL_PROJECTED_ATTRIBUTES"
        Count -> "COUNT"
        SpecificAttributes -> "SPECIFIC_ATTRIBUTES"

instance Hashable     Select
instance NFData       Select
instance ToByteString Select
instance ToQuery      Select
instance ToHeader     Select

instance ToJSON Select where
    toJSON = toJSONText

data StreamViewType
  = KeysOnly
  | NewAndOldImages
  | NewImage
  | OldImage
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText StreamViewType where
    parser = takeLowerText >>= \case
        "keys_only" -> pure KeysOnly
        "new_and_old_images" -> pure NewAndOldImages
        "new_image" -> pure NewImage
        "old_image" -> pure OldImage
        e -> fromTextError $ "Failure parsing StreamViewType from value: '" <> e
           <> "'. Accepted values: keys_only, new_and_old_images, new_image, old_image"

instance ToText StreamViewType where
    toText = \case
        KeysOnly -> "KEYS_ONLY"
        NewAndOldImages -> "NEW_AND_OLD_IMAGES"
        NewImage -> "NEW_IMAGE"
        OldImage -> "OLD_IMAGE"

instance Hashable     StreamViewType
instance NFData       StreamViewType
instance ToByteString StreamViewType
instance ToQuery      StreamViewType
instance ToHeader     StreamViewType

instance ToJSON StreamViewType where
    toJSON = toJSONText

instance FromJSON StreamViewType where
    parseJSON = parseJSONText "StreamViewType"

data TableStatus
  = TSActive
  | TSArchived
  | TSArchiving
  | TSCreating
  | TSDeleting
  | TSInaccessibleEncryptionCredentials
  | TSUpdating
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText TableStatus where
    parser = takeLowerText >>= \case
        "active" -> pure TSActive
        "archived" -> pure TSArchived
        "archiving" -> pure TSArchiving
        "creating" -> pure TSCreating
        "deleting" -> pure TSDeleting
        "inaccessible_encryption_credentials" -> pure TSInaccessibleEncryptionCredentials
        "updating" -> pure TSUpdating
        e -> fromTextError $ "Failure parsing TableStatus from value: '" <> e
           <> "'. Accepted values: active, archived, archiving, creating, deleting, inaccessible_encryption_credentials, updating"

instance ToText TableStatus where
    toText = \case
        TSActive -> "ACTIVE"
        TSArchived -> "ARCHIVED"
        TSArchiving -> "ARCHIVING"
        TSCreating -> "CREATING"
        TSDeleting -> "DELETING"
        TSInaccessibleEncryptionCredentials -> "INACCESSIBLE_ENCRYPTION_CREDENTIALS"
        TSUpdating -> "UPDATING"

instance Hashable     TableStatus
instance NFData       TableStatus
instance ToByteString TableStatus
instance ToQuery      TableStatus
instance ToHeader     TableStatus

instance FromJSON TableStatus where
    parseJSON = parseJSONText "TableStatus"

data TimeToLiveStatus
  = Disabled
  | Disabling
  | Enabled
  | Enabling
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText TimeToLiveStatus where
    parser = takeLowerText >>= \case
        "disabled" -> pure Disabled
        "disabling" -> pure Disabling
        "enabled" -> pure Enabled
        "enabling" -> pure Enabling
        e -> fromTextError $ "Failure parsing TimeToLiveStatus from value: '" <> e
           <> "'. Accepted values: disabled, disabling, enabled, enabling"

instance ToText TimeToLiveStatus where
    toText = \case
        Disabled -> "DISABLED"
        Disabling -> "DISABLING"
        Enabled -> "ENABLED"
        Enabling -> "ENABLING"

instance Hashable     TimeToLiveStatus
instance NFData       TimeToLiveStatus
instance ToByteString TimeToLiveStatus
instance ToQuery      TimeToLiveStatus
instance ToHeader     TimeToLiveStatus

instance FromJSON TimeToLiveStatus where
    parseJSON = parseJSONText "TimeToLiveStatus"
