return {
  {
    "akinsho/bufferline.nvim",
    after = "catppuccin",
    opts = function(_, opts)
      local in_zellij = vim.env.ZELLIJ ~= nil
      opts.options = vim.tbl_deep_extend("force", opts.options or {}, {
        indicator = {
          icon = " ",
          style = in_zellij and "icon" or "underline",
        },
      })
      opts.highlights = require("catppuccin.special.bufferline").get_theme()
    end,
  },
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
          -- theme = "catppuccin",
        },
      },
    },
  },
}
