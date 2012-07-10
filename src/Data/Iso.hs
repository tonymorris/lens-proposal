module Data.Iso where

import Prelude()

data IsoP x a b c =
  IsoP (x -> a) (b -> c)

type Iso x y =
  IsoP x y y x
