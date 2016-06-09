module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

import Model exposing (..)
import Nav.Msg exposing (NavMsg(..))

import Page.Welcome
import Page.Signin
import Page.EmailSubscription
import Page.NotFound


view : Model -> Html NavMsg
view model =
    div []
        [ pageNav model
        , pageContent model
        ]


pageContent : Model -> Html NavMsg
pageContent model =
  case model.page of
    WelcomePage ->
      Page.Welcome.view model

    SigninPage ->
      Page.Signin.view model

    EmailSubscriptionPage ->
      Page.EmailSubscription.view model

    NotFoundPage ->
      Page.NotFound.view model


pageNav : Model -> Html NavMsg
pageNav model =
    div []
        [ div []
              [ navLink ToWelcomePage "Welcome"
              , text "|"
              , navLink ToSigninPage "Sign in"
              , text "|"
              , navLink ToEmailSubscriptionPage "Email Subscription"
              ]
        ]


navLink : NavMsg -> String -> Html NavMsg
navLink navMsg navLinkName =
  a [ href "javascript://"
    , onClick navMsg
    ]
    [ text navLinkName ]
