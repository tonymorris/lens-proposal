module Data.Kleisli where

import Data.Id

newtype Kleisli a f b =
  Kleisli (a -> f b)

type Reader a b =
  Kleisli a Id b
