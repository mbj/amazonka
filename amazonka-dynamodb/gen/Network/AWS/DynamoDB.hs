{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon DynamoDB__ 
--
-- Amazon DynamoDB is a fully managed NoSQL database service that provides fast and predictable performance with seamless scalability. DynamoDB lets you offload the administrative burdens of operating and scaling a distributed database, so that you don't have to worry about hardware provisioning, setup and configuration, replication, software patching, or cluster scaling.
--
-- With DynamoDB, you can create database tables that can store and retrieve any amount of data, and serve any level of request traffic. You can scale up or scale down your tables' throughput capacity without downtime or performance degradation, and use the AWS Management Console to monitor resource utilization and performance metrics.
--
-- DynamoDB automatically spreads the data and traffic for your tables over a sufficient number of servers to handle your throughput and storage requirements, while maintaining consistent and fast performance. All of your data is stored on solid state disks (SSDs) and automatically replicated across multiple Availability Zones in an AWS region, providing built-in high availability and data durability. 
--
module Network.AWS.DynamoDB
    (
    -- * Service Configuration
      dynamoDB

    -- * Errors
    -- $errors

    -- ** InvalidExportTimeException
    , _InvalidExportTimeException

    -- ** BackupNotFoundException
    , _BackupNotFoundException

    -- ** TableInUseException
    , _TableInUseException

    -- ** ExportConflictException
    , _ExportConflictException

    -- ** ContinuousBackupsUnavailableException
    , _ContinuousBackupsUnavailableException

    -- ** ProvisionedThroughputExceededException
    , _ProvisionedThroughputExceededException

    -- ** GlobalTableNotFoundException
    , _GlobalTableNotFoundException

    -- ** TransactionInProgressException
    , _TransactionInProgressException

    -- ** TransactionCanceledException
    , _TransactionCanceledException

    -- ** ConditionalCheckFailedException
    , _ConditionalCheckFailedException

    -- ** GlobalTableAlreadyExistsException
    , _GlobalTableAlreadyExistsException

    -- ** ReplicaNotFoundException
    , _ReplicaNotFoundException

    -- ** TableAlreadyExistsException
    , _TableAlreadyExistsException

    -- ** RequestLimitExceeded
    , _RequestLimitExceeded

    -- ** ItemCollectionSizeLimitExceededException
    , _ItemCollectionSizeLimitExceededException

    -- ** InternalServerError
    , _InternalServerError

    -- ** TableNotFoundException
    , _TableNotFoundException

    -- ** IndexNotFoundException
    , _IndexNotFoundException

    -- ** TransactionConflictException
    , _TransactionConflictException

    -- ** BackupInUseException
    , _BackupInUseException

    -- ** DuplicateItemException
    , _DuplicateItemException

    -- ** ExportNotFoundException
    , _ExportNotFoundException

    -- ** PointInTimeRecoveryUnavailableException
    , _PointInTimeRecoveryUnavailableException

    -- ** IdempotentParameterMismatchException
    , _IdempotentParameterMismatchException

    -- ** InvalidRestoreTimeException
    , _InvalidRestoreTimeException

    -- ** ResourceNotFoundException
    , _ResourceNotFoundException

    -- ** ReplicaAlreadyExistsException
    , _ReplicaAlreadyExistsException

    -- ** LimitExceededException
    , _LimitExceededException

    -- ** ResourceInUseException
    , _ResourceInUseException

    -- * Waiters
    -- $waiters

    -- ** TableNotExists
    , tableNotExists

    -- ** TableExists
    , tableExists

    -- * Operations
    -- $operations

    -- ** PutItem 
    , module Network.AWS.DynamoDB.PutItem

    -- ** DeleteItem 
    , module Network.AWS.DynamoDB.DeleteItem

    -- ** UpdateItem 
    , module Network.AWS.DynamoDB.UpdateItem

    -- ** DisableKinesisStreamingDestination 
    , module Network.AWS.DynamoDB.DisableKinesisStreamingDestination

    -- ** ListGlobalTables 
    , module Network.AWS.DynamoDB.ListGlobalTables

    -- ** UpdateGlobalTable 
    , module Network.AWS.DynamoDB.UpdateGlobalTable

    -- ** DeleteTable 
    , module Network.AWS.DynamoDB.DeleteTable

    -- ** UpdateTable 
    , module Network.AWS.DynamoDB.UpdateTable

    -- ** BatchGetItem 
    , module Network.AWS.DynamoDB.BatchGetItem

    -- ** ListBackups (Paginated)
    , module Network.AWS.DynamoDB.ListBackups

    -- ** DeleteBackup 
    , module Network.AWS.DynamoDB.DeleteBackup

    -- ** CreateBackup 
    , module Network.AWS.DynamoDB.CreateBackup

    -- ** UpdateTableReplicaAutoScaling 
    , module Network.AWS.DynamoDB.UpdateTableReplicaAutoScaling

    -- ** DescribeGlobalTableSettings 
    , module Network.AWS.DynamoDB.DescribeGlobalTableSettings

    -- ** ListTagsOfResource (Paginated)
    , module Network.AWS.DynamoDB.ListTagsOfResource

    -- ** DescribeGlobalTable 
    , module Network.AWS.DynamoDB.DescribeGlobalTable

    -- ** DescribeTable 
    , module Network.AWS.DynamoDB.DescribeTable

    -- ** DescribeLimits 
    , module Network.AWS.DynamoDB.DescribeLimits

    -- ** ExecuteTransaction 
    , module Network.AWS.DynamoDB.ExecuteTransaction

    -- ** GetItem 
    , module Network.AWS.DynamoDB.GetItem

    -- ** DescribeBackup 
    , module Network.AWS.DynamoDB.DescribeBackup

    -- ** BatchExecuteStatement 
    , module Network.AWS.DynamoDB.BatchExecuteStatement

    -- ** DescribeTableReplicaAutoScaling 
    , module Network.AWS.DynamoDB.DescribeTableReplicaAutoScaling

    -- ** UpdateGlobalTableSettings 
    , module Network.AWS.DynamoDB.UpdateGlobalTableSettings

    -- ** EnableKinesisStreamingDestination 
    , module Network.AWS.DynamoDB.EnableKinesisStreamingDestination

    -- ** TransactGetItems 
    , module Network.AWS.DynamoDB.TransactGetItems

    -- ** ListContributorInsights 
    , module Network.AWS.DynamoDB.ListContributorInsights

    -- ** BatchWriteItem 
    , module Network.AWS.DynamoDB.BatchWriteItem

    -- ** ExportTableToPointInTime 
    , module Network.AWS.DynamoDB.ExportTableToPointInTime

    -- ** TransactWriteItems 
    , module Network.AWS.DynamoDB.TransactWriteItems

    -- ** ListTables (Paginated)
    , module Network.AWS.DynamoDB.ListTables

    -- ** Scan (Paginated)
    , module Network.AWS.DynamoDB.Scan

    -- ** UpdateContributorInsights 
    , module Network.AWS.DynamoDB.UpdateContributorInsights

    -- ** ExecuteStatement 
    , module Network.AWS.DynamoDB.ExecuteStatement

    -- ** Query (Paginated)
    , module Network.AWS.DynamoDB.Query

    -- ** CreateTable 
    , module Network.AWS.DynamoDB.CreateTable

    -- ** DescribeKinesisStreamingDestination 
    , module Network.AWS.DynamoDB.DescribeKinesisStreamingDestination

    -- ** DescribeEndpoints 
    , module Network.AWS.DynamoDB.DescribeEndpoints

    -- ** DescribeTimeToLive 
    , module Network.AWS.DynamoDB.DescribeTimeToLive

    -- ** DescribeContinuousBackups 
    , module Network.AWS.DynamoDB.DescribeContinuousBackups

    -- ** ListExports 
    , module Network.AWS.DynamoDB.ListExports

    -- ** TagResource 
    , module Network.AWS.DynamoDB.TagResource

    -- ** DescribeContributorInsights 
    , module Network.AWS.DynamoDB.DescribeContributorInsights

    -- ** UntagResource 
    , module Network.AWS.DynamoDB.UntagResource

    -- ** RestoreTableToPointInTime 
    , module Network.AWS.DynamoDB.RestoreTableToPointInTime

    -- ** RestoreTableFromBackup 
    , module Network.AWS.DynamoDB.RestoreTableFromBackup

    -- ** UpdateTimeToLive 
    , module Network.AWS.DynamoDB.UpdateTimeToLive

    -- ** CreateGlobalTable 
    , module Network.AWS.DynamoDB.CreateGlobalTable

    -- ** UpdateContinuousBackups 
    , module Network.AWS.DynamoDB.UpdateContinuousBackups

    -- ** DescribeExport 
    , module Network.AWS.DynamoDB.DescribeExport

    -- * Types

    -- ** AttributeAction
    , AttributeAction (..)

    -- ** BackupStatus
    , BackupStatus (..)

    -- ** BackupType
    , BackupType (..)

    -- ** BackupTypeFilter
    , BackupTypeFilter (..)

    -- ** BatchStatementErrorCodeEnum
    , BatchStatementErrorCodeEnum (..)

    -- ** BillingMode
    , BillingMode (..)

    -- ** ComparisonOperator
    , ComparisonOperator (..)

    -- ** ConditionalOperator
    , ConditionalOperator (..)

    -- ** ContinuousBackupsStatus
    , ContinuousBackupsStatus (..)

    -- ** ContributorInsightsAction
    , ContributorInsightsAction (..)

    -- ** ContributorInsightsStatus
    , ContributorInsightsStatus (..)

    -- ** DestinationStatus
    , DestinationStatus (..)

    -- ** ExportFormat
    , ExportFormat (..)

    -- ** ExportStatus
    , ExportStatus (..)

    -- ** GlobalTableStatus
    , GlobalTableStatus (..)

    -- ** IndexStatus
    , IndexStatus (..)

    -- ** KeyType
    , KeyType (..)

    -- ** PointInTimeRecoveryStatus
    , PointInTimeRecoveryStatus (..)

    -- ** ProjectionType
    , ProjectionType (..)

    -- ** ReplicaStatus
    , ReplicaStatus (..)

    -- ** ReturnConsumedCapacity
    , ReturnConsumedCapacity (..)

    -- ** ReturnItemCollectionMetrics
    , ReturnItemCollectionMetrics (..)

    -- ** ReturnValue
    , ReturnValue (..)

    -- ** ReturnValuesOnConditionCheckFailure
    , ReturnValuesOnConditionCheckFailure (..)

    -- ** S3SseAlgorithm
    , S3SseAlgorithm (..)

    -- ** SSEStatus
    , SSEStatus (..)

    -- ** SSEType
    , SSEType (..)

    -- ** ScalarAttributeType
    , ScalarAttributeType (..)

    -- ** Select
    , Select (..)

    -- ** StreamViewType
    , StreamViewType (..)

    -- ** TableStatus
    , TableStatus (..)

    -- ** TimeToLiveStatus
    , TimeToLiveStatus (..)

    -- ** ArchivalSummary
    , ArchivalSummary
    , archivalSummary
    , asArchivalReason
    , asArchivalDateTime
    , asArchivalBackupARN

    -- ** AttributeDefinition
    , AttributeDefinition
    , attributeDefinition
    , adAttributeName
    , adAttributeType

    -- ** AttributeValue
    , AttributeValue
    , attributeValue
    , avL
    , avNS
    , avM
    , avNULL
    , avN
    , avBS
    , avB
    , avSS
    , avS
    , avBOOL

    -- ** AttributeValueUpdate
    , AttributeValueUpdate
    , attributeValueUpdate
    , avuValue
    , avuAction

    -- ** AutoScalingPolicyDescription
    , AutoScalingPolicyDescription
    , autoScalingPolicyDescription
    , aspdPolicyName
    , aspdTargetTrackingScalingPolicyConfiguration

    -- ** AutoScalingPolicyUpdate
    , AutoScalingPolicyUpdate
    , autoScalingPolicyUpdate
    , aspuPolicyName
    , aspuTargetTrackingScalingPolicyConfiguration

    -- ** AutoScalingSettingsDescription
    , AutoScalingSettingsDescription
    , autoScalingSettingsDescription
    , assdAutoScalingDisabled
    , assdMinimumUnits
    , assdMaximumUnits
    , assdScalingPolicies
    , assdAutoScalingRoleARN

    -- ** AutoScalingSettingsUpdate
    , AutoScalingSettingsUpdate
    , autoScalingSettingsUpdate
    , assuAutoScalingDisabled
    , assuMinimumUnits
    , assuScalingPolicyUpdate
    , assuMaximumUnits
    , assuAutoScalingRoleARN

    -- ** AutoScalingTargetTrackingScalingPolicyConfigurationDescription
    , AutoScalingTargetTrackingScalingPolicyConfigurationDescription
    , autoScalingTargetTrackingScalingPolicyConfigurationDescription
    , asttspcdScaleInCooldown
    , asttspcdDisableScaleIn
    , asttspcdScaleOutCooldown
    , asttspcdTargetValue

    -- ** AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
    , AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
    , autoScalingTargetTrackingScalingPolicyConfigurationUpdate
    , asttspcuScaleInCooldown
    , asttspcuDisableScaleIn
    , asttspcuScaleOutCooldown
    , asttspcuTargetValue

    -- ** BackupDescription
    , BackupDescription
    , backupDescription
    , bdBackupDetails
    , bdSourceTableDetails
    , bdSourceTableFeatureDetails

    -- ** BackupDetails
    , BackupDetails
    , backupDetails
    , bdBackupExpiryDateTime
    , bdBackupSizeBytes
    , bdBackupARN
    , bdBackupName
    , bdBackupStatus
    , bdBackupType
    , bdBackupCreationDateTime

    -- ** BackupSummary
    , BackupSummary
    , backupSummary
    , bsBackupExpiryDateTime
    , bsTableARN
    , bsBackupName
    , bsBackupStatus
    , bsBackupSizeBytes
    , bsBackupARN
    , bsTableId
    , bsBackupCreationDateTime
    , bsBackupType
    , bsTableName

    -- ** BatchStatementError
    , BatchStatementError
    , batchStatementError
    , bseCode
    , bseMessage

    -- ** BatchStatementRequest
    , BatchStatementRequest
    , batchStatementRequest
    , bsrConsistentRead
    , bsrParameters
    , bsrStatement

    -- ** BatchStatementResponse
    , BatchStatementResponse
    , batchStatementResponse
    , bError
    , bItem
    , bTableName

    -- ** BillingModeSummary
    , BillingModeSummary
    , billingModeSummary
    , bmsLastUpdateToPayPerRequestDateTime
    , bmsBillingMode

    -- ** Capacity
    , Capacity
    , capacity
    , capReadCapacityUnits
    , capCapacityUnits
    , capWriteCapacityUnits

    -- ** Condition
    , Condition
    , condition
    , cAttributeValueList
    , cComparisonOperator

    -- ** ConditionCheck
    , ConditionCheck
    , conditionCheck
    , ccExpressionAttributeNames
    , ccExpressionAttributeValues
    , ccReturnValuesOnConditionCheckFailure
    , ccKey
    , ccTableName
    , ccConditionExpression

    -- ** ConsumedCapacity
    , ConsumedCapacity
    , consumedCapacity
    , cReadCapacityUnits
    , cGlobalSecondaryIndexes
    , cCapacityUnits
    , cWriteCapacityUnits
    , cLocalSecondaryIndexes
    , cTable
    , cTableName

    -- ** ContinuousBackupsDescription
    , ContinuousBackupsDescription
    , continuousBackupsDescription
    , cbdPointInTimeRecoveryDescription
    , cbdContinuousBackupsStatus

    -- ** ContributorInsightsSummary
    , ContributorInsightsSummary
    , contributorInsightsSummary
    , cisContributorInsightsStatus
    , cisTableName
    , cisIndexName

    -- ** CreateGlobalSecondaryIndexAction
    , CreateGlobalSecondaryIndexAction
    , createGlobalSecondaryIndexAction
    , cgsiaProvisionedThroughput
    , cgsiaIndexName
    , cgsiaKeySchema
    , cgsiaProjection

    -- ** CreateReplicaAction
    , CreateReplicaAction
    , createReplicaAction
    , craRegionName

    -- ** CreateReplicationGroupMemberAction
    , CreateReplicationGroupMemberAction
    , createReplicationGroupMemberAction
    , crgmaKMSMasterKeyId
    , crgmaProvisionedThroughputOverride
    , crgmaGlobalSecondaryIndexes
    , crgmaRegionName

    -- ** Delete
    , Delete
    , delete'
    , dExpressionAttributeNames
    , dExpressionAttributeValues
    , dReturnValuesOnConditionCheckFailure
    , dConditionExpression
    , dKey
    , dTableName

    -- ** DeleteGlobalSecondaryIndexAction
    , DeleteGlobalSecondaryIndexAction
    , deleteGlobalSecondaryIndexAction
    , dgsiaIndexName

    -- ** DeleteReplicaAction
    , DeleteReplicaAction
    , deleteReplicaAction
    , draRegionName

    -- ** DeleteReplicationGroupMemberAction
    , DeleteReplicationGroupMemberAction
    , deleteReplicationGroupMemberAction
    , drgmaRegionName

    -- ** DeleteRequest
    , DeleteRequest
    , deleteRequest
    , drKey

    -- ** Endpoint
    , Endpoint
    , endpoint
    , eAddress
    , eCachePeriodInMinutes

    -- ** ExpectedAttributeValue
    , ExpectedAttributeValue
    , expectedAttributeValue
    , eavAttributeValueList
    , eavExists
    , eavValue
    , eavComparisonOperator

    -- ** ExportDescription
    , ExportDescription
    , exportDescription
    , edS3BucketOwner
    , edExportFormat
    , edS3SseKMSKeyId
    , edClientToken
    , edStartTime
    , edFailureCode
    , edExportStatus
    , edFailureMessage
    , edTableARN
    , edBilledSizeBytes
    , edExportARN
    , edExportTime
    , edS3SseAlgorithm
    , edEndTime
    , edS3Prefix
    , edExportManifest
    , edTableId
    , edItemCount
    , edS3Bucket

    -- ** ExportSummary
    , ExportSummary
    , exportSummary
    , esExportStatus
    , esExportARN

    -- ** FailureException
    , FailureException
    , failureException
    , feExceptionName
    , feExceptionDescription

    -- ** Get
    , Get
    , get'
    , getProjectionExpression
    , getExpressionAttributeNames
    , getKey
    , getTableName

    -- ** GlobalSecondaryIndex
    , GlobalSecondaryIndex
    , globalSecondaryIndex
    , gsiProvisionedThroughput
    , gsiIndexName
    , gsiKeySchema
    , gsiProjection

    -- ** GlobalSecondaryIndexAutoScalingUpdate
    , GlobalSecondaryIndexAutoScalingUpdate
    , globalSecondaryIndexAutoScalingUpdate
    , gsiasuProvisionedWriteCapacityAutoScalingUpdate
    , gsiasuIndexName

    -- ** GlobalSecondaryIndexDescription
    , GlobalSecondaryIndexDescription
    , globalSecondaryIndexDescription
    , gsidBackfilling
    , gsidIndexSizeBytes
    , gsidIndexStatus
    , gsidProvisionedThroughput
    , gsidIndexARN
    , gsidKeySchema
    , gsidProjection
    , gsidItemCount
    , gsidIndexName

    -- ** GlobalSecondaryIndexInfo
    , GlobalSecondaryIndexInfo
    , globalSecondaryIndexInfo
    , gsiiProvisionedThroughput
    , gsiiKeySchema
    , gsiiProjection
    , gsiiIndexName

    -- ** GlobalSecondaryIndexUpdate
    , GlobalSecondaryIndexUpdate
    , globalSecondaryIndexUpdate
    , gsiuCreate
    , gsiuDelete
    , gsiuUpdate

    -- ** GlobalTable
    , GlobalTable
    , globalTable
    , gtGlobalTableName
    , gtReplicationGroup

    -- ** GlobalTableDescription
    , GlobalTableDescription
    , globalTableDescription
    , gtdGlobalTableStatus
    , gtdGlobalTableName
    , gtdGlobalTableARN
    , gtdCreationDateTime
    , gtdReplicationGroup

    -- ** GlobalTableGlobalSecondaryIndexSettingsUpdate
    , GlobalTableGlobalSecondaryIndexSettingsUpdate
    , globalTableGlobalSecondaryIndexSettingsUpdate
    , gtgsisuProvisionedWriteCapacityUnits
    , gtgsisuProvisionedWriteCapacityAutoScalingSettingsUpdate
    , gtgsisuIndexName

    -- ** ItemCollectionMetrics
    , ItemCollectionMetrics
    , itemCollectionMetrics
    , icmItemCollectionKey
    , icmSizeEstimateRangeGB

    -- ** ItemResponse
    , ItemResponse
    , itemResponse
    , iItem

    -- ** KeySchemaElement
    , KeySchemaElement
    , keySchemaElement
    , kseAttributeName
    , kseKeyType

    -- ** KeysAndAttributes
    , KeysAndAttributes
    , keysAndAttributes
    , kaaProjectionExpression
    , kaaAttributesToGet
    , kaaExpressionAttributeNames
    , kaaConsistentRead
    , kaaKeys

    -- ** KinesisDataStreamDestination
    , KinesisDataStreamDestination
    , kinesisDataStreamDestination
    , kdsdDestinationStatus
    , kdsdStreamARN
    , kdsdDestinationStatusDescription

    -- ** KinesisStreamingDestinationInput
    , KinesisStreamingDestinationInput
    , kinesisStreamingDestinationInput
    , ksdiTableName
    , ksdiStreamARN

    -- ** KinesisStreamingDestinationOutput
    , KinesisStreamingDestinationOutput
    , kinesisStreamingDestinationOutput
    , ksdoDestinationStatus
    , ksdoStreamARN
    , ksdoTableName

    -- ** LocalSecondaryIndex
    , LocalSecondaryIndex
    , localSecondaryIndex
    , lsiIndexName
    , lsiKeySchema
    , lsiProjection

    -- ** LocalSecondaryIndexDescription
    , LocalSecondaryIndexDescription
    , localSecondaryIndexDescription
    , lsidIndexSizeBytes
    , lsidIndexARN
    , lsidKeySchema
    , lsidProjection
    , lsidItemCount
    , lsidIndexName

    -- ** LocalSecondaryIndexInfo
    , LocalSecondaryIndexInfo
    , localSecondaryIndexInfo
    , lsiiKeySchema
    , lsiiProjection
    , lsiiIndexName

    -- ** ParameterizedStatement
    , ParameterizedStatement
    , parameterizedStatement
    , psParameters
    , psStatement

    -- ** PointInTimeRecoveryDescription
    , PointInTimeRecoveryDescription
    , pointInTimeRecoveryDescription
    , pitrdPointInTimeRecoveryStatus
    , pitrdEarliestRestorableDateTime
    , pitrdLatestRestorableDateTime

    -- ** PointInTimeRecoverySpecification
    , PointInTimeRecoverySpecification
    , pointInTimeRecoverySpecification
    , pitrsPointInTimeRecoveryEnabled

    -- ** Projection
    , Projection
    , projection
    , pProjectionType
    , pNonKeyAttributes

    -- ** ProvisionedThroughput
    , ProvisionedThroughput
    , provisionedThroughput
    , ptReadCapacityUnits
    , ptWriteCapacityUnits

    -- ** ProvisionedThroughputDescription
    , ProvisionedThroughputDescription
    , provisionedThroughputDescription
    , ptdReadCapacityUnits
    , ptdLastDecreaseDateTime
    , ptdWriteCapacityUnits
    , ptdNumberOfDecreasesToday
    , ptdLastIncreaseDateTime

    -- ** ProvisionedThroughputOverride
    , ProvisionedThroughputOverride
    , provisionedThroughputOverride
    , ptoReadCapacityUnits

    -- ** Put
    , Put
    , put
    , pExpressionAttributeNames
    , pExpressionAttributeValues
    , pReturnValuesOnConditionCheckFailure
    , pConditionExpression
    , pItem
    , pTableName

    -- ** PutRequest
    , PutRequest
    , putRequest
    , prItem

    -- ** Replica
    , Replica
    , replica
    , rRegionName

    -- ** ReplicaAutoScalingDescription
    , ReplicaAutoScalingDescription
    , replicaAutoScalingDescription
    , rasdReplicaStatus
    , rasdRegionName
    , rasdGlobalSecondaryIndexes
    , rasdReplicaProvisionedWriteCapacityAutoScalingSettings
    , rasdReplicaProvisionedReadCapacityAutoScalingSettings

    -- ** ReplicaAutoScalingUpdate
    , ReplicaAutoScalingUpdate
    , replicaAutoScalingUpdate
    , rasuReplicaProvisionedReadCapacityAutoScalingUpdate
    , rasuReplicaGlobalSecondaryIndexUpdates
    , rasuRegionName

    -- ** ReplicaDescription
    , ReplicaDescription
    , replicaDescription
    , rdReplicaStatus
    , rdRegionName
    , rdReplicaStatusPercentProgress
    , rdReplicaStatusDescription
    , rdReplicaInaccessibleDateTime
    , rdKMSMasterKeyId
    , rdProvisionedThroughputOverride
    , rdGlobalSecondaryIndexes

    -- ** ReplicaGlobalSecondaryIndex
    , ReplicaGlobalSecondaryIndex
    , replicaGlobalSecondaryIndex
    , rgsiProvisionedThroughputOverride
    , rgsiIndexName

    -- ** ReplicaGlobalSecondaryIndexAutoScalingDescription
    , ReplicaGlobalSecondaryIndexAutoScalingDescription
    , replicaGlobalSecondaryIndexAutoScalingDescription
    , rgsiasdIndexStatus
    , rgsiasdProvisionedWriteCapacityAutoScalingSettings
    , rgsiasdProvisionedReadCapacityAutoScalingSettings
    , rgsiasdIndexName

    -- ** ReplicaGlobalSecondaryIndexAutoScalingUpdate
    , ReplicaGlobalSecondaryIndexAutoScalingUpdate
    , replicaGlobalSecondaryIndexAutoScalingUpdate
    , rgsiasuProvisionedReadCapacityAutoScalingUpdate
    , rgsiasuIndexName

    -- ** ReplicaGlobalSecondaryIndexDescription
    , ReplicaGlobalSecondaryIndexDescription
    , replicaGlobalSecondaryIndexDescription
    , rgsidProvisionedThroughputOverride
    , rgsidIndexName

    -- ** ReplicaGlobalSecondaryIndexSettingsDescription
    , ReplicaGlobalSecondaryIndexSettingsDescription
    , replicaGlobalSecondaryIndexSettingsDescription
    , rgsisdIndexStatus
    , rgsisdProvisionedReadCapacityUnits
    , rgsisdProvisionedWriteCapacityUnits
    , rgsisdProvisionedWriteCapacityAutoScalingSettings
    , rgsisdProvisionedReadCapacityAutoScalingSettings
    , rgsisdIndexName

    -- ** ReplicaGlobalSecondaryIndexSettingsUpdate
    , ReplicaGlobalSecondaryIndexSettingsUpdate
    , replicaGlobalSecondaryIndexSettingsUpdate
    , rgsisuProvisionedReadCapacityAutoScalingSettingsUpdate
    , rgsisuProvisionedReadCapacityUnits
    , rgsisuIndexName

    -- ** ReplicaSettingsDescription
    , ReplicaSettingsDescription
    , replicaSettingsDescription
    , rsdReplicaStatus
    , rsdReplicaProvisionedReadCapacityUnits
    , rsdReplicaProvisionedWriteCapacityUnits
    , rsdReplicaBillingModeSummary
    , rsdReplicaGlobalSecondaryIndexSettings
    , rsdReplicaProvisionedWriteCapacityAutoScalingSettings
    , rsdReplicaProvisionedReadCapacityAutoScalingSettings
    , rsdRegionName

    -- ** ReplicaSettingsUpdate
    , ReplicaSettingsUpdate
    , replicaSettingsUpdate
    , rsuReplicaProvisionedReadCapacityAutoScalingSettingsUpdate
    , rsuReplicaProvisionedReadCapacityUnits
    , rsuReplicaGlobalSecondaryIndexSettingsUpdate
    , rsuRegionName

    -- ** ReplicaUpdate
    , ReplicaUpdate
    , replicaUpdate
    , ruCreate
    , ruDelete

    -- ** ReplicationGroupUpdate
    , ReplicationGroupUpdate
    , replicationGroupUpdate
    , rguCreate
    , rguDelete
    , rguUpdate

    -- ** RestoreSummary
    , RestoreSummary
    , restoreSummary
    , rsSourceTableARN
    , rsSourceBackupARN
    , rsRestoreDateTime
    , rsRestoreInProgress

    -- ** SSEDescription
    , SSEDescription
    , sSEDescription
    , ssedStatus
    , ssedInaccessibleEncryptionDateTime
    , ssedSSEType
    , ssedKMSMasterKeyARN

    -- ** SSESpecification
    , SSESpecification
    , sSESpecification
    , ssesEnabled
    , ssesKMSMasterKeyId
    , ssesSSEType

    -- ** SourceTableDetails
    , SourceTableDetails
    , sourceTableDetails
    , stdTableSizeBytes
    , stdTableARN
    , stdBillingMode
    , stdItemCount
    , stdTableName
    , stdTableId
    , stdKeySchema
    , stdTableCreationDateTime
    , stdProvisionedThroughput

    -- ** SourceTableFeatureDetails
    , SourceTableFeatureDetails
    , sourceTableFeatureDetails
    , stfdStreamDescription
    , stfdGlobalSecondaryIndexes
    , stfdLocalSecondaryIndexes
    , stfdSSEDescription
    , stfdTimeToLiveDescription

    -- ** StreamSpecification
    , StreamSpecification
    , streamSpecification
    , ssStreamViewType
    , ssStreamEnabled

    -- ** TableAutoScalingDescription
    , TableAutoScalingDescription
    , tableAutoScalingDescription
    , tasdTableStatus
    , tasdReplicas
    , tasdTableName

    -- ** TableDescription
    , TableDescription
    , tableDescription
    , tdRestoreSummary
    , tdGlobalTableVersion
    , tdTableSizeBytes
    , tdAttributeDefinitions
    , tdLatestStreamARN
    , tdProvisionedThroughput
    , tdTableStatus
    , tdTableARN
    , tdKeySchema
    , tdGlobalSecondaryIndexes
    , tdLatestStreamLabel
    , tdBillingModeSummary
    , tdLocalSecondaryIndexes
    , tdCreationDateTime
    , tdSSEDescription
    , tdTableId
    , tdReplicas
    , tdItemCount
    , tdArchivalSummary
    , tdTableName
    , tdStreamSpecification

    -- ** Tag
    , Tag
    , tag
    , tagKey
    , tagValue

    -- ** TimeToLiveDescription
    , TimeToLiveDescription
    , timeToLiveDescription
    , ttldTimeToLiveStatus
    , ttldAttributeName

    -- ** TimeToLiveSpecification
    , TimeToLiveSpecification
    , timeToLiveSpecification
    , ttlsEnabled
    , ttlsAttributeName

    -- ** TransactGetItem
    , TransactGetItem
    , transactGetItem
    , tgiGet

    -- ** TransactWriteItem
    , TransactWriteItem
    , transactWriteItem
    , twiConditionCheck
    , twiPut
    , twiDelete
    , twiUpdate

    -- ** Update
    , Update
    , update
    , uExpressionAttributeNames
    , uExpressionAttributeValues
    , uReturnValuesOnConditionCheckFailure
    , uConditionExpression
    , uKey
    , uUpdateExpression
    , uTableName

    -- ** UpdateGlobalSecondaryIndexAction
    , UpdateGlobalSecondaryIndexAction
    , updateGlobalSecondaryIndexAction
    , ugsiaIndexName
    , ugsiaProvisionedThroughput

    -- ** UpdateReplicationGroupMemberAction
    , UpdateReplicationGroupMemberAction
    , updateReplicationGroupMemberAction
    , urgmaKMSMasterKeyId
    , urgmaProvisionedThroughputOverride
    , urgmaGlobalSecondaryIndexes
    , urgmaRegionName

    -- ** WriteRequest
    , WriteRequest
    , writeRequest
    , wrDeleteRequest
    , wrPutRequest
    ) where

import Network.AWS.DynamoDB.BatchExecuteStatement
import Network.AWS.DynamoDB.BatchGetItem
import Network.AWS.DynamoDB.BatchWriteItem
import Network.AWS.DynamoDB.CreateBackup
import Network.AWS.DynamoDB.CreateGlobalTable
import Network.AWS.DynamoDB.CreateTable
import Network.AWS.DynamoDB.DeleteBackup
import Network.AWS.DynamoDB.DeleteItem
import Network.AWS.DynamoDB.DeleteTable
import Network.AWS.DynamoDB.DescribeBackup
import Network.AWS.DynamoDB.DescribeContinuousBackups
import Network.AWS.DynamoDB.DescribeContributorInsights
import Network.AWS.DynamoDB.DescribeEndpoints
import Network.AWS.DynamoDB.DescribeExport
import Network.AWS.DynamoDB.DescribeGlobalTable
import Network.AWS.DynamoDB.DescribeGlobalTableSettings
import Network.AWS.DynamoDB.DescribeKinesisStreamingDestination
import Network.AWS.DynamoDB.DescribeLimits
import Network.AWS.DynamoDB.DescribeTable
import Network.AWS.DynamoDB.DescribeTableReplicaAutoScaling
import Network.AWS.DynamoDB.DescribeTimeToLive
import Network.AWS.DynamoDB.DisableKinesisStreamingDestination
import Network.AWS.DynamoDB.EnableKinesisStreamingDestination
import Network.AWS.DynamoDB.ExecuteStatement
import Network.AWS.DynamoDB.ExecuteTransaction
import Network.AWS.DynamoDB.ExportTableToPointInTime
import Network.AWS.DynamoDB.GetItem
import Network.AWS.DynamoDB.ListBackups
import Network.AWS.DynamoDB.ListContributorInsights
import Network.AWS.DynamoDB.ListExports
import Network.AWS.DynamoDB.ListGlobalTables
import Network.AWS.DynamoDB.ListTables
import Network.AWS.DynamoDB.ListTagsOfResource
import Network.AWS.DynamoDB.PutItem
import Network.AWS.DynamoDB.Query
import Network.AWS.DynamoDB.RestoreTableFromBackup
import Network.AWS.DynamoDB.RestoreTableToPointInTime
import Network.AWS.DynamoDB.Scan
import Network.AWS.DynamoDB.TagResource
import Network.AWS.DynamoDB.TransactGetItems
import Network.AWS.DynamoDB.TransactWriteItems
import Network.AWS.DynamoDB.Types
import Network.AWS.DynamoDB.UntagResource
import Network.AWS.DynamoDB.UpdateContinuousBackups
import Network.AWS.DynamoDB.UpdateContributorInsights
import Network.AWS.DynamoDB.UpdateGlobalTable
import Network.AWS.DynamoDB.UpdateGlobalTableSettings
import Network.AWS.DynamoDB.UpdateItem
import Network.AWS.DynamoDB.UpdateTable
import Network.AWS.DynamoDB.UpdateTableReplicaAutoScaling
import Network.AWS.DynamoDB.UpdateTimeToLive
import Network.AWS.DynamoDB.Waiters

{- $errors
Error matchers are designed for use with the functions provided by
<http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
This allows catching (and rethrowing) service specific errors returned
by 'DynamoDB'.
-}

{- $operations
Some AWS operations return results that are incomplete and require subsequent
requests in order to obtain the entire result set. The process of sending
subsequent requests to continue where a previous request left off is called
pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
1000 objects at a time, and you must send subsequent requests with the
appropriate Marker in order to retrieve the next page of results.

Operations that have an 'AWSPager' instance can transparently perform subsequent
requests, correctly setting Markers and other request facets to iterate through
the entire result set of a truncated API operation. Operations which support
this have an additional note in the documentation.

Many operations have the ability to filter results on the server side. See the
individual operation parameters for details.
-}

{- $waiters
Waiters poll by repeatedly sending a request until some remote success condition
configured by the 'Wait' specification is fulfilled. The 'Wait' specification
determines how many attempts should be made, in addition to delay and retry strategies.
-}
