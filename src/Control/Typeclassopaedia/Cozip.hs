module Control.Typeclassopaedia.Cozip where

import Prelude(Either)

class Cozip f where
  cozip ::
    f (Either a b)
    -> Either (f a) (f b)
