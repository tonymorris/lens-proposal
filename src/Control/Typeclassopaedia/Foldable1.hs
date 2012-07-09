module Control.Typeclassopaedia.Foldable1 where

import Prelude()
import Control.Typeclassopaedia.Foldable
import Control.Typeclassopaedia.Semigroup

class Foldable f => Foldable1 f where
  foldMap1 ::
    Semigroup m =>
    (a -> m)
    -> f a
    -> m
