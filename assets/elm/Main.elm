module Main exposing (main)

import Html exposing (Html, text, div, b, br, p, ul, li)
import Html.CssHelpers
import MainCss


mcss : Html.CssHelpers.Namespace String class id msg
mcss =
    Html.CssHelpers.withNamespace "MainCss"


main : Html msg
main =
    div []
        [ b [] [ text "Welcome to Phx, Elm, ElmCSS and WebPack starter app. " ]
        , br [] []
        , div [ mcss.class [ MainCss.Mdiv ] ]
            [ p []
                [ text "The File structure is as follows:"
                ]
            , p []
                [ ul []
                    [ li []
                        [ text " lib/ : Contain the Phoenix files"
                        ]
                    , li []
                        [ text " assets/elm : Contain the Elm Files"
                        ]
                    , li []
                        [ text " assets/elmCss: Contain the Elm CSS Files"
                        ]
                    , li []
                        [ text " assets/css/app.css: You can add other static CSS files here."
                        ]
                    , li []
                        [ text " assets/js/app.js: The entry point for webpack"
                        ]
                    ]
                ]
            , p [] [ b [] [ text "The following commands to be used for Development" ] ]
            , p [] [ text " npm run start : Runs the phoenix server with webpack." ]
            , p [] [ text " npm run build : Builds the static js files into priv/static/js" ]
            , p [] [ b [] [ text "The following commands to be used for Production deployment" ] ]
            ]
        ]
