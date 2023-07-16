---@type ChadrcConfig 
 local M = {}
 
 local highlights = require "custom.highlights"

 M.ui = {
  theme = 'ayu_dark',
  theme_toggle = { "ayu_dark", "one_light" },

  hl_add = highlights.add,
  hl_override = highlights.override,
 }

 M.plugins = "custom.plugins"

 M.mappings = require "custom.mappings"

 return M
