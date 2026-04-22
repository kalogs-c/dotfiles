# --- Keybindings (inputrc equivalent) ---
bindkey -e

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

# --- Aliases ---
alias ls="eza -lha"
alias cat="bat"
alias vim="nvim"
alias grep="rg"
alias k="kubectl"

# --- Env ---
export EDITOR="nvim"

# --- Tools ---
eval "$(mise activate zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
