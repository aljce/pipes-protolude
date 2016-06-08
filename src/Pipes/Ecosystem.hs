module Pipes.Ecosystem (
  module X
  ) where

import Pipes as X
import Pipes.Lift as X hiding (catchError)
-- Import Pipes.Prelude banshing string based functions
import Pipes.Prelude as X (
  repeatM,
  replicateM,
  unfoldr,
  drain,
  map,
  mapM,
  sequence,
  mapFoldable,
  filter,
  filterM,
  take,
  takeWhile,
  takeWhile',
  drop,
  dropWhile,
  concat,
  chain,
  seq,
  loop,
  zip,
  zipWith,
  tee
                          )
import Pipes.Concurrent as X hiding (
  Unbounded,
  Bounded,
  Single,
  Latest,
  Newest,
  New
                                    )
import Control.Foldl as X hiding (
  fold,
  foldM,
  scan,
  Handler, -- Not only does this conflict with execptions which are a needed
          -- feature of a prelude I feel it doesnt have enough of a use case
          -- to merit importing
  handles,
  HandlerM,
  handlesM,
  folded,
  filtered
                                 )

import Pipes.Extras as X (
  fold,
  foldM,
  scan,
  scanM
                         )

import Pipes.Group as X hiding (
  groups,
  groupsBy,
  groupsBy',
  chunksOf
                               )
import Control.Monad.Trans.Free as X

import Pipes.Safe as X (
  SafeT,
  runSafeT,
  runSafeP,
  ReleaseKey,
  MonadSafe(..),
  onException,
  finally,
  bracket,
  bracket_,
  bracketOnError
                       )
import Control.Monad.Catch as X
    ( MonadCatch(..)
    , MonadThrow(..)
    , MonadMask(..)
    , mask_
    , uninterruptibleMask_
    , catchAll
    , catchIOError
    , catchJust
    , catchIf
    , Handler(..)
    , catches
    , handle
    , handleAll
    , handleIOError
    , handleJust
    , handleIf
    , try
    , tryJust
    , Exception(..)
    , SomeException
    )

import Pipes.Text as X hiding (
  map,
  concatMap,
  take,
  takeWhile,
  filter,
  scan,
  toLazy, -- We dont like lazy text and bytestrings here in pipes world
  toLazyM,
  head,
  last,
  null,
  length,
  any,
  all,
  maximum,
  minimum,
  find,
  index,
  drop,
  dropWhile
                              )
import Pipes.Text.IO as X

import Pipes.Parse as X hiding (span,splitAt,groupBy,group)
