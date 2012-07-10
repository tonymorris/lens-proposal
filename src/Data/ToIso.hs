module Data.ToIso where

import Data.ToLens
import Data.Iso
import Data.LabelledIso

class ToLens iso => ToIso iso where
  toIso ::
    iso x a b c
    -> IsoP x a b c

instance ToIso IsoP where
  toIso x =
    x

instance ToIso LabelledIsoP where
  toIso (LabelledIsoP _ _ x) =
    toIso x
