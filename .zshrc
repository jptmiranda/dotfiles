# aliases
alias vim=nvim

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

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# nvm
source /usr/share/nvm/init-nvm.sh

# starship
eval "$(starship init zsh)"
