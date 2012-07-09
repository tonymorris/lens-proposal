module Control.Typeclassopaedia.Traversable where

import Prelude()
import Control.Typeclassopaedia.Applicative
import Control.Typeclassopaedia.Functor
import Control.Typeclassopaedia.Foldable

class (Functor f, Foldable f) => Traversable f where
  traverse ::
    Applicative g =>
    f (g a)
    -> g (f a)
