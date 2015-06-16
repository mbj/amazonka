{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.Support.DescribeServices
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

-- | Returns the current list of AWS services and a list of service
-- categories that applies to each one. You then use service names and
-- categories in your CreateCase requests. Each AWS service has its own set
-- of categories.
--
-- The service codes and category codes correspond to the values that are
-- displayed in the __Service__ and __Category__ drop-down lists on the AWS
-- Support Center
-- <https://console.aws.amazon.com/support/home#/case/create Create Case>
-- page. The values in those fields, however, do not necessarily match the
-- service codes and categories returned by the @DescribeServices@ request.
-- Always use the service codes and categories obtained programmatically.
-- This practice ensures that you always have the most recent set of
-- service and category codes.
--
-- <http://docs.aws.amazon.com/awssupport/latest/APIReference/API_DescribeServices.html>
module Network.AWS.Support.DescribeServices
    (
    -- * Request
      DescribeServices
    -- ** Request constructor
    , describeServices
    -- ** Request lenses
    , dsServiceCodeList
    , dsLanguage

    -- * Response
    , DescribeServicesResponse
    -- ** Response constructor
    , describeServicesResponse
    -- ** Response lenses
    , dsrServices
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.Support.Types

-- | /See:/ 'describeServices' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dsServiceCodeList'
--
-- * 'dsLanguage'
data DescribeServices = DescribeServices'{_dsServiceCodeList :: Maybe [Text], _dsLanguage :: Maybe Text} deriving (Eq, Read, Show)

-- | 'DescribeServices' smart constructor.
describeServices :: DescribeServices
describeServices = DescribeServices'{_dsServiceCodeList = Nothing, _dsLanguage = Nothing};

-- | A JSON-formatted list of service codes available for AWS services.
dsServiceCodeList :: Lens' DescribeServices [Text]
dsServiceCodeList = lens _dsServiceCodeList (\ s a -> s{_dsServiceCodeList = a}) . _Default;

-- | The ISO 639-1 code for the language in which AWS provides support. AWS
-- Support currently supports English (\"en\") and Japanese (\"ja\").
-- Language parameters must be passed explicitly for operations that take
-- them.
dsLanguage :: Lens' DescribeServices (Maybe Text)
dsLanguage = lens _dsLanguage (\ s a -> s{_dsLanguage = a});

instance AWSRequest DescribeServices where
        type Sv DescribeServices = Support
        type Rs DescribeServices = DescribeServicesResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 DescribeServicesResponse' <$>
                   (x .?> "services" .!@ mempty))

instance ToHeaders DescribeServices where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AWSSupport_20130415.DescribeServices" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DescribeServices where
        toJSON DescribeServices'{..}
          = object
              ["serviceCodeList" .= _dsServiceCodeList,
               "language" .= _dsLanguage]

instance ToPath DescribeServices where
        toPath = const "/"

instance ToQuery DescribeServices where
        toQuery = const mempty

-- | /See:/ 'describeServicesResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dsrServices'
newtype DescribeServicesResponse = DescribeServicesResponse'{_dsrServices :: Maybe [SupportService]} deriving (Eq, Read, Show)

-- | 'DescribeServicesResponse' smart constructor.
describeServicesResponse :: DescribeServicesResponse
describeServicesResponse = DescribeServicesResponse'{_dsrServices = Nothing};

-- | A JSON-formatted list of AWS services.
dsrServices :: Lens' DescribeServicesResponse [SupportService]
dsrServices = lens _dsrServices (\ s a -> s{_dsrServices = a}) . _Default;
