local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "cpp",
    "markdown",
    "markdown_inline",
    "svelte",
    "go",
    "rust",
    "python",
    "bash",
    "json",
    "yaml",
    "dockerfile",
    "terraform",
    "sql",
    "php",
    "kotlin",
    "ruby",
    "java",
    "elixir",
    "clojure",
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "eslint-lsp",
    "fixjson",
    "svelte-language-server",
    "intelephense",
    "phpactor",
    "ruby-lsp",
    "jdtls",

    -- functional stuff
    "elixir-ls",
    "clojure-lsp",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- python stuff
    "pyright",

    -- rust stuff
    "rust-analyzer",

    -- golang stuff
    "gopls",
    "gofumpt",
    "goimports-reviser",
    "golines",
    "gomodifytags",

    -- devops stuff
    "dockerfile-language-server",
    "yaml-language-server",
    "docker-compose-language-service",
    "terraform-ls",
    "sqlls",

    -- markdown
    "ltex-ls",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
    ignore = false,
  },
  filters = {
    custom = { ".git$" },
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
