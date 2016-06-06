module Pipes.Base (
  module X
  ) where

 -- Base Types --

import Data.Int as X
import Data.Bits as X
import Data.Word as X
import Data.Bool as X
import Data.Char as X (Char,ord,chr)
import Data.Maybe as X hiding (fromJust)
import Data.Either as X
import Data.Tuple as X

import Data.Function as X (
  const,
  flip,
  fix,
  on)
import Control.Category as X (
  Category(..),
  id,
  (.))

-- Type Classes --

import Data.Eq as X
import Data.Ord as X
import Data.Monoid as X hiding (mconcat)
import Data.Functor.Identity as X
import Data.Functor as X (
    Functor(..)
  , ($>)
  , (<$>)
  , void
  )

-- Deepseq --

import Control.DeepSeq as X (
    NFData(..)
  , ($!!)
  , deepseq
  , force
  )

-- Base GHC types --

import GHC.IO as X (IO)
import GHC.Num as X
import GHC.Real as X
import GHC.Float as X
import GHC.Show as X
import GHC.Exts as X (
    Constraint
  , Ptr
  , FunPtr
  , the
  )

-- Generics
import GHC.Generics (
    Generic(..)
  , Rep
  , K1(..)
  , M1(..)
  , U1(..)
  , V1
  , D1
  , C1
  , S1
  , (:+:)
  , (:*:)
  , NoSelector
  , Rec0
  , Par0
  , Constructor(..)
  , Selector(..)
  , Arity(..)
  , Fixity(..)
  )

-- ST
import Control.Monad.ST as X

-- Concurrency and Parallelism
-- import Control.Exception as X hiding (Handler)
-- TODO: This doesnt opperate well with the pipes ecosystem does pipes-safe fill the need of this package?
import Control.Concurrent as X hiding (yield)
import Control.Concurrent.Async as X --TODO: Investigate if safe or nonsafe is needed
