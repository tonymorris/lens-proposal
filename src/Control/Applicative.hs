module Control.Applicative where

import Prelude()
import Control.Apply

class Apply f => Applicative f where
  point ::
    a
    -> f a
