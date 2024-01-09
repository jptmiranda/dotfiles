# aliases
alias vim=nvim
alias ls=eza

# autocompletion
autoload -Uz compinit && compinit

_dotnet_zsh_complete()
{
  local completions=("$(dotnet complete "$words")")

  # If the completion list is empty, just continue with filename selection
  if [ -z "$completions" ]
  then
    _arguments '*::arguments: _normal'
    return
  fi

  # This is not a variable assignment, don't remove spaces!
  _values = "${(ps:\n:)completions}"
}
compdef _dotnet_zsh_complete dotnet

# autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# themes
THEME_DIR="$HOME/.themes"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# bun completions
[ -s "/home/dot/.bun/_bun" ] && source "/home/dot/.bun/_bun"

# nvm
source /usr/share/nvm/init-nvm.sh

# go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# zsh syntax highlighting
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# starship
eval "$(starship init zsh)"