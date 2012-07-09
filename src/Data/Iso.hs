module Data.Iso where

import Prelude()

data Iso x a b c =
  Iso (b -> a) (x -> c)

type IsoU x y =
  Iso x y x y
