module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

import Model exposing (..)
import Msg exposing (Msg(..))
import Nav.Msg
import Nav.Model exposing (Page(..))

import Page.Welcome
import Page.Meetup
import Page.NotFound


view : Model -> Html Msg
view model =
    div []
        [ pageNav model
        , pageContent model
        ]


pageContent : Model -> Html Msg
pageContent model =
  case model.navModel.page of
    WelcomePage ->
      Page.Welcome.view model

    MeetupPage ->
      Page.Meetup.view model

    NotFoundPage ->
      Page.NotFound.view model


pageNav : Model -> Html Msg
pageNav model =
    div []
        [ div []
              [ link (NavMsg Nav.Msg.ToWelcomePage) "" "Welcome"
              , text "|"
              , link (NavMsg Nav.Msg.ToMeetupPage) "" "Meetup"
              ]
        ]


link : Msg -> String -> String -> Html Msg
link msg className navLinkName =
  a [ class className
    , href "javascript://"
    , onClick msg
    ]
    [ text navLinkName ]
