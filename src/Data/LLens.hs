module Data.LLens where

import Prelude()
import Data.Text
import Data.Lens
import Data.Store

data LLens x a b c =
  LLens Text Text (Lens x a b c)

type LLensU x y =
  LLens x y x y
