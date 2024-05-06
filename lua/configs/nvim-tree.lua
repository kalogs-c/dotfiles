local nvimtree = {
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

return nvimtree
