local mason = {}

mason.ensure_installed = {
	-- lua stuff
	"lua-language-server",
	"stylua",

	-- web dev stuff
	"svelte-language-server",
	"typescript-language-server",
	"eslint-lsp",
	"eslint_d",
	"prettier",
	"fixjson",

	-- devops stuff
	"dockerfile-language-server",

	-- rust
	"rust-analyzer",

	-- golang
	"gopls",
	"goimports",

	-- python
	"pyright",
	"black",
}

return mason
