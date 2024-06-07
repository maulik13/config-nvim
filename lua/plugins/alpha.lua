return {
  "goolord/alpha-nvim",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    local fortune = require("alpha.fortune")

    -- Taken from https://github.com/AmitGolden/dotfiles/blob/main/.config/nvim/lua/user/alpha.lua
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

    -- Make the header a bit more fun with some color!
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

        table.insert(lines, line)
      end

      return lines
    end
    -- Overwrite the header item in the layout, setting section.header is not working
    dashboard.opts.layout[2] = { type = "group", val = colorize_header(), opts = { position = "center" } }
    dashboard.section.footer.val = fortune()
    dashboard.section.footer.opts.hl = "StartLogo9"

    require("alpha").setup(dashboard.opts)

    vim.api.nvim_create_autocmd("User", {
      once = true,
      pattern = "LazyVimStarted",
      callback = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        dashboard.section.footer.val = "⚡ qNeovim loaded "
          .. stats.loaded
          .. "/"
          .. stats.count
          .. " plugins in "
          .. ms
          .. "ms"
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
