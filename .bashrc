
# Check for an interactive session
[ -z "$PS1" ] && return

alias l='ls -l -F --color=auto --group-directories-first'
alias ls='ls --color=auto --group-directories-first'
alias vi=vim
alias y=yaourt
PS1='[\u@\h \W]\$ '

export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend cmdhist

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
