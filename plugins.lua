local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "gopls",
        "pyright",
        "typescript-language-server",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "yaml-language-server",
      },
    },
  },
}
return plugins
