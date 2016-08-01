module Pipes.Show (
  module X,
  print
                  )where

import TextShow as X
import TextShow.Generic as X

import Pipes

print :: (MonadIO m,TextShow a) => Consumer a m r
print = for cat (\a -> liftIO (printT a))
