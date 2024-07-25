# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export VISUAL=kak
export EDITOR="$VISUAL"

alias ls='ls --color=auto'
alias k='kak'

# disable dir hightlighting on WSL
LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS

PS1='[\u@\h \W]\$ '

# package managers
## cargo / rust
. "$HOME/.cargo/env"

# npm / js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
