module Data.Store where

import Prelude()
import Data.Identity

data StoreTP f a b c =
  StoreTP (f (b -> c)) a

type StoreT f a b =
  StoreTP f a a b

type StoreP a b c =
  StoreTP Identity a b c

type Store a b =
  StoreP a a b

store ::
  (b -> c)
  -> a
  -> StoreP a b c
store f =
  StoreTP (Identity f)
