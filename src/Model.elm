module Model exposing (..)

import Hop.Types
import Msg exposing (..)

import Nav.Model exposing (NavModel, Page, newNavModel)


type alias Model =
  { navModel : NavModel
  }


initModel : Model
initModel =
    { navModel = newNavModel
    }


init : Model -> ( Model, Cmd Msg )
init =
  ( initModel, Cmd.none )

{- TODO
init : ( NavModel, Cmd NavMsg ) -> ( Model, Cmd Msg )
init ( page, location ) =
  ( initNavModel page location, Cmd.none )



init : ( Model -> Cmd Msg ) -> ( NavModel, Cmd NavMsg ) -> ( Model, Cmd Msg )
init ( page, location ) =
  ( model, )



initModel : NavModel -> Model
initModel page location =
    { navModel = newNavModel
    }
-}
