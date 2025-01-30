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
        kcl = {
          mason = false,
        },
      },
    },
  },
}
