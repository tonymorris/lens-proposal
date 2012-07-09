module Data.State where

import Data.Identity

newtype StateT s f a =
  StateT (s -> f (a, s))

type State s a =
  StateT s Identity a
