{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.EMR.DescribeCluster
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

-- | Provides cluster-level details including status, hardware and software
-- configuration, VPC settings, and so on. For information about the
-- cluster steps, see ListSteps.
--
-- <http://docs.aws.amazon.com/ElasticMapReduce/latest/API/API_DescribeCluster.html>
module Network.AWS.EMR.DescribeCluster
    (
    -- * Request
      DescribeCluster
    -- ** Request constructor
    , describeCluster
    -- ** Request lenses
    , dcClusterId

    -- * Response
    , DescribeClusterResponse
    -- ** Response constructor
    , describeClusterResponse
    -- ** Response lenses
    , dcrCluster
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.EMR.Types

-- | /See:/ 'describeCluster' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dcClusterId'
newtype DescribeCluster = DescribeCluster'{_dcClusterId :: Text} deriving (Eq, Read, Show)

-- | 'DescribeCluster' smart constructor.
describeCluster :: Text -> DescribeCluster
describeCluster pClusterId = DescribeCluster'{_dcClusterId = pClusterId};

-- | The identifier of the cluster to describe.
dcClusterId :: Lens' DescribeCluster Text
dcClusterId = lens _dcClusterId (\ s a -> s{_dcClusterId = a});

instance AWSRequest DescribeCluster where
        type Sv DescribeCluster = EMR
        type Rs DescribeCluster = DescribeClusterResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 DescribeClusterResponse' <$> (x .:> "Cluster"))

instance ToHeaders DescribeCluster where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("ElasticMapReduce.DescribeCluster" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DescribeCluster where
        toJSON DescribeCluster'{..}
          = object ["ClusterId" .= _dcClusterId]

instance ToPath DescribeCluster where
        toPath = const "/"

instance ToQuery DescribeCluster where
        toQuery = const mempty

-- | /See:/ 'describeClusterResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dcrCluster'
newtype DescribeClusterResponse = DescribeClusterResponse'{_dcrCluster :: Cluster} deriving (Eq, Read, Show)

-- | 'DescribeClusterResponse' smart constructor.
describeClusterResponse :: Cluster -> DescribeClusterResponse
describeClusterResponse pCluster = DescribeClusterResponse'{_dcrCluster = pCluster};

-- | This output contains the details for the requested cluster.
dcrCluster :: Lens' DescribeClusterResponse Cluster
dcrCluster = lens _dcrCluster (\ s a -> s{_dcrCluster = a});
