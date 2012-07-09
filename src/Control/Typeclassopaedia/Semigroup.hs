module Control.Typeclassopaedia.Semigroup where

import Prelude()

class Semigroup s where
  (<>) ::
    s
    -> s
    -> s
