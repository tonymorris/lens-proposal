module Data.Store where

import Prelude()
import Data.Identity

data StoreT f a b c =
  StoreT (f (b -> c)) a

type Store a b c =
  StoreT Identity a b c
