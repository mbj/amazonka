{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.EC2.CreateInstanceExportTask
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

-- | Exports a running or stopped instance to an S3 bucket.
--
-- For information about the supported operating systems, image formats,
-- and known limitations for the types of instances you can export, see
-- <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ExportingEC2Instances.html Exporting EC2 Instances>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateInstanceExportTask.html>
module Network.AWS.EC2.CreateInstanceExportTask
    (
    -- * Request
      CreateInstanceExportTask
    -- ** Request constructor
    , createInstanceExportTask
    -- ** Request lenses
    , cietTargetEnvironment
    , cietExportToS3Task
    , cietDescription
    , cietInstanceId

    -- * Response
    , CreateInstanceExportTaskResponse
    -- ** Response constructor
    , createInstanceExportTaskResponse
    -- ** Response lenses
    , cietrExportTask
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.EC2.Types

-- | /See:/ 'createInstanceExportTask' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'cietTargetEnvironment'
--
-- * 'cietExportToS3Task'
--
-- * 'cietDescription'
--
-- * 'cietInstanceId'
data CreateInstanceExportTask = CreateInstanceExportTask'{_cietTargetEnvironment :: Maybe ExportEnvironment, _cietExportToS3Task :: Maybe ExportToS3TaskSpecification, _cietDescription :: Maybe Text, _cietInstanceId :: Text} deriving (Eq, Read, Show)

-- | 'CreateInstanceExportTask' smart constructor.
createInstanceExportTask :: Text -> CreateInstanceExportTask
createInstanceExportTask pInstanceId = CreateInstanceExportTask'{_cietTargetEnvironment = Nothing, _cietExportToS3Task = Nothing, _cietDescription = Nothing, _cietInstanceId = pInstanceId};

-- | The target virtualization environment.
cietTargetEnvironment :: Lens' CreateInstanceExportTask (Maybe ExportEnvironment)
cietTargetEnvironment = lens _cietTargetEnvironment (\ s a -> s{_cietTargetEnvironment = a});

-- | The format and location for an instance export task.
cietExportToS3Task :: Lens' CreateInstanceExportTask (Maybe ExportToS3TaskSpecification)
cietExportToS3Task = lens _cietExportToS3Task (\ s a -> s{_cietExportToS3Task = a});

-- | A description for the conversion task or the resource being exported.
-- The maximum length is 255 bytes.
cietDescription :: Lens' CreateInstanceExportTask (Maybe Text)
cietDescription = lens _cietDescription (\ s a -> s{_cietDescription = a});

-- | The ID of the instance.
cietInstanceId :: Lens' CreateInstanceExportTask Text
cietInstanceId = lens _cietInstanceId (\ s a -> s{_cietInstanceId = a});

instance AWSRequest CreateInstanceExportTask where
        type Sv CreateInstanceExportTask = EC2
        type Rs CreateInstanceExportTask =
             CreateInstanceExportTaskResponse
        request = post
        response
          = receiveXML
              (\ s h x ->
                 CreateInstanceExportTaskResponse' <$>
                   (x .@? "exportTask"))

instance ToHeaders CreateInstanceExportTask where
        toHeaders = const mempty

instance ToPath CreateInstanceExportTask where
        toPath = const "/"

instance ToQuery CreateInstanceExportTask where
        toQuery CreateInstanceExportTask'{..}
          = mconcat
              ["Action" =:
                 ("CreateInstanceExportTask" :: ByteString),
               "Version" =: ("2015-04-15" :: ByteString),
               "TargetEnvironment" =: _cietTargetEnvironment,
               "ExportToS3" =: _cietExportToS3Task,
               "Description" =: _cietDescription,
               "InstanceId" =: _cietInstanceId]

-- | /See:/ 'createInstanceExportTaskResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'cietrExportTask'
newtype CreateInstanceExportTaskResponse = CreateInstanceExportTaskResponse'{_cietrExportTask :: Maybe ExportTask} deriving (Eq, Read, Show)

-- | 'CreateInstanceExportTaskResponse' smart constructor.
createInstanceExportTaskResponse :: CreateInstanceExportTaskResponse
createInstanceExportTaskResponse = CreateInstanceExportTaskResponse'{_cietrExportTask = Nothing};

-- | Information about the instance export task.
cietrExportTask :: Lens' CreateInstanceExportTaskResponse (Maybe ExportTask)
cietrExportTask = lens _cietrExportTask (\ s a -> s{_cietrExportTask = a});
