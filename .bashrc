# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias k='kak'

PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

eval "$(starship init bash)"
