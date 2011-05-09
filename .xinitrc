xrdb ~/.Xdefaults &
[ -f ~/.fehbg ] && . ~/.fehbg

# xmodmap -e "clear Lock"
setxkbmap -option terminate:ctrl_alt_bksp
setxkbmap -layout us,ru
setxkbmap -option grp:caps_toggle
setxkbmap -option grp_led:scroll

tilda 2>&1 > /dev/null &
urxvt &
#audacious &
urxvt -name "mocp" -e mocp
firefox &
thunderbird &
qbittorrent &
urxvt -name "devterm" &
exec subtle
