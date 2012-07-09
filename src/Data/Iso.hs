module Data.Iso where

import Prelude()

data IsoP x a b c =
  IsoP (b -> a) (x -> c)

type Iso x y =
  IsoP x y x y
