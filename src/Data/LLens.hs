module Data.LLens where

import Data.Text
import Data.Lens

data LLens x a b c =
  LLens Text Text (Lens x a b c)
