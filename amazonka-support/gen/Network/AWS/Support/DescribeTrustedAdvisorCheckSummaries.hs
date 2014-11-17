{-# LANGUAGE DeriveGeneric               #-}
{-# LANGUAGE GeneralizedNewtypeDeriving  #-}
{-# LANGUAGE FlexibleInstances           #-}
{-# LANGUAGE NoImplicitPrelude           #-}
{-# LANGUAGE OverloadedStrings           #-}
{-# LANGUAGE RecordWildCards             #-}
{-# LANGUAGE TypeFamilies                #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Module      : Network.AWS.Support.DescribeTrustedAdvisorCheckSummaries
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Returns the summaries of the results of the Trusted Advisor checks that
-- have the specified check IDs. Check IDs can be obtained by calling
-- DescribeTrustedAdvisorChecks. The response contains an array of
-- TrustedAdvisorCheckSummary objects.
--
-- <http://docs.aws.amazon.com/awssupport/latest/APIReference/API_DescribeTrustedAdvisorCheckSummaries.html>
module Network.AWS.Support.DescribeTrustedAdvisorCheckSummaries
    (
    -- * Request
      DescribeTrustedAdvisorCheckSummaries
    -- ** Request constructor
    , describeTrustedAdvisorCheckSummaries
    -- ** Request lenses
    , dtacsCheckIds

    -- * Response
    , DescribeTrustedAdvisorCheckSummariesResponse
    -- ** Response constructor
    , describeTrustedAdvisorCheckSummariesResponse
    -- ** Response lenses
    , dtacsrSummaries
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.JSON
import Network.AWS.Support.Types
import qualified GHC.Exts

newtype DescribeTrustedAdvisorCheckSummaries = DescribeTrustedAdvisorCheckSummaries
    { _dtacsCheckIds :: [Text]
    } deriving (Eq, Ord, Show, Generic, Monoid, Semigroup)

instance GHC.Exts.IsList DescribeTrustedAdvisorCheckSummaries where
    type Item DescribeTrustedAdvisorCheckSummaries = Text

    fromList = DescribeTrustedAdvisorCheckSummaries . GHC.Exts.fromList
    toList   = GHC.Exts.toList . _dtacsCheckIds

-- | 'DescribeTrustedAdvisorCheckSummaries' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dtacsCheckIds' @::@ ['Text']
--
describeTrustedAdvisorCheckSummaries :: DescribeTrustedAdvisorCheckSummaries
describeTrustedAdvisorCheckSummaries = DescribeTrustedAdvisorCheckSummaries
    { _dtacsCheckIds = mempty
    }

-- | The IDs of the Trusted Advisor checks.
dtacsCheckIds :: Lens' DescribeTrustedAdvisorCheckSummaries [Text]
dtacsCheckIds = lens _dtacsCheckIds (\s a -> s { _dtacsCheckIds = a })

newtype DescribeTrustedAdvisorCheckSummariesResponse = DescribeTrustedAdvisorCheckSummariesResponse
    { _dtacsrSummaries :: [TrustedAdvisorCheckSummary]
    } deriving (Eq, Show, Generic, Monoid, Semigroup)

instance GHC.Exts.IsList DescribeTrustedAdvisorCheckSummariesResponse where
    type Item DescribeTrustedAdvisorCheckSummariesResponse = TrustedAdvisorCheckSummary

    fromList = DescribeTrustedAdvisorCheckSummariesResponse . GHC.Exts.fromList
    toList   = GHC.Exts.toList . _dtacsrSummaries

-- | 'DescribeTrustedAdvisorCheckSummariesResponse' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dtacsrSummaries' @::@ ['TrustedAdvisorCheckSummary']
--
describeTrustedAdvisorCheckSummariesResponse :: DescribeTrustedAdvisorCheckSummariesResponse
describeTrustedAdvisorCheckSummariesResponse = DescribeTrustedAdvisorCheckSummariesResponse
    { _dtacsrSummaries = mempty
    }

-- | The summary information for the requested Trusted Advisor checks.
dtacsrSummaries :: Lens' DescribeTrustedAdvisorCheckSummariesResponse [TrustedAdvisorCheckSummary]
dtacsrSummaries = lens _dtacsrSummaries (\s a -> s { _dtacsrSummaries = a })

instance ToPath DescribeTrustedAdvisorCheckSummaries where
    toPath = const "/"

instance ToQuery DescribeTrustedAdvisorCheckSummaries where
    toQuery = const mempty

instance ToHeaders DescribeTrustedAdvisorCheckSummaries
instance ToJSON DescribeTrustedAdvisorCheckSummaries where
    toJSON = genericToJSON jsonOptions

instance AWSRequest DescribeTrustedAdvisorCheckSummaries where
    type Sv DescribeTrustedAdvisorCheckSummaries = Support
    type Rs DescribeTrustedAdvisorCheckSummaries = DescribeTrustedAdvisorCheckSummariesResponse

    request  = post "DescribeTrustedAdvisorCheckSummaries"
    response = jsonResponse

instance FromJSON DescribeTrustedAdvisorCheckSummariesResponse where
    parseJSON = genericParseJSON jsonOptions
