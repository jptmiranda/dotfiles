# Setup

## Dependecies

### Arch package

- alacritty
- visual-studio-code-bin
- google-chrome
- 1password
- 1password-cli
- zsh
- starship
- wakatime
- go
- eza
- neovim
- stow
- otf-monaspace
- gnome-themes-extra
- catppuccin-gtk-theme-mocha
- catppuccin-cursors-mocha
- jetbrains-toolbox
- solaar
- easyeffects

### Others

- ohmyzsh
- monaspice
- nvm
- bun
- zsh-syntax-highlighting
- zsh-autosuggestions

### Gnome extensions

- AppIndicator and KStatusNotifierItem Support
- Astra Monitor
- Clipboard Indicator
- Color Picker
- Quick Settings Audio Panel
- User Themes

## Stow

Use stow to create symlinks

``` bash
stow .
```

## Run scripts

```bash
./scripts/install.sh
```

## Extra

### GTK 4 Catppuccin

```bash
mkdir -p "${HOME}/.config/gtk-4.0"
ln -sf "${THEME_DIR}/gtk-4.0/assets" "${HOME}/.config/gtk-4.0/assets"
ln -sf "${THEME_DIR}/gtk-4.0/gtk.css" "${HOME}/.config/gtk-4.0/gtk.css"
ln -sf "${THEME_DIR}/gtk-4.0/gtk-dark.css" "${HOME}/.config/gtk-4.0/gtk-dark.css"
```
