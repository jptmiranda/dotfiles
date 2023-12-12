local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.audible_bell = 'Disabled'
config.default_cursor_style = 'BlinkingUnderline'

-- Color scheme
config.color_scheme = 'Catppuccin Mocha'

-- Fonts
config.font = wezterm.font_with_fallback {
  'Monaspace Krypton',
  'MonaspiceKr Nerd Font Mono',
  'FiraCode Nerd Font Mono',
  'monospace',
}
config.font_size = 13

return config
