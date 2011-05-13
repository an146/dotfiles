# Check for an interactive session
[ -z "$PS1" ] && return

alias l='/bin/ls -l -F --color=auto --group-directories-first'
alias la='l -a'
alias ls='/bin/ls --color=auto --group-directories-first'
alias vi=vim
alias y=yaourt
alias df='df -h'
alias godip='godi_console perform'
alias godib='godi_console perform -build'
alias godir='godi_console perform -remove'
alias angband='angband -mgcu -- -b'
alias mp='mplayer -subcp cp1251'
alias ocaml='rlwrap ocaml'
alias ocamldebug='rlwrap ocamldebug'

PS1='[\u@\h \W]\$ '
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend cmdhist

which hub > /dev/null 2>/dev/null && alias git='hub'

export PATH="$PATH:/home/anton/godi/sbin:/home/anton/godi/bin"
export EDITOR=vim
