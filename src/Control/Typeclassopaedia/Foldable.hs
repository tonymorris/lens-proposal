module Control.Typeclassopaedia.Foldable where

import Prelude()
import Control.Typeclassopaedia.Monoid

class Foldable f where
  foldMap ::
    Monoid m =>
    (a -> m)
    -> f a
    -> m
