return {
	{
		"stevearc/conform.nvim",
		config = function()
			require("configs.conform")
		end,
	},

	-- Lspconfig
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
		dependencies = {
			{
				"SmiteshP/nvim-navbuddy",
				dependencies = {
					"SmiteshP/nvim-navic",
					"MunifTanjim/nui.nvim",
				},
				opts = { lsp = { auto_attach = true } },
			},
		},
	},

	-- Mason
	{
		"williamboman/mason.nvim",
		opts = require("configs.mason"),
	},

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = require("configs.treesitter"),
	},

	-- Leap
	{
		"ggandor/leap.nvim",
		lazy = false,
		dependencies = {
			"tpope/vim-repeat",
		},
		config = function()
			require("leap").add_default_mappings()
		end,
	},

	-- Copilot
	{
		"Exafunction/codeium.vim",
		cmd = "Codeium",
		build = ":Codeium Auth",
		opts = {},
	},

	-- Git
	{
		"tpope/vim-fugitive",
		cmd = "Git",
	},
	{
		"sindrets/diffview.nvim",
		cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
	},
}
