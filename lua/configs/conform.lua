local options = {
	lsp_fallback = true,

	formatters_by_ft = {
		lua = { "stylua" },

		javascript = { "eslint_d" },
		typescript = { "eslint_d" },

    rust = { "rustfmt" },

    go = { "goimports" },

    python = { "black" },
	},
}

require("conform").setup(options)
