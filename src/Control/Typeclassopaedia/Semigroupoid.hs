module Control.Typeclassopaedia.Semigroupoid where

class Semigroupoid c where
  (.) ::
    c y z
    -> c x y
    -> c x z
