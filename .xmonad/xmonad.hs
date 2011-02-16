import XMonad
import XMonad.Layout
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig
import XMonad.Hooks.DynamicLog

import Data.Ratio ((%))

main = xmonad =<< xmobar conf

conf = defaultConfig
    { borderWidth        = 0
    , terminal           = "urxvt"
    , layoutHook = (tiled ||| Mirror tiled ||| noBorders Full)
    -- , logHook            = dynamicLog
    }
    `additionalKeysP`
    [ ("M--",           spawn "mpc volume -5")
    , ("M-=",           spawn "mpc volume +5")
    , ("M-\\",          spawn "mpc toggle")
    , ("M-<Backspace>", spawn "mpc seek -5")
    , ("M-[",           spawn "mpc prev")
    , ("M-]",           spawn "mpc next")
    , ("M-w",           spawn "uzbl-browser")
    , ("M-S-w",         spawn "surf google.ru")
    , ("M-e",           spawn "gvim ~/.xmonad/xmonad.hs")
    , ("M-r",           spawn "urxvt -e newsbeuter")
    , ("M-S-r",         spawn "gvim ~/.newsbeuter/urls")
    , ("M-'",           spawn "urxvt -e ncmpcpp")
    , ("M-p",           spawn "surf mail.yandex.ru")
    , ("M-<F2>",        spawn "exe=`dmenu_path | dmenu` && eval \"exec $exe\"")
    , ("M-v",           spawn "surf http://vkontakte.ru/feed")
    , ("M-o",           spawn "ocamlbrowser -I /home/anton/godi/lib/ocaml/pkg-lib/lablgtk2 -I /home/anton/godi/lib/ocaml/pkg-lib/react")
    , ("M-S-o",         spawn "surf file:///home/anton/src/batteries-included/apidocs/index.html")
    , ("M-g",           spawn "surf google.ru/search?q=`xclip -o`")
    ]
        where
            tiled = Tall 1 (2%100) (3%4)
