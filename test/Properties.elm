module Properties (all) where

import ElmTest exposing (..)
import Css exposing (..)
import Css.Elements exposing (p)
import Css.Declaration exposing (Declaration)


all : Test
all =
    suite
        "properties"
        [ testProperty
            "box-sizing"
            [ ( boxSizing initial, "initial" )
            , ( boxSizing unset, "unset" )
            , ( boxSizing inherit, "inherit" )
            , ( boxSizing contentBox, "content-box" )
            , ( boxSizing borderBox, "border-box" )
            ]
        , testProperty
            "width"
            [ ( width initial, "initial" )
            , ( width unset, "unset" )
            , ( width inherit, "inherit" )
            , ( width auto, "auto" )
            , ( width (pct 90), "90%" )
            ]
        , testProperty
            "min-width"
            [ ( minWidth initial, "initial" )
            , ( minWidth unset, "unset" )
            , ( minWidth inherit, "inherit" )
            , ( minWidth maxContent, "max-content" )
            , ( minWidth minContent, "min-content" )
            , ( minWidth fitContent, "fit-content" )
            , ( minWidth fillAvailable, "fill-available" )
            , ( minWidth (pc 9), "9pc" )
            ]
        , testProperty
            "max-width"
            [ ( maxWidth initial, "initial" )
            , ( maxWidth unset, "unset" )
            , ( maxWidth inherit, "inherit" )
            , ( maxWidth none, "none" )
            , ( maxWidth maxContent, "max-content" )
            , ( maxWidth minContent, "min-content" )
            , ( maxWidth fitContent, "fit-content" )
            , ( maxWidth fillAvailable, "fill-available" )
            , ( maxWidth (cm 17), "17cm" )
            ]
        , testProperty
            "height"
            [ ( height initial, "initial" )
            , ( height unset, "unset" )
            , ( height inherit, "inherit" )
            , ( height auto, "auto" )
            , ( height (mm 8), "8mm" )
            ]
        , testProperty
            "min-height"
            [ ( minHeight initial, "initial" )
            , ( minHeight unset, "unset" )
            , ( minHeight inherit, "inherit" )
            , ( minHeight maxContent, "max-content" )
            , ( minHeight minContent, "min-content" )
            , ( minHeight fitContent, "fit-content" )
            , ( minHeight fillAvailable, "fill-available" )
            , ( minHeight (pc 9), "9pc" )
            ]
        , testProperty
            "max-height"
            [ ( maxHeight initial, "initial" )
            , ( maxHeight unset, "unset" )
            , ( maxHeight inherit, "inherit" )
            , ( maxHeight none, "none" )
            , ( maxHeight maxContent, "max-content" )
            , ( maxHeight minContent, "min-content" )
            , ( maxHeight fitContent, "fit-content" )
            , ( maxHeight fillAvailable, "fill-available" )
            , ( maxHeight (cm 17), "17cm" )
            ]
        , testProperty
            "text-indent"
            [ ( textIndent initial, "initial" )
            , ( textIndent unset, "unset" )
            , ( textIndent inherit, "inherit" )
            , ( textIndent (px 5), "5px" )
            , ( textIndent2 initial initial, "initial initial" )
            , ( textIndent2 unset unset, "unset unset" )
            , ( textIndent2 inherit inherit, "inherit inherit" )
            , ( textIndent2 (em 3) hanging, "3em hanging" )
            , ( textIndent2 (pc 2) eachLine, "2pc each-line" )
            ]
        , testProperty
            "text-decoration"
            [ ( textDecoration initial, "initial" )
            , ( textDecoration unset, "unset" )
            , ( textDecoration inherit, "inherit" )
            , ( textDecoration none, "none" )
            , ( textDecoration underline, "underline" )
            , ( textDecoration overline, "overline" )
            , ( textDecoration lineThrough, "line-through" )
            , ( textDecoration2 initial wavy, "initial wavy" )
            , ( textDecoration2 unset dotted, "unset dotted" )
            , ( textDecoration2 inherit dashed, "inherit dashed" )
            , ( textDecoration2 none solid, "none solid" )
            , ( textDecoration2 underline double, "underline double" )
            , ( textDecoration2 overline initial, "overline initial" )
            , ( textDecoration2 lineThrough unset, "line-through unset" )
            , ( textDecoration2 lineThrough inherit, "line-through inherit" )
            , ( textDecoration3 initial wavy (rgb 11 12 13), "initial wavy rgb(11, 12, 13)" )
            , ( textDecoration3 unset dotted (rgb 11 12 13), "unset dotted rgb(11, 12, 13)" )
            , ( textDecoration3 inherit dashed (rgb 11 12 13), "inherit dashed rgb(11, 12, 13)" )
            , ( textDecoration3 none solid (rgb 11 12 13), "none solid rgb(11, 12, 13)" )
            , ( textDecoration3 underline double (rgb 11 12 13), "underline double rgb(11, 12, 13)" )
            , ( textDecoration3 overline initial (rgb 11 12 13), "overline initial rgb(11, 12, 13)" )
            , ( textDecoration3 lineThrough unset (rgb 11 12 13), "line-through unset rgb(11, 12, 13)" )
            , ( textDecoration3 lineThrough inherit (rgb 11 12 13), "line-through inherit rgb(11, 12, 13)" )
            , ( textDecorations [], "none" )
            , ( textDecorations [ initial ], "initial" )
            , ( textDecorations [ unset, inherit ], "unset inherit" )
            , ( textDecorations [ none ], "none" )
            , ( textDecorations [ underline, overline, lineThrough ], "underline overline line-through" )
            , ( textDecorations2 [] double, "none double" )
            , ( textDecorations2 [ initial ] solid, "initial solid" )
            , ( textDecorations2 [ unset, inherit ] dashed, "unset inherit dashed" )
            , ( textDecorations2 [ none ] dotted, "none dotted" )
            , ( textDecorations2 [ underline, overline, lineThrough ] wavy, "underline overline line-through wavy" )
            , ( textDecorations2 [ underline, overline, lineThrough ] initial, "underline overline line-through initial" )
            , ( textDecorations2 [ underline, overline, lineThrough ] unset, "underline overline line-through unset" )
            , ( textDecorations2 [ underline, overline, lineThrough ] inherit, "underline overline line-through inherit" )
            , ( textDecorations3 [] double (rgb 11 12 13), "none double rgb(11, 12, 13)" )
            , ( textDecorations3 [ initial ] solid (rgb 11 12 13), "initial solid rgb(11, 12, 13)" )
            , ( textDecorations3 [ unset, inherit ] dashed (rgb 11 12 13), "unset inherit dashed rgb(11, 12, 13)" )
            , ( textDecorations3 [ none ] dotted (rgb 11 12 13), "none dotted rgb(11, 12, 13)" )
            , ( textDecorations3 [ underline, overline, lineThrough ] wavy (rgb 11 12 13), "underline overline line-through wavy rgb(11, 12, 13)" )
            , ( textDecorations3 [ underline, overline, lineThrough ] initial (rgb 11 12 13), "underline overline line-through initial rgb(11, 12, 13)" )
            , ( textDecorations3 [ underline, overline, lineThrough ] unset (rgb 11 12 13), "underline overline line-through unset rgb(11, 12, 13)" )
            , ( textDecorations3 [ underline, overline, lineThrough ] inherit (rgb 11 12 13), "underline overline line-through inherit rgb(11, 12, 13)" )
            ]
        , testProperty
            "text-decoration-line"
            [ ( textDecorationLine initial, "initial" )
            , ( textDecorationLine unset, "unset" )
            , ( textDecorationLine inherit, "inherit" )
            , ( textDecorationLine none, "none" )
            , ( textDecorationLine underline, "underline" )
            , ( textDecorationLine overline, "overline" )
            , ( textDecorationLine lineThrough, "line-through" )
            , ( textDecorationLines [], "none" )
            , ( textDecorationLines [ initial ], "initial" )
            , ( textDecorationLines [ unset, inherit ], "unset inherit" )
            , ( textDecorationLines [ none ], "none" )
            , ( textDecorationLines [ underline, overline, lineThrough ], "underline overline line-through" )
            ]
        , testProperty
            "overflow-x"
            [ ( overflowX initial, "initial" )
            , ( overflowX unset, "unset" )
            , ( overflowX inherit, "inherit" )
            , ( overflowX auto, "auto" )
            , ( overflowX visible, "visible" )
            , ( overflowX hidden, "hidden" )
            , ( overflowX scroll, "scroll" )
            ]
        , testProperty
            "overflow-y"
            [ ( overflowY initial, "initial" )
            , ( overflowY unset, "unset" )
            , ( overflowY inherit, "inherit" )
            , ( overflowY auto, "auto" )
            , ( overflowY visible, "visible" )
            , ( overflowY hidden, "hidden" )
            , ( overflowY scroll, "scroll" )
            ]
        , testProperty
            "overflow"
            [ ( overflow initial, "initial" )
            , ( overflow unset, "unset" )
            , ( overflow inherit, "inherit" )
            , ( overflow auto, "auto" )
            , ( overflow visible, "visible" )
            , ( overflow hidden, "hidden" )
            , ( overflow scroll, "scroll" )
            ]
        , testProperty
            "text-rendering"
            [ ( textRendering initial, "initial" )
            , ( textRendering unset, "unset" )
            , ( textRendering inherit, "inherit" )
            , ( textRendering auto, "auto" )
            , ( textRendering optimizeSpeed, "optimizeSpeed" )
            , ( textRendering optimizeLegibility, "optimizeLegibility" )
            , ( textRendering geometricPrecision, "geometricPrecision" )
            ]
        , testProperty
            "display"
            [ ( display initial, "initial" )
            , ( display unset, "unset" )
            , ( display inherit, "inherit" )
            , ( display none, "none" )
            , ( display inline, "inline" )
            , ( display block, "block" )
            , ( display inlineBlock, "inline-block" )
              -- TODO display: contents;
              -- TODO display: list-item;
              -- TODO display: inline-list-item;
              -- TODO display: table;
              -- TODO display: inline-table;
              -- TODO display: table-cell;
              -- TODO display: table-column;
              -- TODO display: table-column-group;
              -- TODO display: table-footer-group;
              -- TODO display: table-header-group;
              -- TODO display: table-row;
              -- TODO display: table-row-group;
              -- TODO display: flex;
              -- TODO display: inline-flex;
              -- TODO display: grid;
              -- TODO display: inline-grid;
              -- TODO display: ruby;
              -- TODO display: ruby-base;
              -- TODO display: ruby-text;
              -- TODO display: ruby-base-container;
              -- TODO display: ruby-text-container ;
              -- TODO display: run-in;
            ]
        ]


testProperty : String -> List ( StylesheetOrMixin String a, String ) -> Test
testProperty propertyName modifierPairs =
    suite
        (propertyName ++ " property")
        (List.map (assertPropertyWorks propertyName) modifierPairs)


assertPropertyWorks : String -> ( StylesheetOrMixin String a, String ) -> Test
assertPropertyWorks propertyName ( input, expectedStr ) =
    test "pretty prints the expected output"
        <| assertEqual
            (prettyPrint (stylesheet { name = "test" } $ p ~ input))
            ("p {\n    " ++ propertyName ++ ": " ++ expectedStr ++ ";\n}")


prettyPrint sheet =
    case compile sheet of
        Ok result ->
            result

        Err message ->
            "Invalid Stylesheet: " ++ message


type alias DeclarationTransform namespace =
    namespace -> List Declaration -> Result String (List Declaration)


type alias StylesheetOrMixin namespace base =
    { base | transform : DeclarationTransform namespace }
