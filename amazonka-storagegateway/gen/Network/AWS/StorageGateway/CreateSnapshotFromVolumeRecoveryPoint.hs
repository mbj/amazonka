{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.StorageGateway.CreateSnapshotFromVolumeRecoveryPoint
-- Copyright   : (c) 2013-2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- | This operation initiates a snapshot of a gateway from a volume recovery
-- point. This operation is supported only for the gateway-cached volume
-- architecture (see ).
--
-- A volume recovery point is a point in time at which all data of the
-- volume is consistent and from which you can create a snapshot. To get a
-- list of volume recovery point for gateway-cached volumes, use
-- ListVolumeRecoveryPoints.
--
-- In the @CreateSnapshotFromVolumeRecoveryPoint@ request, you identify the
-- volume by providing its Amazon Resource Name (ARN). You must also
-- provide a description for the snapshot. When AWS Storage Gateway takes a
-- snapshot of the specified volume, the snapshot and its description
-- appear in the AWS Storage Gateway console. In response, AWS Storage
-- Gateway returns you a snapshot ID. You can use this snapshot ID to check
-- the snapshot progress or later use it when you want to create a volume
-- from a snapshot.
--
-- To list or delete a snapshot, you must use the Amazon EC2 API. For more
-- information, in /Amazon Elastic Compute Cloud API Reference/.
--
-- <http://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateSnapshotFromVolumeRecoveryPoint.html>
module Network.AWS.StorageGateway.CreateSnapshotFromVolumeRecoveryPoint
    (
    -- * Request
      CreateSnapshotFromVolumeRecoveryPoint
    -- ** Request constructor
    , createSnapshotFromVolumeRecoveryPoint
    -- ** Request lenses
    , csfvrpVolumeARN
    , csfvrpSnapshotDescription

    -- * Response
    , CreateSnapshotFromVolumeRecoveryPointResponse
    -- ** Response constructor
    , createSnapshotFromVolumeRecoveryPointResponse
    -- ** Response lenses
    , csfvrprVolumeRecoveryPointTime
    , csfvrprVolumeARN
    , csfvrprSnapshotId
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.StorageGateway.Types

-- | /See:/ 'createSnapshotFromVolumeRecoveryPoint' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'csfvrpVolumeARN'
--
-- * 'csfvrpSnapshotDescription'
data CreateSnapshotFromVolumeRecoveryPoint = CreateSnapshotFromVolumeRecoveryPoint'{_csfvrpVolumeARN :: Text, _csfvrpSnapshotDescription :: Text} deriving (Eq, Read, Show)

-- | 'CreateSnapshotFromVolumeRecoveryPoint' smart constructor.
createSnapshotFromVolumeRecoveryPoint :: Text -> Text -> CreateSnapshotFromVolumeRecoveryPoint
createSnapshotFromVolumeRecoveryPoint pVolumeARN pSnapshotDescription = CreateSnapshotFromVolumeRecoveryPoint'{_csfvrpVolumeARN = pVolumeARN, _csfvrpSnapshotDescription = pSnapshotDescription};

-- | FIXME: Undocumented member.
csfvrpVolumeARN :: Lens' CreateSnapshotFromVolumeRecoveryPoint Text
csfvrpVolumeARN = lens _csfvrpVolumeARN (\ s a -> s{_csfvrpVolumeARN = a});

-- | FIXME: Undocumented member.
csfvrpSnapshotDescription :: Lens' CreateSnapshotFromVolumeRecoveryPoint Text
csfvrpSnapshotDescription = lens _csfvrpSnapshotDescription (\ s a -> s{_csfvrpSnapshotDescription = a});

instance AWSRequest
         CreateSnapshotFromVolumeRecoveryPoint where
        type Sv CreateSnapshotFromVolumeRecoveryPoint =
             StorageGateway
        type Rs CreateSnapshotFromVolumeRecoveryPoint =
             CreateSnapshotFromVolumeRecoveryPointResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 CreateSnapshotFromVolumeRecoveryPointResponse' <$>
                   (x .?> "VolumeRecoveryPointTime") <*>
                     (x .?> "VolumeARN")
                     <*> (x .?> "SnapshotId"))

instance ToHeaders
         CreateSnapshotFromVolumeRecoveryPoint where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("StorageGateway_20130630.CreateSnapshotFromVolumeRecoveryPoint"
                       :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON CreateSnapshotFromVolumeRecoveryPoint
         where
        toJSON CreateSnapshotFromVolumeRecoveryPoint'{..}
          = object
              ["VolumeARN" .= _csfvrpVolumeARN,
               "SnapshotDescription" .= _csfvrpSnapshotDescription]

instance ToPath CreateSnapshotFromVolumeRecoveryPoint
         where
        toPath = const "/"

instance ToQuery
         CreateSnapshotFromVolumeRecoveryPoint where
        toQuery = const mempty

-- | /See:/ 'createSnapshotFromVolumeRecoveryPointResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'csfvrprVolumeRecoveryPointTime'
--
-- * 'csfvrprVolumeARN'
--
-- * 'csfvrprSnapshotId'
data CreateSnapshotFromVolumeRecoveryPointResponse = CreateSnapshotFromVolumeRecoveryPointResponse'{_csfvrprVolumeRecoveryPointTime :: Maybe Text, _csfvrprVolumeARN :: Maybe Text, _csfvrprSnapshotId :: Maybe Text} deriving (Eq, Read, Show)

-- | 'CreateSnapshotFromVolumeRecoveryPointResponse' smart constructor.
createSnapshotFromVolumeRecoveryPointResponse :: CreateSnapshotFromVolumeRecoveryPointResponse
createSnapshotFromVolumeRecoveryPointResponse = CreateSnapshotFromVolumeRecoveryPointResponse'{_csfvrprVolumeRecoveryPointTime = Nothing, _csfvrprVolumeARN = Nothing, _csfvrprSnapshotId = Nothing};

-- | FIXME: Undocumented member.
csfvrprVolumeRecoveryPointTime :: Lens' CreateSnapshotFromVolumeRecoveryPointResponse (Maybe Text)
csfvrprVolumeRecoveryPointTime = lens _csfvrprVolumeRecoveryPointTime (\ s a -> s{_csfvrprVolumeRecoveryPointTime = a});

-- | FIXME: Undocumented member.
csfvrprVolumeARN :: Lens' CreateSnapshotFromVolumeRecoveryPointResponse (Maybe Text)
csfvrprVolumeARN = lens _csfvrprVolumeARN (\ s a -> s{_csfvrprVolumeARN = a});

-- | FIXME: Undocumented member.
csfvrprSnapshotId :: Lens' CreateSnapshotFromVolumeRecoveryPointResponse (Maybe Text)
csfvrprSnapshotId = lens _csfvrprSnapshotId (\ s a -> s{_csfvrprSnapshotId = a});
