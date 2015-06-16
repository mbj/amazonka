{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.CloudWatchLogs.DescribeMetricFilters
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

-- | Returns all the metrics filters associated with the specified log group.
-- The list returned in the response is ASCII-sorted by filter name.
--
-- By default, this operation returns up to 50 metric filters. If there are
-- more metric filters to list, the response would contain a @nextToken@
-- value in the response body. You can also limit the number of metric
-- filters returned in the response by specifying the @limit@ parameter in
-- the request.
--
-- <http://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeMetricFilters.html>
module Network.AWS.CloudWatchLogs.DescribeMetricFilters
    (
    -- * Request
      DescribeMetricFilters
    -- ** Request constructor
    , describeMetricFilters
    -- ** Request lenses
    , dmfFilterNamePrefix
    , dmfNextToken
    , dmfLimit
    , dmfLogGroupName

    -- * Response
    , DescribeMetricFiltersResponse
    -- ** Response constructor
    , describeMetricFiltersResponse
    -- ** Response lenses
    , dmfrNextToken
    , dmfrMetricFilters
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.CloudWatchLogs.Types

-- | /See:/ 'describeMetricFilters' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dmfFilterNamePrefix'
--
-- * 'dmfNextToken'
--
-- * 'dmfLimit'
--
-- * 'dmfLogGroupName'
data DescribeMetricFilters = DescribeMetricFilters'{_dmfFilterNamePrefix :: Maybe Text, _dmfNextToken :: Maybe Text, _dmfLimit :: Maybe Nat, _dmfLogGroupName :: Text} deriving (Eq, Read, Show)

-- | 'DescribeMetricFilters' smart constructor.
describeMetricFilters :: Text -> DescribeMetricFilters
describeMetricFilters pLogGroupName = DescribeMetricFilters'{_dmfFilterNamePrefix = Nothing, _dmfNextToken = Nothing, _dmfLimit = Nothing, _dmfLogGroupName = pLogGroupName};

-- | Will only return metric filters that match the provided
-- filterNamePrefix. If you don\'t specify a value, no prefix filter is
-- applied.
dmfFilterNamePrefix :: Lens' DescribeMetricFilters (Maybe Text)
dmfFilterNamePrefix = lens _dmfFilterNamePrefix (\ s a -> s{_dmfFilterNamePrefix = a});

-- | A string token used for pagination that points to the next page of
-- results. It must be a value obtained from the response of the previous
-- @DescribeMetricFilters@ request.
dmfNextToken :: Lens' DescribeMetricFilters (Maybe Text)
dmfNextToken = lens _dmfNextToken (\ s a -> s{_dmfNextToken = a});

-- | The maximum number of items returned in the response. If you don\'t
-- specify a value, the request would return up to 50 items.
dmfLimit :: Lens' DescribeMetricFilters (Maybe Natural)
dmfLimit = lens _dmfLimit (\ s a -> s{_dmfLimit = a}) . mapping _Nat;

-- | The log group name for which metric filters are to be listed.
dmfLogGroupName :: Lens' DescribeMetricFilters Text
dmfLogGroupName = lens _dmfLogGroupName (\ s a -> s{_dmfLogGroupName = a});

instance AWSRequest DescribeMetricFilters where
        type Sv DescribeMetricFilters = CloudWatchLogs
        type Rs DescribeMetricFilters =
             DescribeMetricFiltersResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 DescribeMetricFiltersResponse' <$>
                   (x .?> "nextToken") <*>
                     (x .?> "metricFilters" .!@ mempty))

instance ToHeaders DescribeMetricFilters where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("Logs_20140328.DescribeMetricFilters" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DescribeMetricFilters where
        toJSON DescribeMetricFilters'{..}
          = object
              ["filterNamePrefix" .= _dmfFilterNamePrefix,
               "nextToken" .= _dmfNextToken, "limit" .= _dmfLimit,
               "logGroupName" .= _dmfLogGroupName]

instance ToPath DescribeMetricFilters where
        toPath = const "/"

instance ToQuery DescribeMetricFilters where
        toQuery = const mempty

-- | /See:/ 'describeMetricFiltersResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dmfrNextToken'
--
-- * 'dmfrMetricFilters'
data DescribeMetricFiltersResponse = DescribeMetricFiltersResponse'{_dmfrNextToken :: Maybe Text, _dmfrMetricFilters :: Maybe [MetricFilter]} deriving (Eq, Read, Show)

-- | 'DescribeMetricFiltersResponse' smart constructor.
describeMetricFiltersResponse :: DescribeMetricFiltersResponse
describeMetricFiltersResponse = DescribeMetricFiltersResponse'{_dmfrNextToken = Nothing, _dmfrMetricFilters = Nothing};

-- | FIXME: Undocumented member.
dmfrNextToken :: Lens' DescribeMetricFiltersResponse (Maybe Text)
dmfrNextToken = lens _dmfrNextToken (\ s a -> s{_dmfrNextToken = a});

-- | FIXME: Undocumented member.
dmfrMetricFilters :: Lens' DescribeMetricFiltersResponse [MetricFilter]
dmfrMetricFilters = lens _dmfrMetricFilters (\ s a -> s{_dmfrMetricFilters = a}) . _Default;
