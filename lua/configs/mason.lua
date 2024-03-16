local mason = {}

mason.ensure_installed = {
	-- lua stuff
	"lua-language-server",
	"stylua",

	-- web dev stuff
	"typescript-language-server",
	"eslint-lsp",
  "eslint_d",
  "prettier",
	"fixjson",

	-- devops stuff
	"dockerfile-language-server",
}

return mason
