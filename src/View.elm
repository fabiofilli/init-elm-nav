module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

import Model exposing (..)
import Nav.Msg exposing (NavMsg(..))

import Page.Welcome
import Page.Meetup
-- import Page.EmailSubscription
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

    -- EmailSubscriptionPage ->
    --   Page.EmailSubscription.view model

    NotFoundPage ->
      Page.NotFound.view model


pageNav : Model -> Html NavMsg
pageNav model =
    div []
        [ div []
              [ navLink ToWelcomePage "Welcome"
              , text "|"
              , navLink ToMeetupPage "Meetup"
              -- , text "|"
              -- , navLink ToEmailSubscriptionPage "Email Subscription"
              ]
        ]


navLink : NavMsg -> String -> Html NavMsg
navLink navMsg navLinkName =
  a [ href "javascript://"
    , onClick navMsg
    ]
    [ text navLinkName ]
