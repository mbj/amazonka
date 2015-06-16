{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.Directory Service.GetSnapshotLimits
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

-- | Obtains the manual snapshot limits for a directory.
--
-- <http://docs.aws.amazon.com/directoryservice/latest/devguide/API_GetSnapshotLimits.html>
module Network.AWS.Directory Service.GetSnapshotLimits
    (
    -- * Request
      GetSnapshotLimits
    -- ** Request constructor
    , getSnapshotLimits
    -- ** Request lenses
    , gslDirectoryId

    -- * Response
    , GetSnapshotLimitsResponse
    -- ** Response constructor
    , getSnapshotLimitsResponse
    -- ** Response lenses
    , gslrSnapshotLimits
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.Directory Service.Types

-- | /See:/ 'getSnapshotLimits' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'gslDirectoryId'
newtype GetSnapshotLimits = GetSnapshotLimits'{_gslDirectoryId :: Text} deriving (Eq, Read, Show)

-- | 'GetSnapshotLimits' smart constructor.
getSnapshotLimits :: Text -> GetSnapshotLimits
getSnapshotLimits pDirectoryId = GetSnapshotLimits'{_gslDirectoryId = pDirectoryId};

-- | Contains the identifier of the directory to obtain the limits for.
gslDirectoryId :: Lens' GetSnapshotLimits Text
gslDirectoryId = lens _gslDirectoryId (\ s a -> s{_gslDirectoryId = a});

instance AWSRequest GetSnapshotLimits where
        type Sv GetSnapshotLimits = Directory Service
        type Rs GetSnapshotLimits = GetSnapshotLimitsResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 GetSnapshotLimitsResponse' <$>
                   (x .?> "SnapshotLimits"))

instance ToHeaders GetSnapshotLimits where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("DirectoryService_20150416.GetSnapshotLimits" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON GetSnapshotLimits where
        toJSON GetSnapshotLimits'{..}
          = object ["DirectoryId" .= _gslDirectoryId]

instance ToPath GetSnapshotLimits where
        toPath = const "/"

instance ToQuery GetSnapshotLimits where
        toQuery = const mempty

-- | /See:/ 'getSnapshotLimitsResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'gslrSnapshotLimits'
newtype GetSnapshotLimitsResponse = GetSnapshotLimitsResponse'{_gslrSnapshotLimits :: Maybe SnapshotLimits} deriving (Eq, Read, Show)

-- | 'GetSnapshotLimitsResponse' smart constructor.
getSnapshotLimitsResponse :: GetSnapshotLimitsResponse
getSnapshotLimitsResponse = GetSnapshotLimitsResponse'{_gslrSnapshotLimits = Nothing};

-- | A SnapshotLimits object that contains the manual snapshot limits for the
-- specified directory.
gslrSnapshotLimits :: Lens' GetSnapshotLimitsResponse (Maybe SnapshotLimits)
gslrSnapshotLimits = lens _gslrSnapshotLimits (\ s a -> s{_gslrSnapshotLimits = a});
