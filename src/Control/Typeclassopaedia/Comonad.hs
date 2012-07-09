module Control.Typeclassopaedia.Comonad where

import Prelude()
import Control.Typeclassopaedia.Extend

class Extend f => Comonad f where
  copoint ::
    f a
    -> a
