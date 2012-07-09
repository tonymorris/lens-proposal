module Control.Typeclassopaedia.ComonadHoist where

import Prelude()
import Control.Typeclassopaedia.Comonad
import Control.Typeclassopaedia.ComonadTrans

class ComonadTrans f => ComonadHoist f where
  cohoist ::
    Comonad g =>
    (forall a. g a -> h a)
    -> f g b
    -> f h b
