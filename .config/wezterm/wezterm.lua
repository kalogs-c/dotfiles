local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.default_domain = "WSL:Debian"
config.max_fps = 144

-- Style
config.window_decorations = "RESIZE|INTEGRATED_BUTTONS"
config.integrated_title_button_style = "Gnome"
config.integrated_title_button_color = "#b4befe"
config.bold_brightens_ansi_colors = true
config.color_scheme = "Catppuccin Mocha"
config.colors = {
  tab_bar = {
    active_tab = {
      bg_color = "#1e1e2e",
      fg_color = "#cba6f7",
    },
    inactive_tab = { bg_color = "#1e1e2e", fg_color = "#f5e0dc" },
    inactive_tab_hover = { bg_color = "#1e1e2e", fg_color = "#cba6f7" },
    new_tab = { bg_color = "#1e1e2e", fg_color = "#ffffff" },
    new_tab_hover = { bg_color = "#cba6f7", fg_color = "#090909" },
  },
}

-- Padding
config.window_padding = {
  left = 25,
  right = 25,
  top = 25,
  bottom = 25,
}

-- Tab Bar
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.show_tab_index_in_tab_bar = false
config.tab_bar_at_bottom = false

-- General
config.automatically_reload_config = true
config.inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 }
config.window_background_opacity = 1.0
config.window_close_confirmation = "NeverPrompt"
config.window_frame = {
  active_titlebar_bg = "#1e1e2e",
  inactive_titlebar_bg = "#181825",
  active_titlebar_fg = "#cdd6f4",
  inactive_titlebar_fg = "#a6adc8",
}

-- Keys
config.leader = { key = "g", mods = "CTRL", timeout_milliseconds = 2000 }
config.keys = {
  -- Create and remove tabs
  {
    mods = "LEADER",
    key = "n",
    action = wezterm.action.SpawnTab("CurrentPaneDomain"),
  },
  {
    mods = "LEADER",
    key = "x",
    action = wezterm.action.CloseCurrentPane({ confirm = false }),
  },

  -- Change tabs
  {
    mods = "ALT",
    key = "h",
    action = wezterm.action.ActivateTabRelative(-1),
  },
  {
    mods = "ALT",
    key = "l",
    action = wezterm.action.ActivateTabRelative(1),
  },

  -- Split tabs
  {
    mods = "LEADER",
    key = "5",
    action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
  },
  {
    mods = "LEADER",
    key = "\\",
    action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
  },

  -- Move between panes
  {
    mods = "LEADER",
    key = "h",
    action = wezterm.action.ActivatePaneDirection("Left"),
  },
  {
    mods = "LEADER",
    key = "j",
    action = wezterm.action.ActivatePaneDirection("Down"),
  },
  {
    mods = "LEADER",
    key = "k",
    action = wezterm.action.ActivatePaneDirection("Up"),
  },
  {
    mods = "LEADER",
    key = "l",
    action = wezterm.action.ActivatePaneDirection("Right"),
  },
}

return config
