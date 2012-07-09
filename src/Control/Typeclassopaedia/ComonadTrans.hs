module Control.Typeclassopaedia.ComonadTrans where

import Prelude()
import Control.Typeclassopaedia.Comonad

class ComonadTrans f where
  lower ::
    Comonad g =>
    f g a
    -> g a
