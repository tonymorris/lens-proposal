module Control.Typeclassopaedia.Applicative where

import Prelude()
import Control.Typeclassopaedia.Apply

class Apply f => Applicative f where
  point ::
    a
    -> f a
