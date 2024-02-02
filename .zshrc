export ZSH="$HOME/.oh-my-zsh"
export SSH_AUTH_SOCK=~/.1password/agent.sock

# variables
THEME_DIR="$HOME/.themes"

# go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# nvm
source /usr/share/nvm/init-nvm.sh

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# dotnet
export PATH="$PATH:/home/dot/.dotnet/tools"

# java
export JAVA_HOME="/usr/bin/java"

# plugins
plugins=(
  zsh-syntax-highlighting
  zsh-autosuggestions
  git
)
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

# aliases
alias vim=nvim
alias ls="eza --icons"
compdef ls='eza'
setopt complete_aliases

# starship
eval "$(starship init zsh)"
# bun completions
[ -s "/home/dot/.bun/_bun" ] && source "/home/dot/.bun/_bun"

# Turso
export PATH="/home/dot/.turso:$PATH"
