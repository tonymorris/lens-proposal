module Control.Extend where

import Control.Functor

class Functor f => Extend f where
  (<<=) ::
    (f a -> b)
    -> f a
    -> f b
