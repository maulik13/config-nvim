return {
  {
    "kcl-lang/kcl.nvim",
    ft = "kcl",
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        kcl = {
          mason = false,
        },
      },
    },
  },
}
