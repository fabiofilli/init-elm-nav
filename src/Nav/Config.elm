module Nav.Config exposing (..)

import Navigation
import Hop
import Hop.Types exposing (Config, Location, Router, PathMatcher, newLocation)
import Hop.Matchers exposing (..)

import Nav.Model exposing (..)
import Nav.Msg exposing (NavMsg(..))


config : Config Page
config =
    { basePath = ""
    , hash = False
    , matchers = matchers
    , notFound = NotFoundPage
    }


urlUpdate : ( Page, Hop.Types.Location ) -> NavModel -> ( NavModel, Cmd NavMsg )
urlUpdate ( page, location ) navModel =
  ( { navModel | page = page, location = location }, Cmd.none )


urlParser : Navigation.Parser ( Page, Hop.Types.Location )
urlParser =
  Navigation.makeParser (.href >> Hop.matchUrl config)


navigationCmd : String -> Cmd a
navigationCmd path =
    Navigation.modifyUrl ( Hop.makeUrl config path )


reverse : Page -> String
reverse page =
  case page of
    WelcomePage ->
      Hop.matcherToPath matchWelcomePage []

    MeetupPage ->
      Hop.matcherToPath matchMeetupPage []

    NotFoundPage ->
      ""


matchers : List (PathMatcher Page)
matchers =
    [ matchWelcomePage
    , matchMeetupPage
    ]


matchWelcomePage : PathMatcher Page
matchWelcomePage =
    match1 WelcomePage "/welcome"


matchMeetupPage : PathMatcher Page
matchMeetupPage =
    match1 MeetupPage "/meetup"
