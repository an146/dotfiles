import XMonad
import XMonad.Util.EZConfig

main = xmonad $ defaultConfig
    { borderWidth        = 2
    , terminal           = "urxvt"
    }
    `additionalKeysP`
    [ ("M--",           spawn "mpc volume -5")
    , ("M-=",           spawn "mpc volume +5")
    , ("M-\\",          spawn "mpc toggle")
    , ("M-<Backspace>", spawn "mpc seek -5")
    , ("M-[",           spawn "mpc prev")
    , ("M-]",           spawn "mpc next")
    , ("M-w",           spawn "uzbl-browser")
    ]
