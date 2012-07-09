module Control.Semigroup where

class Semigroup s where
  (<>) ::
    s
    -> s
    -> s
