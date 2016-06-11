module Main exposing (..)

import Navigation
import Html exposing (..)
import Hop exposing (matchUrl)
import Hop.Types exposing (Router)

import Model exposing (init)
import Update exposing (update, urlUpdate)
import Msg exposing (..)
import View exposing (..)

import Nav.Config as Nav


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none


main : Program Never
main =
    Navigation.program Nav.urlParser
        { init = init
        , update = update
        , urlUpdate = urlUpdate
        , view = view
        , subscriptions = subscriptions
        }
