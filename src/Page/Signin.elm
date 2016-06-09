module Page.Signin exposing (..)

import Html exposing (..)

import Model exposing (..)
import Msg exposing (..)


view : Model -> Html msg
view model =
    div []
        [ text "Sign in"
        ]
