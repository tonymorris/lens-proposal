module Control.Unzip where

import Prelude()

class Unzip f where
  unzip ::
    f (a, b)
    -> (f a, f b)
