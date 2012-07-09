module Control.Typeclassopaedia.Extend where

import Control.Typeclassopaedia.Functor

class Functor f => Extend f where
  (<<=) ::
    (f a -> b)
    -> f a
    -> f b
