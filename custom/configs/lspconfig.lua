local util = require "lspconfig/util"
local lspconfig = require "lspconfig"
local nvchadLspConfig = require "plugins.configs.lspconfig"

local on_attach = function(client, bufnr)
  nvchadLspConfig.on_attach(client, bufnr)
  require("nvim-navbuddy").attach(client, bufnr)
end

local capabilities = nvchadLspConfig.capabilites

lspconfig.html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "html", "htmldjango" },
}

lspconfig.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "css", "scss", "less" },
}

lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = {
    offsetEncoding = { "utf-16" },
  },
  filetypes = { "c", "cpp", "objc", "objcpp", "h", "hpp", "cc", "hh" },
}

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  settings = {
    gopls = {
      buildFlags = { "-tags=wireinject" },
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
  root_dir = util.root_pattern("go.mod", "go.sum", "go.work"),
}

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "javascript", "typescript", "js", "jsx", "ts", "tsx", "json" },
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python", "py" },
}

lspconfig.docker_compose_language_service.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "yaml", "yml" },
}

lspconfig.terraformls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "tf", "tfvars" },
}

lspconfig.dockerls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "yaml", "yml" },
}

lspconfig.yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "yaml", "yml" },
  settings = {
    yaml = {
      keyOrdering = false,
    },
  },
}

lspconfig.denols.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  root_dir = util.root_pattern("deno.json", "deno.jsonc"),
}

lspconfig.svelte.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "svelte" },
}

lspconfig.eslint.setup {
  on_attach = nvchadLspConfig.on_attach,
  capabilities = capabilities,
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "vue",
    "svelte",
    "astro",
  },
  root_dir = util.root_pattern(".eslintrc.*"),
}

lspconfig.ltex.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "markdown", "tex" },
  settings = {
    ltex = {
      language = { "en-GB", "pt-BR" },
    },
  },
}

lspconfig.sqlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "sql" },
}

lspconfig.intelephense.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "php" },
}

lspconfig.phpactor.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "php" },
}

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  root_dir = util.root_pattern("Cargo.toml"),
}

lspconfig.ruby_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "rb", "erb" },
}

lspconfig.elixirls.setup {
  cmd = { "/home/carlinhos/.local/share/nvim/mason/packages/elixir-ls/language_server.sh" },
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.clojure_lsp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
