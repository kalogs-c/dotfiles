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
  filetypes = { "c", "cpp", "objc", "objcpp", "h", "hpp" },
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
}

lspconfig.terraformls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.dockerls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
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
}

lspconfig.intelephense.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.phpactor.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.ruby_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.jdtls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
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
