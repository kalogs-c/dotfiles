return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		delay = 200,
		spec = {
			{ "<leader>c", group = "code" },
			{ "<leader>d", group = "debug" },
			{ "<leader>ds", group = "step" },
			{ "<leader>f", group = "find" },
			{ "<leader>fg", group = "git" },
			{ "<leader>g", group = "git" },
			{ "<leader>gd", group = "diff" },
			{ "<leader>gs", group = "stage" },
			{ "<leader>l", group = "lsp" },
			{ "<leader>r", group = "toggle" },
			{ "<leader>t", group = "test" },
			{ "<leader>tr", group = "run" },
		},
	},
}
