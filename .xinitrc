xrdb ~/.Xdefaults &
[ -f ~/.fehbg ] && . ~/.fehbg
setxkbmap -option terminate:ctrl_alt_bksp
exec xmonad
