module Component.List exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


(=>) = (,)


-- FLUID LIST


fluidList : Int -> Int -> List (List (Html msg)) -> Html msg
fluidList itemWidth maxColumns itemList =
  let
    toPx : Int -> String
    toPx num =
      toString num ++ "px"

    styleB =
      [ "display" => "inline-block"
      , "width" => toPx itemWidth
      , "vertical-align" => "top"
      , "text-align" => "center"
      , "margin" => ("0 " ++ toPx gutter)
      ]

    gutter = 30
  in
    section
      [style [ "max-width" => toPx (itemWidth*maxColumns + 2*gutter*maxColumns)
             , "margin" => "auto"
             , "text-align" => "center"
             ]
      ]
      (List.map (section [style styleB]) itemList)
