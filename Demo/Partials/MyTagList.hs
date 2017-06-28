{-# LANGUAGE OverloadedStrings #-}
module Partials.MyTagList (MyTagList(..)) where

import           Control.Monad               (forM_)
import           FileDB
import           GHC.Exts                    (fromString)
import           Text.Blaze.Html5            ((!))
import qualified Text.Blaze.Html5            as H
import qualified Text.Blaze.Html5.Attributes as A

import           Partial

-- | Partial "MyTagList" displays a sequence of <div class="chip">, one for each tag.
data MyTagList = MyTagList

instance Partial_ MyTagList where
    partialRoutes_ _ = []
    partialRender_   = _partial
    partialName_ _   = "mytaglist"

_partial :: MyTagList -> FileDB -> Page -> Params -> H.Html
_partial _ _ p _ = H.div ! A.class_ (fromString "taglist") $
    forM_ (tags p) ((H.div ! tagClass) . H.toHtml)

tagClass :: H.Attribute
tagClass = A.class_ (fromString "chip")
