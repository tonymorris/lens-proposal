module Control.Typeclassopaedia.Semigroup where

class Semigroup s where
  (<>) ::
    s
    -> s
    -> s
