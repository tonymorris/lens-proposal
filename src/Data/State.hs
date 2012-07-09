module Data.State where

import Data.Id

newtype StateT s f a =
  StateT (s -> f (a, s))

type State s a =
  StateT s Id a
