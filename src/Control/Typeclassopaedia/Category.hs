module Control.Typeclassopaedia.Category where

import Control.Typeclassopaedia.Semigroupoid

class Semigroupoid c => Category c where
  id ::
    c a a