local configs = require("nvchad.configs.lspconfig")
local util = require("lspconfig/util")

local on_init = configs.on_init
local capabilities = configs.capabilities
local on_attach = function(client, bufnr)
	configs.on_attach(client, bufnr)
	require("nvim-navbuddy").attach(client, bufnr)
end

local lspconfig = require("lspconfig")

lspconfig.tsserver.setup({
	on_init = on_init,
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "javascript", "typescript", "js", "ts", "json" },
})

lspconfig.dockerls.setup({
	on_init = on_init,
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "dockerfile" },
})

lspconfig.eslint.setup({
	on_attach = configs.on_attach,
	capabilities = capabilities,
	filetypes = {
		"javascript",
		"typescript",
	},
	root_dir = util.root_pattern(".eslintrc.*"),
})
