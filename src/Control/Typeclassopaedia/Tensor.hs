module Control.Typeclassopaedia.Tensor where

import Control.Typeclassopaedia.Semigroupoid

class Semigroupoid c => Tensor c where
  (***) ::
    c w x
    -> c y z
    -> c (w, y) (x, z)