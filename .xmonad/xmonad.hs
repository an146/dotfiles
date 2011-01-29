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
    , ("M-S-w",         spawn "surf")
    , ("M-e",           spawn "gvim ~/.xmonad/xmonad.hs")
    , ("M-r",           spawn "urxvt -e newsbeuter")
    , ("M-'",           spawn "urxvt -e ncmpcpp")
    ]
        where
            tiled = Tall 1 (2%100) (3%4)
