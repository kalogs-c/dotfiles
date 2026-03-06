# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# History
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth
shopt -s histappend
shopt -s cmdhist

# Aliases
alias ls="eza"
alias cat="bat"
alias vim="nvim"
alias grep="rg"

# Vars
export EDITOR="nvim"

# eval
eval "$(mise activate bash)"
eval "$(starship init bash)"
eval "$(zoxide init --cmd cd bash)"
