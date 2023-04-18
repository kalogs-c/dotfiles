local M = {}

M.abc = {
  n = {
    ["<leader>fe"] = {":%s/.*name:\\s// | :%s/\\n.*value:\\s/=/ <CR><CR>", "Format env from cloud run"}
  }
}

return M
