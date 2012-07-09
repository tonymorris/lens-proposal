module Data.Identity where

import Prelude()

-- Unboxed value
newtype Identity a =
  Identity a
