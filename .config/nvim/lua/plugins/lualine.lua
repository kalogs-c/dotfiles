local mode_map = {
	NORMAL = "N",
	INSERT = "I",
	VISUAL = "V",
	TERMINAL = "T",
	COMMAND = "C",
}

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	opts = {
		options = {
			component_separators = "",
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_a = {
				{
					"mode",
					fmt = function(m)
						return mode_map[m] or m
					end,
					separator = { left = "", right = "" },
				},
			},
			lualine_b = {
				"diagnostics",
			},
			lualine_c = {
				{
					"buffers",
					symbols = { alternate_file = "" },
					hide_filename_extension = true,
				},
			},
			lualine_x = { "diff" },
			lualine_z = {
				{
					"branch",
					separator = { left = "", right = "" },
				},
			},
		},
	},
}
