module Page.NotFound exposing (..)

import Html exposing (..)

import Model exposing (..)
--import Nav.Model exposing (..)
import Msg exposing (..)


view : Model -> Html Msg
view model =
    div []
        [ text "Not Found"
        ]
