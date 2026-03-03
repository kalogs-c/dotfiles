local formatters = {}
local languages = require("configs.languages")

for lang, opts in pairs(languages) do
	if type(opts.fmt) == "string" then
		formatters[lang] = { opts.fmt }
	else
		formatters[lang] = opts.fmt or {}
	end
end

return {
	notify_on_error = false,
	default_format_opts = {
		timeout_ms = 3000,
		async = false, -- not recommended to change
		quiet = false, -- not recommended to change
		lsp_format = "fallback", -- not recommended to change
	},
	formatters_by_ft = formatters,
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}
