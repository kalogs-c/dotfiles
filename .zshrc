# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/carloscamilo/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# asdf
. "$HOME/.asdf/asdf.sh"

# pnpm
export PNPM_HOME="/home/carloscamilo/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# alias
alias tkp="tmux kill-pane"
alias tls="tmux list-sessions"

alias vim=nvim
alias i-list="adonis create-conversion-list"
# end alias

# starship
eval "$(starship init zsh)"
