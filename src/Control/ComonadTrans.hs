module Control.ComonadTrans where

import Prelude()
import Control.Comonad

class ComonadTrans f where
  lower ::
    Comonad g =>
    f g a
    -> g a
