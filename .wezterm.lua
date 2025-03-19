local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.window_background_opacity = 0.8
config.macos_window_background_blur = 20

config.window_frame = {
    font_size = 14,
}

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

config.initial_cols = 100
config.initial_rows = 30

config.font_size = 15
config.color_scheme = 'Dracula'

return config
