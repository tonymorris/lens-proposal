module Control.MonadHoist where

import Prelude()
import Control.Monad
import Control.MonadTrans

class MonadTrans f => MonadHoist f where
  hoist ::
    Monad g =>
    (forall a. g a -> h a)
    -> f g b
    -> f h b
