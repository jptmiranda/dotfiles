export ZSH="$HOME/.oh-my-zsh"

# aliases
alias vim=nvim
alias ls=eza

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

# plugins
plugins=(
  zsh-syntax-highlighting
  zsh-autosuggestions
  git
  wakatime
)
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

# starship
eval "$(starship init zsh)"
