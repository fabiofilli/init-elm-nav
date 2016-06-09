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

    SigninPage ->
      Hop.matcherToPath matchSigninPage []

    EmailSubscriptionPage ->
      Hop.matcherToPath matchEmailSubscriptionPage []

    NotFoundPage ->
      ""

matchers : List (PathMatcher Page)
matchers =
    [ matchWelcomePage
    , matchSigninPage
    , matchEmailSubscriptionPage
    ]


matchWelcomePage : PathMatcher Page
matchWelcomePage =
    match1 WelcomePage "/welcome"


matchSigninPage : PathMatcher Page
matchSigninPage =
    match1 SigninPage "/sign_in"


matchEmailSubscriptionPage : PathMatcher Page
matchEmailSubscriptionPage =
    match1 EmailSubscriptionPage "/email_subscription"
