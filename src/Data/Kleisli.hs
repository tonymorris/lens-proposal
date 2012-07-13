module Data.Kleisli where

import Data.Id
import Control.Applicative
import Control.Apply
import Control.Bind
import Control.Functor
import Control.Monad
import Control.Monoid
import Control.Semigroup
import Control.Unzip
import Control.Zip

newtype Kleisli a f b =
  Kleisli (a -> f b)

type Reader a b =
  Kleisli a Id b

instance Applicative f => Applicative (Kleisli a f) where
  point a =
    Kleisli (\_ -> point a)

instance Apply f => Apply (Kleisli a f) where
  Kleisli f <*> Kleisli g =
    Kleisli (\a -> f a <*> g a)

instance Bind f => Bind (Kleisli a f) where
  f =<< Kleisli g =
    Kleisli (\x -> (\u -> let Kleisli e = f u in e x) =<< g x)

instance Functor f => Functor (Kleisli a f) where
  f <$> Kleisli g =
    Kleisli (\a -> f <$> g a)

instance Monad f => Monad (Kleisli a f)

instance (Apply f, Semigroup b) => Semigroup (Kleisli a f b) where
  Kleisli f <> Kleisli g =
    Kleisli (\a -> (<>) <$> f a <*> g a)

instance (Applicative f, Monoid b) => Monoid (Kleisli a f b) where
  identity =
    Kleisli (\_ -> point identity)

instance Unzip f => Unzip (Kleisli a f) where
  unzip (Kleisli f) =
    (Kleisli (\x -> let (s, _) = unzip (f x) in s), Kleisli (\x -> let (_, t) = unzip (f x) in t))

instance Zip f => Zip (Kleisli a f) where
  zip (Kleisli a) (Kleisli b) =
    Kleisli (\x -> zip (a x) (b x))
