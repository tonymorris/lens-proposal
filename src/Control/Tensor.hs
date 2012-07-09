module Control.Tensor where

import Control.Semigroupoid

class Semigroupoid c => Tensor c where
  (***) ::
    c w x
    -> c y z
    -> c (w, y) (x, z)