export ZSH="$HOME/.oh-my-zsh"
export SSH_AUTH_SOCK=$HOME/.1password/agent.sock

# variables
export THEME_DIR="$HOME/.themes"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# bun completions
[ -s "/home/dot/.bun/_bun" ] && source "/home/dot/.bun/_bun"

# plugins
plugins=(
  zsh-syntax-highlighting
  zsh-autosuggestions
  git
)
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

# aliases
alias ls="eza --icons"
compdef ls='eza'
setopt complete_aliases

# starship
eval "$(starship init zsh)"
