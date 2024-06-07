local header = {
  [[                                                                   ]],
  [[      ████ ██████           █████      ██                    ]],
  [[     ███████████             █████                            ]],
  [[     █████████ ███████████████████ ███   ███████████  ]],
  [[    █████████  ███    █████████████ █████ ██████████████  ]],
  [[   █████████ ██████████ █████████ █████ █████ ████ █████  ]],
  [[ ███████████ ███    ███ █████████ █████ █████ ████ █████ ]],
  [[██████  █████████████████████ ████ █████ █████ ████ ██████]],
}

local function colorize_header()
  local catppuccin = require("catppuccin.palettes").get_palette()
  local colors = {
    catppuccin.red,
    catppuccin.red,
    catppuccin.peach,
    catppuccin.yellow,
    catppuccin.green,
    catppuccin.sky,
    catppuccin.blue,
    catppuccin.mauve,
    catppuccin.overlay0,
  }
  for i, color in pairs(colors) do
    local cmd = "hi StartLogo" .. i .. " guifg=" .. color
    vim.cmd(cmd)
  end

  local lines = {}

  for i, chars in pairs(header) do
    local line = {
      type = "text",
      val = chars,
      opts = {
        hl = "StartLogo" .. i,
        shrink_margin = false,
        position = "center",
      },
    }
    print(vim.inspect(line))
    table.insert(lines, line)
  end
  return lines
end

return {
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 5000,
    },
  },
  -- animations
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = true,
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
}
