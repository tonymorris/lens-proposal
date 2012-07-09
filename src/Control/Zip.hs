module Control.Zip where

import Prelude()

class Zip f where
  zip ::
    f a
    -> f b
    -> f (a, b)
