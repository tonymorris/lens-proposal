module Control.Typeclassopaedia.MonadHoist where

import Prelude()
import Control.Typeclassopaedia.Monad
import Control.Typeclassopaedia.MonadTrans

class MonadTrans f => MonadHoist f where
  hoist ::
    Monad g =>
    (forall a. g a -> h a)
    -> f g b
    -> f h b
