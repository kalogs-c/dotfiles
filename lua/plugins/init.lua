return {
	-- Format
	{
		"stevearc/conform.nvim",
		config = function()
			require("configs.conform")
		end,
	},

	-- Lint
	{
		"mfussenegger/nvim-lint",
		config = function()
			require("configs.lint")
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

	-- Nvim Tree
	{
		"nvim-tree/nvim-tree.lua",
		opts = require("configs.nvim-tree"),
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
		lazy = false,
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

	-- SQL
	{
		"kristijanhusak/vim-dadbod-ui",
		cmd = {
      "DBUI",
      "DBUIToggle",
    },
		dependencies = {
			{ "tpope/vim-dadbod", lazy = true },
			{ "kristijanhusak/vim-dadbod-completion" },
		},
		init = function()
			vim.g.db_ui_use_nerd_fonts = 1
		end,
	},
}
