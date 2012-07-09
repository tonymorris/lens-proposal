module Control.Foldable where

import Prelude()
import Control.Monoid

class Foldable f where
  foldMap ::
    Monoid m =>
    (a -> m)
    -> f a
    -> m
