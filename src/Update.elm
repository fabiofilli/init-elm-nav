module Update exposing (..)

import Model exposing (..)
import Msg exposing (..)
import Nav.Update
import Nav.Model exposing (NavModel, Page)
import Hop.Types
import Nav.Config


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NavMsg navMsg ->
      let
        ( updatedModel, cmd ) =
          Nav.Update.update navMsg model.navModel
      in
        ( { model | navModel = updatedModel }, Cmd.map NavMsg cmd )


urlUpdate : ( Page, Hop.Types.Location ) -> Model -> ( Model, Cmd Msg )
urlUpdate ( page, location ) model =
  let
    newNavModel = fst (Nav.Config.urlUpdate (page, location) model.navModel)
  in
  ( { model | navModel = newNavModel }, Cmd.none )
