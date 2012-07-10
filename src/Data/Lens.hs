module Data.Lens where

import Data.Store

newtype LensP x a b c =
  LensP (x -> StoreP a b c)

type Lens x y =
  LensP x y y x
