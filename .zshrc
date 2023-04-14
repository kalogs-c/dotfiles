# TMUX
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

nitch
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/carlinhos/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Alias
alias ls="exa -l"
alias cat=bat
alias gadd="git add ."
alias gc="git commit -m"
alias gp="git push"
alias tkp="tmux kill-pane"
alias vim=nvim
alias i-list="adonis create-conversion-list"

# Auto Complete
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Starship
eval "$(starship init zsh)"

# ASDF
source /opt/asdf-vm/asdf.sh

# Functions
function gcommit
{
	command git add . && git commit -m $1 && git push
}

function mcdir 
{
	command mkdir $1 && cd $1
}
