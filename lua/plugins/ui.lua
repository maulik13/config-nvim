return {
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 5000,
    },
  },
  -- animations
  {
    "nvim-mini/mini.animate",
    lazy = true,
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
      opts.cursor = {
        enable = false,
      }
    end,
  },
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = true,
        tmux = true,
        kitty = { enabled = false, font = "+2" },
      },
    },
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      indent = {
        char = "⋮",
        only_scope = true,
      },
    },
    {
      "nvim-lualine/lualine.nvim",
      opts = {
        options = {
          theme = "catppuccin",
        },
      },
    },
  },
}
