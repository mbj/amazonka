{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.AutoScaling.DeleteTags
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

-- | Deletes the specified tags.
--
-- <http://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_DeleteTags.html>
module Network.AWS.AutoScaling.DeleteTags
    (
    -- * Request
      DeleteTags
    -- ** Request constructor
    , deleteTags
    -- ** Request lenses
    , dtTags

    -- * Response
    , DeleteTagsResponse
    -- ** Response constructor
    , deleteTagsResponse
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.AutoScaling.Types

-- | /See:/ 'deleteTags' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dtTags'
newtype DeleteTags = DeleteTags'{_dtTags :: [Tag]} deriving (Eq, Read, Show)

-- | 'DeleteTags' smart constructor.
deleteTags :: DeleteTags
deleteTags = DeleteTags'{_dtTags = mempty};

-- | Each tag should be defined by its resource type, resource ID, key,
-- value, and a propagate flag. Valid values are: Resource type =
-- /auto-scaling-group/, Resource ID = /AutoScalingGroupName/, key=/value/,
-- value=/value/, propagate=/true/ or /false/.
dtTags :: Lens' DeleteTags [Tag]
dtTags = lens _dtTags (\ s a -> s{_dtTags = a});

instance AWSRequest DeleteTags where
        type Sv DeleteTags = AutoScaling
        type Rs DeleteTags = DeleteTagsResponse
        request = post
        response = receiveNull DeleteTagsResponse'

instance ToHeaders DeleteTags where
        toHeaders = const mempty

instance ToPath DeleteTags where
        toPath = const "/"

instance ToQuery DeleteTags where
        toQuery DeleteTags'{..}
          = mconcat
              ["Action" =: ("DeleteTags" :: ByteString),
               "Version" =: ("2011-01-01" :: ByteString),
               "Tags" =: toQueryList "member" _dtTags]

-- | /See:/ 'deleteTagsResponse' smart constructor.
data DeleteTagsResponse = DeleteTagsResponse' deriving (Eq, Read, Show)

-- | 'DeleteTagsResponse' smart constructor.
deleteTagsResponse :: DeleteTagsResponse
deleteTagsResponse = DeleteTagsResponse';
