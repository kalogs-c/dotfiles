HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e

# Auto Suggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Starship
eval "$(starship init zsh)"

# Alias
alias ls="exa -l"
alias cat=bat
alias gadd="git add ."
alias gc="git commit"
alias gp="git push"
alias tkp="tmux kill-pane"
alias tls="tmux list-sessions"
alias vim=nvim
alias i-list="adonis create-conversion-list"

# ASDF
source /opt/asdf-vm/asdf.sh

# Functions
function gcommit
{
	command git add . && git commit && git push
}

function mcdir
{
	command mkdir $1 && cd $1
}