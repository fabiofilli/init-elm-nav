module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

import Model exposing (..)
import Nav.Msg exposing (NavMsg(..))
import Nav.View as Nav

import Page.Welcome
import Page.Meetup
import Page.NotFound


view : Model -> Html NavMsg
view model =
    div []
        [ pageNav model
        , pageContent model
        ]


pageContent : Model -> Html NavMsg
pageContent model =
  case model.navModel.page of
    WelcomePage ->
      Page.Welcome.view model

    MeetupPage ->
      Page.Meetup.view model

    NotFoundPage ->
      Page.NotFound.view model


pageNav : Model -> Html NavMsg
pageNav model =
    div []
        [ div []
              [ Nav.link ToWelcomePage "" "Welcome"
              , text "|"
              , Nav.link ToMeetupPage "" "Meetup"
              ]
        ]
