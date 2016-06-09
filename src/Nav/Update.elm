module Nav.Update exposing (..)

import Navigation
import Hop exposing (..)
import Hop.Matchers exposing (..)
import Hop.Types exposing (..)

import Nav.Model exposing (..)
import Nav.Config as Nav
import Nav.Msg exposing (NavMsg(..))


update : NavMsg -> NavModel -> (NavModel, Cmd NavMsg)
update navMsg navModel =
  case navMsg of
    ToWelcomePage ->
      let
        path = Nav.reverse WelcomePage

      in
        ( navModel, Nav.navigationCmd path )

    ToSigninPage ->
      let
        path = Nav.reverse SigninPage

      in
        ( navModel, Nav.navigationCmd path )

    ToEmailSubscriptionPage ->
      let
        path = Nav.reverse EmailSubscriptionPage

      in
        ( navModel, Nav.navigationCmd path )
