module Page.Meetup exposing (..)

import Html exposing (..)

import Model exposing (..)
--import Nav.Model exposing (..)
import Msg exposing (..)


view : Model -> Html msg
view model =
    div []
        [ text "Meetup"
        ]
