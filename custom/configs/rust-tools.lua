local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilites

local options = {
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
}

return options
