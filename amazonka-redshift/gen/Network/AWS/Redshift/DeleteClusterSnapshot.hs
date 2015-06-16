{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.Redshift.DeleteClusterSnapshot
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

-- | Deletes the specified manual snapshot. The snapshot must be in the
-- @available@ state, with no other users authorized to access the
-- snapshot.
--
-- Unlike automated snapshots, manual snapshots are retained even after you
-- delete your cluster. Amazon Redshift does not delete your manual
-- snapshots. You must delete manual snapshot explicitly to avoid getting
-- charged. If other accounts are authorized to access the snapshot, you
-- must revoke all of the authorizations before you can delete the
-- snapshot.
--
-- <http://docs.aws.amazon.com/redshift/latest/APIReference/API_DeleteClusterSnapshot.html>
module Network.AWS.Redshift.DeleteClusterSnapshot
    (
    -- * Request
      DeleteClusterSnapshot
    -- ** Request constructor
    , deleteClusterSnapshot
    -- ** Request lenses
    , dcsSnapshotClusterIdentifier
    , dcsSnapshotIdentifier

    -- * Response
    , DeleteClusterSnapshotResponse
    -- ** Response constructor
    , deleteClusterSnapshotResponse
    -- ** Response lenses
    , dcsrSnapshot
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.Redshift.Types

-- | /See:/ 'deleteClusterSnapshot' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dcsSnapshotClusterIdentifier'
--
-- * 'dcsSnapshotIdentifier'
data DeleteClusterSnapshot = DeleteClusterSnapshot'{_dcsSnapshotClusterIdentifier :: Maybe Text, _dcsSnapshotIdentifier :: Text} deriving (Eq, Read, Show)

-- | 'DeleteClusterSnapshot' smart constructor.
deleteClusterSnapshot :: Text -> DeleteClusterSnapshot
deleteClusterSnapshot pSnapshotIdentifier = DeleteClusterSnapshot'{_dcsSnapshotClusterIdentifier = Nothing, _dcsSnapshotIdentifier = pSnapshotIdentifier};

-- | The unique identifier of the cluster the snapshot was created from. This
-- parameter is required if your IAM user has a policy containing a
-- snapshot resource element that specifies anything other than * for the
-- cluster name.
--
-- Constraints: Must be the name of valid cluster.
dcsSnapshotClusterIdentifier :: Lens' DeleteClusterSnapshot (Maybe Text)
dcsSnapshotClusterIdentifier = lens _dcsSnapshotClusterIdentifier (\ s a -> s{_dcsSnapshotClusterIdentifier = a});

-- | The unique identifier of the manual snapshot to be deleted.
--
-- Constraints: Must be the name of an existing snapshot that is in the
-- @available@ state.
dcsSnapshotIdentifier :: Lens' DeleteClusterSnapshot Text
dcsSnapshotIdentifier = lens _dcsSnapshotIdentifier (\ s a -> s{_dcsSnapshotIdentifier = a});

instance AWSRequest DeleteClusterSnapshot where
        type Sv DeleteClusterSnapshot = Redshift
        type Rs DeleteClusterSnapshot =
             DeleteClusterSnapshotResponse
        request = post
        response
          = receiveXMLWrapper "DeleteClusterSnapshotResult"
              (\ s h x ->
                 DeleteClusterSnapshotResponse' <$>
                   (x .@? "Snapshot"))

instance ToHeaders DeleteClusterSnapshot where
        toHeaders = const mempty

instance ToPath DeleteClusterSnapshot where
        toPath = const "/"

instance ToQuery DeleteClusterSnapshot where
        toQuery DeleteClusterSnapshot'{..}
          = mconcat
              ["Action" =: ("DeleteClusterSnapshot" :: ByteString),
               "Version" =: ("2012-12-01" :: ByteString),
               "SnapshotClusterIdentifier" =:
                 _dcsSnapshotClusterIdentifier,
               "SnapshotIdentifier" =: _dcsSnapshotIdentifier]

-- | /See:/ 'deleteClusterSnapshotResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dcsrSnapshot'
newtype DeleteClusterSnapshotResponse = DeleteClusterSnapshotResponse'{_dcsrSnapshot :: Maybe Snapshot} deriving (Eq, Read, Show)

-- | 'DeleteClusterSnapshotResponse' smart constructor.
deleteClusterSnapshotResponse :: DeleteClusterSnapshotResponse
deleteClusterSnapshotResponse = DeleteClusterSnapshotResponse'{_dcsrSnapshot = Nothing};

-- | FIXME: Undocumented member.
dcsrSnapshot :: Lens' DeleteClusterSnapshotResponse (Maybe Snapshot)
dcsrSnapshot = lens _dcsrSnapshot (\ s a -> s{_dcsrSnapshot = a});
