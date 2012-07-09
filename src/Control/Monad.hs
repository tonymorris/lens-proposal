module Control.Monad where

import Control.Applicative
import Control.Bind

class (Bind f, Applicative f) => Monad f where
