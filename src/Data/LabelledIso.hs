module Data.LabelledIso where

import Prelude()
import Data.Text
import Data.Iso

data LabelledIsoP x a b c =
  LabelledIsoP Text Text (IsoP x a b c)

type LabelledIso x y =
  LabelledIsoP x y y x
