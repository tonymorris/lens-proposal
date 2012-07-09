module Control.Typeclassopaedia.Semigroupoid where

import Prelude()

class Semigroupoid c where
  (.) ::
    c y z
    -> c x y
    -> c x z
