module Control.Foldable1 where

import Prelude()
import Control.Foldable
import Control.Semigroup

class Foldable f => Foldable1 f where
  foldMap1 ::
    Semigroup m =>
    (a -> m)
    -> f a
    -> m
