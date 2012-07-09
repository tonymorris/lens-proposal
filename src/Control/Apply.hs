module Control.Apply where

import Control.Functor

class Functor f => Apply f where
  (<*>) ::
    f (a -> b)
    -> f a
    -> f b
