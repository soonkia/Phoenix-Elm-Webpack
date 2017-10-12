module MainCss exposing (..)

import Css exposing (..)
import Css.Elements exposing (..)
import Css.Namespace exposing (namespace)


type CssClasses
    = Mdiv


css =
    (stylesheet << namespace "MainCss")
        [ class Mdiv
            [ Css.color (hex "#333")
            ]
        ]
