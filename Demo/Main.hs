{-# LANGUAGE OverloadedStrings #-}
module Main where

import           Nanopage
import           Partials.MyTagList

main :: IO ()
main = do
    opts <- parseCliOpts
    runNanopage opts
