module Control.Traversable1 where

import Prelude()
import Control.Apply
import Control.Foldable1
import Control.Traversable

class (Foldable1 f, Traversable f) => Traversable1 f where
  traverse1 ::
    Apply g =>
    f (g a)
    -> g (f a)
