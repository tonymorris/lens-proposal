module Data.LabelledLens where

import Prelude()
import Data.Text
import Data.Lens

data LabelledLensP x a b c =
  LabelledLensP Text Text (LensP x a b c)

type LabelledLens x y =
  LabelledLensP x y x y
