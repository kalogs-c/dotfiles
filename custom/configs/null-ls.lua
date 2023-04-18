local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
  debug = false,
  sources = {
    formatting.gofmt,
    formatting.fixjson,
    formatting.yamlfmt,
    formatting.eslint_d,

    diagnostics.tsc,
  }
})
