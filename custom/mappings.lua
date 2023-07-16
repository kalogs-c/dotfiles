---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>fe"] = {":%s/.*name:\\s// | :%s/\\n.*value:\\s/=/ <CR><CR>", "Format env from cloud run"},
    ["<leader>fs"] = {":%s/^\\v(.)/\"\\1/ | %s/\\v(\\n)/\",\\1/ <CR><CR>", "Format emails csv to SQL list"},
    ["<leader>gb"] = {":Telescope git_branches <CR>", "Git branches"},
    ["<leader>gdv"] = {":Gvdiff <CR>", "Show diff vertical"},
    ["<leader>gdh"] = {":Ghdiff <CR>", "Show diff horizontal"},
    ["<leader>nv"] = {":Navbuddy <CR>", "Navbuddy"},
    ["<leader>ca"] = {":CodeActionMenu <CR>", "Code Action"},
  },
}

-- more keybinds!

return M
