module Data.Iso where

import Prelude()

data IsoP x a b c =
  IsoP (c -> b) (x -> a)

type Iso x y =
  IsoP x y x y
