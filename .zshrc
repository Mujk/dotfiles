# .zshrc

export VISUAL=kak
export EDITOR="$VISUAL"


# gt = go to
alias gtc='cd ~/dotfiles/' ## c = config
alias gtd='cd ~/DATA/' ## d = data
alias gtpr='cd ~/DATA/projects/' ## pr = PRoject
alias gtaa='cd ~/DATA/areas/' ## aa = AreA
alias gtre='cd ~/DATA/resources/' ## re = REsource
alias gtae='cd ~/DATA/archieve/' ## ae = ArchievE
alias gttr='cd ~/trash/' ## tr = trash

# s = show
alias si='cat ~/DATA/areas/inbox.md' ## i = inbox

# git
alias gs='git status'
alias ga='git add'
alias gc='git commit'

# other alias
alias ls='ls --color=auto'
alias k='kak'
alias cl='clear'
alias clinbox='echo "" > ~/DATA/areas/inbox.txt' # clear inbox
alias cltrash='rm -rf ~/trash/ && mkdir ~/trash' # clear trash

# other functions
f() {
    kak -c $* $(fzf)
}

inbox() {
    echo $*$'\n' >> ~/DATA/areas/inbox.txt
    print $*
}

cdl() {
    cd $*
    ls --color=auto
}

pow() {
    power=$(cat /sys/class/power_supply/BAT0/capacity)
    power_status=$(cat /sys/class/power_supply/BAT0/status)
    echo $power' '$power_status
}

tr() {
    mv $1 ~/trash/$1
}

# disable dir hightlighting on WSL
LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS

# prompt
PS1=$'\n'"[%~]"$'\n'"$ "

# package managers
## cargo / rust
. "$HOME/.cargo/env"

# npm / js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

