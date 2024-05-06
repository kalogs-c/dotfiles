require("nvchad.mappings")

local map = vim.keymap.set

map("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- format env
map("n", "<leader>fer", ":%s/.*name:\\s// | :%s/\\n.*value:\\s/=/ <cr>", { desc = "Format env from google cloud run" })
map("n", "<leader>fef", ":%s/\\v(^[A-Z].*)\\n\\v(.*)/\\1=\\2 <cr>", { desc = "Format env from google cloud functions" })

-- SQL
map("n", "<leader>sql", "<cmd>DBUIToggle<cr>", { desc = "Toggle DBUI" })
