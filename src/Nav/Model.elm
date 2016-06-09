module Nav.Model exposing (..)

import Hop.Types exposing (Location, newLocation)
import Nav.Msg exposing (NavMsg)


type Page
  = WelcomePage
  | MeetupPage
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


initNavModel : ( Page, Hop.Types.Location ) -> ( NavModel, Cmd NavMsg )
initNavModel ( page, location ) =
  ( newNavModel page location, Cmd.none )
