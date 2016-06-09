module Model exposing (..)

import Hop.Types
import Msg exposing (..)

import Nav.Model exposing (NavModel, Page, initNavModel)


type alias Model =
  { navModel : NavModel
  }


initModel : Page -> Hop.Types.Location -> Model
initModel page location =
    let
      newNavModel = fst (initNavModel (page , location))
    in
      { navModel = newNavModel }


init : ( Page, Hop.Types.Location ) -> ( Model, Cmd Msg )
init ( page, location ) =
  ( initModel page location, Cmd.none )
