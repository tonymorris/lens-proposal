module Data.Store where

import Prelude()
import Data.Identity

data StoreT f a b c =
  StoreT (f (b -> c)) a

type StoreTU f a b =
  StoreT f a a b

type Store a b c =
  StoreT Identity a b c

type StoreU a b =
  Store a a b

store ::
  (b -> c)
  -> a
  -> Store a b c
store f =
  StoreT (Identity f)
