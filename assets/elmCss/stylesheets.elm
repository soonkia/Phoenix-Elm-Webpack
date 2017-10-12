port module Stylesheets exposing (..)

import Css.File exposing (..)
import MainCss as MainCss


port files : CssFileStructure -> Cmd msg


cssFiles : CssFileStructure
cssFiles =
    toFileStructure
        [ ( "main.css", compile [ MainCss.css ] ) ]


main : CssCompilerProgram
main =
    Css.File.compiler files cssFiles
