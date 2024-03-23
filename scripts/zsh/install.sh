#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/catppuccin/zsh-syntax-highlighting.git
mkdir ~/.zsh
cp -v zsh-syntax-highlighting/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh ~/.zsh/
rm -rf zsh-syntax-highlighting