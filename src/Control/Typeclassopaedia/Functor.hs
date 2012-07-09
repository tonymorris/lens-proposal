module Control.Typeclassopaedia.Functor where

import Prelude()

class Functor f where
  (<$>) ::
    (a -> b)
    -> f a
    -> f b
