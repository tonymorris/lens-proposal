module Control.Typeclassopaedia.Bind where

import Control.Typeclassopaedia.Apply

class Apply f => Bind f where
  (=<<) ::
    (a -> f b)
    -> f a
    -> f b
