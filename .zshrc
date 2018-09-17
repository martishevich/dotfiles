export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"

ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias weather="curl wttr.in/Minsk"
alias n="nvim"
