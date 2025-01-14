module Data.UnixTime.Types where

import Data.ByteString
import Data.ByteString.Char8 ()
import Data.Int
import Foreign.C.Types

-- | Data structure for Unix time.
data UnixTime = UnixTime {
  -- | Seconds from 1st Jan 1970
    utSeconds :: {-# UNPACK #-} !CTime
  -- | Micro seconds (i.e. 10^(-6))
  , utMicroSeconds :: {-# UNPACK #-} !Int32
  } deriving (Eq,Ord,Show)

-- | Format of the strptime()/strftime() style.
type Format = ByteString

-- | Data structure for UnixTime diff.
data UnixDiffTime = UnixDiffTime {-# UNPACK #-} !CTime
                                 {-# UNPACK #-} !Int32 deriving (Eq,Ord,Show)
