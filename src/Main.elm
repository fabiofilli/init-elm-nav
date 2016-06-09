module Main exposing (..)

import Navigation
import Html exposing (..)
import Hop exposing (matchUrl)
import Hop.Types exposing (Router)

import Model exposing (..)
import Update exposing (..)
import Msg exposing (..)
import View exposing (..)

import Nav.Config as Nav


main : Program Never
main =
    Navigation.program Nav.urlParser
        { init = init
        , update = update
        , urlUpdate = Nav.urlUpdate
        , view = view
        , subscriptions = \_ -> Sub.none
        }
