module Data.Id where

import Prelude()

-- Unboxed value
newtype Id a =
  Id a -- runId
