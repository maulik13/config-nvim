vim.filetype.add({
  extension = {
    k = "kcl",
    kcl = "kcl",
  },
})
return {
  {
    "kcl-lang/kcl.nvim",
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        kcl = {},
      },
    },
    setup = {},
  },
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "kcl" } },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {},
  },
}
