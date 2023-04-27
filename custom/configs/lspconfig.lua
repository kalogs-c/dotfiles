local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilites
local util = require("lspconfig/util")
local lspconfig = require("lspconfig")

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "go", "gomod" },
  settings = {
    gopls = {
      buildFlags = { "-tags=wireinject" },
    },
  },
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

lspconfig.dockerls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.eslint.setup {
  on_attach = function(_, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
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
    "astro"
  }
}

lspconfig.svelte.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "svelte" }
}

lspconfig.astro.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "astro" },
  init_options = {
    typescript = {
      serverPath = "/home/carlinhos/.local/share/nvim/mason/packages/typescript-language-server/node_modules/typescript"
    }
  }
}

lspconfig.gleam.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "gleam" }
}

lspconfig.hls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "haskell" }
}
