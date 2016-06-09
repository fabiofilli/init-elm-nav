module Page.NotFound exposing (..)

import Html exposing (..)

import Nav.Model exposing (..)
import Msg exposing (..)


view : NavModel -> Html msg
view model =
    div []
        [ text "Not Found"
        ]
