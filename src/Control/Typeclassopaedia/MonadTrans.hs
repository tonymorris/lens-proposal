module Control.Typeclassopaedia.MonadTrans where

import Prelude()
import Control.Typeclassopaedia.Monad

class MonadTrans f where
  lift ::
    Monad g =>
    g a
    -> f g a