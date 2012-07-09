module Control.Typeclassopaedia.Traversable1 where

import Prelude()
import Control.Typeclassopaedia.Apply
import Control.Typeclassopaedia.Foldable1
import Control.Typeclassopaedia.Traversable

class (Foldable1 f, Traversable f) => Traversable1 f where
  traverse1 ::
    Apply g =>
    f (g a)
    -> g (f a)
