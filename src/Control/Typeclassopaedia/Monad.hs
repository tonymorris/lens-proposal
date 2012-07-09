module Control.Typeclassopaedia.Monad where

import Control.Typeclassopaedia.Applicative
import Control.Typeclassopaedia.Bind

class (Bind f, Applicative f) => Monad f where
