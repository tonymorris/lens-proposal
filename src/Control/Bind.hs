module Control.Bind where

import Control.Apply

class Apply f => Bind f where
  (=<<) ::
    (a -> f b)
    -> f a
    -> f b
