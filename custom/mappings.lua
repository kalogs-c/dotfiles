---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>fer"] = { ":%s/.*name:\\s// | :%s/\\n.*value:\\s/=/ <CR><CR>", "Format env from cloud run" },
    ["<leader>fef"] = { ":%s/\\v(^[A-Z].*)\\n\\v(.*)/\\1=\\2 <CR><CR>", "Format env from cloud functions" },
    ["<leader>fs"] = { ':%s/^\\v(.)/"\\1/ | %s/\\v(\\n)/",\\1/ <CR><CR>', "Format emails csv to SQL list" },
    ["<leader>gb"] = { ":Telescope git_branches <CR>", "Git branches" },
    ["<leader>gdv"] = { ":Gvdiff <CR>", "Show diff vertical" },
    ["<leader>gdh"] = { ":Ghdiff <CR>", "Show diff horizontal" },
    ["<leader>nv"] = { ":Navbuddy <CR>", "Navbuddy" },
    ["<leader>ca"] = { ":CodeActionMenu <CR>", "Code Action" },
  },
}

M.dap = {
  plugin = true,
  n = {
    -- debugging
    ["<leader>db"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Toggle breakpoint",
    },
    ["<leader>dt"] = {
      function()
        require("dapui").toggle()
      end,
      "Toggle dap ui",
    },
    ["<leader>dc"] = {
      function()
        require("dap").continue()
      end,
      "Continue",
    },
    ["<leader>dr"] = {
      function()
        require("dapui").open { reset = true }
      end,
      "Restart",
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug test",
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last test",
    },
  },
}

-- more keybinds!

return M
