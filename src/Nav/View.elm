module Nav.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (href, class)
import Html.Events exposing (onClick)

import Model exposing (..)
import Msg exposing (..)


link : Msg -> String -> String -> Html Msg
link msg className navLinkName =
  a [ class className
    , href "javascript://"
    , onClick msg
    ]
    [ text navLinkName ]

{-
btn : Msg -> String -> String -> Html Msg
btn msg className navLinkName =
  button [ class className
         , onClick msg
         ]
         [ text navLinkName ]
-}
