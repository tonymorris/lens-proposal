module Control.Category where

import Control.Semigroupoid

class Semigroupoid c => Category c where
  id ::
    c a a