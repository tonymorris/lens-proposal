module Data.ToLens where

import Data.Iso
import Data.LabelledIso
import Data.LabelledLens
import Data.Lens
import Data.Store

class ToLens lens where
  toLens ::
    lens x a b c
    -> LensP x a b c

instance ToLens IsoP where
  toLens (IsoP f g) =
    LensP (\x -> store g (f x))

instance ToLens LabelledIsoP where
  toLens (LabelledIsoP _ _ x) =
    toLens x

instance ToLens LabelledLensP where
  toLens (LabelledLensP _ _ x) =
    x

instance ToLens LensP where
  toLens x =
    x

