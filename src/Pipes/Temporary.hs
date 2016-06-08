module Pipes.Temporary where

import Prelude

import Pipes
import Pipes.Internal

import Control.Monad.Except

exceptP
    :: Monad m
    => Proxy a' a b' b m (Either e r)
    -> Proxy a' a b' b (ExceptT e m) r
exceptP p = do
    x <- unsafeHoist lift p
    lift $ ExceptT (return x)
