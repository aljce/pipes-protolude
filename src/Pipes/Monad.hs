module Pipes.Monad (
    Monad(..)
  , MonadPlus(..)

  , (=<<)
  , (>=>)
  , (<=<)
  , forever

  , join
  , mfilter

  , guard
  , when
  , unless

  , liftM'
  , liftM2'

  , ap
  , (<$!>)
  ) where

import Prelude (seq)
-- import Pipes.Base (seq)

import Control.Monad

liftM' :: Monad m => (a -> b) -> m a -> m b
liftM' = (<$!>)
{-# INLINE liftM' #-}

liftM2' :: (Monad m) => (a -> b -> c) -> m a -> m b -> m c
liftM2' f a b = do
  x <- a
  y <- b
  let z = f x y
  z `seq` return z
{-# INLINE liftM2' #-}
