
local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      opts = function()
        require "custom.configs.null-ls"
      end,
      {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
          "neovim/nvim-lspconfig",
          "SmiteshP/nvim-navic",
          "MunifTanjim/nui.nvim",
          "numToStr/Comment.nvim",
          "nvim-telescope/telescope.nvim"
        },
        opts =  { lsp = { auto_attach = true } }
      }
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "gopls",
        "gofumpt",
        "gomodifytags",
        "goimports-reviser",
        "golines",
        "pyright",
        "typescript-language-server",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "yaml-language-server",
        "svelte-language-server",
        "astro-language-server",
        "eslint-lsp",
        "deno",
        "fixjson",
        "gleam",
        "haskell-language-server",
        "ltex-ls",
      },
    },
  },
  {
    "nvim-telescope/telescope-live-grep-args.nvim",
  },
  {
    "xiyaowong/telescope-emoji.nvim",
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require("custom.configs.rust-tools")
    end,
    config = function (_, opts)
      require("rust-tools").setup(opts)
    end
  },
  {
    "saecki/crates.nvim",
    ft = {"rust", "toml"},
    config = function (_, opts)
      local crates = require("crates")
      crates.setup(opts)
      crates.show()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function ()
      local M = require("plugins.configs.cmp")
      table.insert(M.sources, {name = "crates"})
      return M
    end
  },
  {
    "wuelnerdotexe/vim-astro",
    ft = {"astro"},
  },
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  {
    "ray-x/go.nvim",
    dependencies = {  -- optional packages
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function ()
      require("custom.configs.catppuccin")
    end
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    lazy = false
  },
  {
    "RRethy/vim-illuminate",
    lazy = false
  },
  {
    'Exafunction/codeium.vim',
    lazy = false
  },
  {
    "ggandor/leap.nvim",
    dependencies = {
      "tpope/vim-repeat",
    },
    lazy = false
  },
  {
    'weilbith/nvim-code-action-menu',
    cmd = 'CodeActionMenu',
  }
}
return plugins
