{-# LANGUAGE OverloadedStrings #-}
module Main where

import           Nanopage
import           Partials.MyTagList

partials = [Partial MyTagList]

main :: IO ()
main = do
    opts <- parseCliOpts
    runNanopage opts partials
