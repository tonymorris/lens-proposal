module Data.Lens where

import Data.Store

newtype Lens x a b c =
  Lens (x -> Store a b c)

type LensU x y =
  Lens x y x y
