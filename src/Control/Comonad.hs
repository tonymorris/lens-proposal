module Control.Comonad where

import Prelude()
import Control.Extend

class Extend f => Comonad f where
  copoint ::
    f a
    -> a
