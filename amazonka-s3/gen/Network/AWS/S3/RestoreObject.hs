{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.S3.RestoreObject
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

-- | Restores an archived copy of an object back into Amazon S3
--
-- <http://docs.aws.amazon.com/AmazonS3/latest/API/RestoreObject.html>
module Network.AWS.S3.RestoreObject
    (
    -- * Request
      RestoreObject
    -- ** Request constructor
    , restoreObject
    -- ** Request lenses
    , roVersionId
    , roRequestPayer
    , roRestoreRequest
    , roBucket
    , roKey

    -- * Response
    , RestoreObjectResponse
    -- ** Response constructor
    , restoreObjectResponse
    -- ** Response lenses
    , rorRequestCharged
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.S3.Types

-- | /See:/ 'restoreObject' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'roVersionId'
--
-- * 'roRequestPayer'
--
-- * 'roRestoreRequest'
--
-- * 'roBucket'
--
-- * 'roKey'
data RestoreObject = RestoreObject'{_roVersionId :: Maybe ObjectVersionId, _roRequestPayer :: Maybe RequestPayer, _roRestoreRequest :: Maybe RestoreRequest, _roBucket :: BucketName, _roKey :: ObjectKey} deriving (Eq, Read, Show)

-- | 'RestoreObject' smart constructor.
restoreObject :: BucketName -> ObjectKey -> RestoreObject
restoreObject pBucket pKey = RestoreObject'{_roVersionId = Nothing, _roRequestPayer = Nothing, _roRestoreRequest = Nothing, _roBucket = pBucket, _roKey = pKey};

-- | FIXME: Undocumented member.
roVersionId :: Lens' RestoreObject (Maybe ObjectVersionId)
roVersionId = lens _roVersionId (\ s a -> s{_roVersionId = a});

-- | FIXME: Undocumented member.
roRequestPayer :: Lens' RestoreObject (Maybe RequestPayer)
roRequestPayer = lens _roRequestPayer (\ s a -> s{_roRequestPayer = a});

-- | FIXME: Undocumented member.
roRestoreRequest :: Lens' RestoreObject (Maybe RestoreRequest)
roRestoreRequest = lens _roRestoreRequest (\ s a -> s{_roRestoreRequest = a});

-- | FIXME: Undocumented member.
roBucket :: Lens' RestoreObject BucketName
roBucket = lens _roBucket (\ s a -> s{_roBucket = a});

-- | FIXME: Undocumented member.
roKey :: Lens' RestoreObject ObjectKey
roKey = lens _roKey (\ s a -> s{_roKey = a});

instance AWSRequest RestoreObject where
        type Sv RestoreObject = S3
        type Rs RestoreObject = RestoreObjectResponse
        request = postXML
        response
          = receiveXML
              (\ s h x ->
                 RestoreObjectResponse' <$>
                   (h .#? "x-amz-request-charged"))

instance ToElement RestoreObject where
        toElement
          = mkElement
              "{http://s3.amazonaws.com/doc/2006-03-01/}RestoreRequest"
              .
              _roRestoreRequest

instance ToHeaders RestoreObject where
        toHeaders RestoreObject'{..}
          = mconcat ["x-amz-request-payer" =# _roRequestPayer]

instance ToPath RestoreObject where
        toPath RestoreObject'{..}
          = mconcat ["/", toText _roBucket, "/", toText _roKey]

instance ToQuery RestoreObject where
        toQuery RestoreObject'{..}
          = mconcat ["versionId" =: _roVersionId, "restore"]

-- | /See:/ 'restoreObjectResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'rorRequestCharged'
newtype RestoreObjectResponse = RestoreObjectResponse'{_rorRequestCharged :: Maybe RequestCharged} deriving (Eq, Read, Show)

-- | 'RestoreObjectResponse' smart constructor.
restoreObjectResponse :: RestoreObjectResponse
restoreObjectResponse = RestoreObjectResponse'{_rorRequestCharged = Nothing};

-- | FIXME: Undocumented member.
rorRequestCharged :: Lens' RestoreObjectResponse (Maybe RequestCharged)
rorRequestCharged = lens _rorRequestCharged (\ s a -> s{_rorRequestCharged = a});
