{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.AutoScaling.EnterStandby
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

-- | Moves the specified instances into @Standby@ mode.
--
-- For more information, see
-- <http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/AutoScalingInServiceState.html Auto Scaling InService State>
-- in the /Auto Scaling Developer Guide/.
--
-- <http://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_EnterStandby.html>
module Network.AWS.AutoScaling.EnterStandby
    (
    -- * Request
      EnterStandby
    -- ** Request constructor
    , enterStandby
    -- ** Request lenses
    , esInstanceIds
    , esAutoScalingGroupName
    , esShouldDecrementDesiredCapacity

    -- * Response
    , EnterStandbyResponse
    -- ** Response constructor
    , enterStandbyResponse
    -- ** Response lenses
    , esrActivities
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.AutoScaling.Types

-- | /See:/ 'enterStandby' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'esInstanceIds'
--
-- * 'esAutoScalingGroupName'
--
-- * 'esShouldDecrementDesiredCapacity'
data EnterStandby = EnterStandby'{_esInstanceIds :: Maybe [Text], _esAutoScalingGroupName :: Text, _esShouldDecrementDesiredCapacity :: Bool} deriving (Eq, Read, Show)

-- | 'EnterStandby' smart constructor.
enterStandby :: Text -> Bool -> EnterStandby
enterStandby pAutoScalingGroupName pShouldDecrementDesiredCapacity = EnterStandby'{_esInstanceIds = Nothing, _esAutoScalingGroupName = pAutoScalingGroupName, _esShouldDecrementDesiredCapacity = pShouldDecrementDesiredCapacity};

-- | One or more instances to move into @Standby@ mode. You must specify at
-- least one instance ID.
esInstanceIds :: Lens' EnterStandby [Text]
esInstanceIds = lens _esInstanceIds (\ s a -> s{_esInstanceIds = a}) . _Default;

-- | The name of the Auto Scaling group.
esAutoScalingGroupName :: Lens' EnterStandby Text
esAutoScalingGroupName = lens _esAutoScalingGroupName (\ s a -> s{_esAutoScalingGroupName = a});

-- | Specifies whether the instances moved to @Standby@ mode count as part of
-- the Auto Scaling group\'s desired capacity. If set, the desired capacity
-- for the Auto Scaling group decrements by the number of instances moved
-- to @Standby@ mode.
esShouldDecrementDesiredCapacity :: Lens' EnterStandby Bool
esShouldDecrementDesiredCapacity = lens _esShouldDecrementDesiredCapacity (\ s a -> s{_esShouldDecrementDesiredCapacity = a});

instance AWSRequest EnterStandby where
        type Sv EnterStandby = AutoScaling
        type Rs EnterStandby = EnterStandbyResponse
        request = post
        response
          = receiveXMLWrapper "EnterStandbyResult"
              (\ s h x ->
                 EnterStandbyResponse' <$>
                   (x .@? "Activities" .!@ mempty >>=
                      may (parseXMLList "member")))

instance ToHeaders EnterStandby where
        toHeaders = const mempty

instance ToPath EnterStandby where
        toPath = const "/"

instance ToQuery EnterStandby where
        toQuery EnterStandby'{..}
          = mconcat
              ["Action" =: ("EnterStandby" :: ByteString),
               "Version" =: ("2011-01-01" :: ByteString),
               "InstanceIds" =:
                 toQuery (toQueryList "member" <$> _esInstanceIds),
               "AutoScalingGroupName" =: _esAutoScalingGroupName,
               "ShouldDecrementDesiredCapacity" =:
                 _esShouldDecrementDesiredCapacity]

-- | /See:/ 'enterStandbyResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'esrActivities'
newtype EnterStandbyResponse = EnterStandbyResponse'{_esrActivities :: Maybe [Activity]} deriving (Eq, Read, Show)

-- | 'EnterStandbyResponse' smart constructor.
enterStandbyResponse :: EnterStandbyResponse
enterStandbyResponse = EnterStandbyResponse'{_esrActivities = Nothing};

-- | The activities related to moving instances into @Standby@ mode.
esrActivities :: Lens' EnterStandbyResponse [Activity]
esrActivities = lens _esrActivities (\ s a -> s{_esrActivities = a}) . _Default;
