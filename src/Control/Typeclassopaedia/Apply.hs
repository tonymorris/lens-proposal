module Control.Typeclassopaedia.Apply where

import Control.Typeclassopaedia.Functor

class Functor f => Apply f where
  (<*>) ::
    f (a -> b)
    -> f a
    -> f b
