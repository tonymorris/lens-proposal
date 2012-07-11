module Data.Id where

import Prelude(Either(..))
import Control.Applicative
import Control.Apply
import Control.Bind
import Control.Comonad
import Control.Cozip
import Control.Extend
import Control.Foldable
import Control.Foldable1
import Control.Functor
import Control.Monad
import Control.Monoid
import Control.Semigroup
import Control.Traversable
import Control.Traversable1
import Control.Unzip
import Control.Zip

-- Unboxed value
newtype Id a =
  Id a -- runId

instance Applicative Id where
  point =
    Id

instance Apply Id where
  Id f <*> Id a =
    Id (f a)

instance Bind Id where
  f =<< Id a =
    f a

instance Comonad Id where
  copoint (Id a) =
    a

instance Cozip Id where
  cozip (Id (Left a)) =
    Left (Id a)
  cozip (Id (Right b)) =
    Right (Id b)

instance Extend Id where
  f <<= i =
    Id (f i)

instance Foldable Id where
  foldMap f (Id a) =
    f a

instance Foldable1 Id where
  foldMap1 f (Id a) =
    f a

instance Functor Id where
  f <$> Id a =
    Id (f a)

instance Monad Id where

instance Monoid a => Monoid (Id a) where
  identity =
    Id identity

instance Semigroup a => Semigroup (Id a) where
  Id x <> Id y =
    Id (x <> y)

instance Traversable Id where
  traverse (Id x) =
    Id <$> x

instance Traversable1 Id where
  traverse1 (Id x) =
    Id <$> x

instance Unzip Id where
  unzip (Id (a, b)) =
    (Id a, Id b)

instance Zip Id where
  zip (Id a) (Id b) =
    Id (a, b)
