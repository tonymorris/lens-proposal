module Control.Typeclassopaedia.Monoid where

import Control.Typeclassopaedia.Semigroup

class Semigroup s => Monoid s where
  identity ::
    s
