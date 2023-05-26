local capabilities = require("plugins.configs.lspconfig").capabilites
local on_attach = function(client, bufnr)
  require("plugins.configs.lspconfig").on_attach(client, bufnr)
  require("nvim-navbuddy").attach(client, bufnr)
end

local options = {
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
  },
}

return options
