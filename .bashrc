
# Check for an interactive session
[ -z "$PS1" ] && return

alias l='ls -l -F --color=auto --group-directories-first'
alias la='l -a'
alias ls='ls --color=auto --group-directories-first'
alias vi=vim
alias y=yaourt
PS1='[\u@\h \W]\$ '

export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend cmdhist

alias git='hub'
