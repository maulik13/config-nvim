return {
  {
    "neovim/nvim-lspconfig",
    ft = { "nix" },
    opts = {},
    config = function(_, opts)
      require("lspconfig").nil_ls.setup(opts)
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        nix = { "nixfmt" },
      },
    },
  },
}
