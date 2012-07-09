module Control.MonadTrans where

import Prelude()
import Control.Monad

class MonadTrans f where
  lift ::
    Monad g =>
    g a
    -> f g a
