module Control.Traversable where

import Prelude()
import Control.Applicative
import Control.Functor
import Control.Foldable

class (Functor f, Foldable f) => Traversable f where
  traverse ::
    Applicative g =>
    f (g a)
    -> g (f a)
