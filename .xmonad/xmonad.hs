import XMonad
import XMonad.Util.EZConfig
import XMonad.Hooks.DynamicLog

main = xmonad =<< xmobar conf

conf = defaultConfig
    { borderWidth        = 2
    , terminal           = "urxvt"
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
    , ("M-e",           spawn "gvim ~/.xmonad/xmonad.hs")
    ]
