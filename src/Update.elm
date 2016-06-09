module Update exposing (..)

import Model exposing (..)
import Msg exposing (..)
import Nav.Update

{- TODO
update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NavMsg navMsg ->
      let
        model =
          { location = model.location
          , page = model.page
          }

        ( updatedModel, cmd ) =
          Nav.Update.update navMsg model

      in
        ( { model | model = updatedModel.model }, Cmd.map NavMsg cmd )
-}
