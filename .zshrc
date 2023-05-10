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
export PATH="~/.asdf/installs/rust/1.68.2/bin/:$PATH"

# Functions
function gcommit
{
	command git add . && git commit && git push
}

function mcdir
{
	command mkdir $1 && cd $1
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/carlinhos/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/carlinhos/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/carlinhos/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/carlinhos/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

[ -f "/home/carlinhos/.ghcup/env" ] && source "/home/carlinhos/.ghcup/env" # ghcup-env
