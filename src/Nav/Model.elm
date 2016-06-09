module Nav.Model exposing (..)

import Hop.Types exposing (Location, newLocation)


type Page
  = WelcomePage
  | SigninPage
  | EmailSubscriptionPage
  | NotFoundPage


type alias NavModel =
  { location : Location
  , page : Page
  }


newNavModel : Page -> Hop.Types.Location -> NavModel
newNavModel page location =
    { location = location
    , page = page
    }

{- TODO
initNavModel : ( Page, Hop.Types.Location ) -> ( NavModel, Cmd NavMsg )
initNavModel ( page, location ) =
  ( newNavModel page location, Cmd.none )
-}
