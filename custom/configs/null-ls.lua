local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local sources = {
  -- webdev stuff
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes
  b.formatting.fixjson,
  b.diagnostics.jsonlint,

  -- JS/TS
  b.formatting.eslint,
  b.formatting.deno_fmt,
  b.diagnostics.eslint,
  b.diagnostics.tsc,
  b.code_actions.eslint,

  -- Lua
  b.formatting.stylua,

  -- go
  b.formatting.gofumpt,
  b.formatting.goimports_reviser,
  b.formatting.golines,
  b.diagnostics.gospel,

  -- C/C++
  b.formatting.clang_format,
  b.diagnostics.clang_check,

  -- devops
  b.formatting.terraform_fmt,
  b.formatting.sql_formatter,
  b.diagnostics.hadolint,

  -- functional
  b.formatting.mix,
  b.diagnostics.credo,
  b.formatting.cljstyle,
}

local on_attach = function(client, bufnr)
  if client.supports_method "textDocument/formatting" then
    vim.api.nvim_clear_autocmds {
      group = augroup,
      buffer = bufnr,
    }
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format {
          bufnr = bufnr,
        }
      end,
    })
  end
end

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = on_attach,
}
