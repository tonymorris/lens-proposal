module Control.ComonadHoist where

import Prelude()
import Control.Comonad
import Control.ComonadTrans

class ComonadTrans f => ComonadHoist f where
  cohoist ::
    Comonad g =>
    (forall a. g a -> h a)
    -> f g b
    -> f h b
