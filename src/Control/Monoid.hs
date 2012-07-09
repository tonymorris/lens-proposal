module Control.Monoid where

import Control.Semigroup

class Semigroup s => Monoid s where
  identity ::
    s
