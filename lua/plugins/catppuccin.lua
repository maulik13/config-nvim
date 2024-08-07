return {
  "catppuccin/nvim",
  lazy = true,
  name = "catppuccin",
  priority = 2000,
  opts = {
    flavour = "auto",
    background = {
      light = "latte",
      dark = "machhiato",
    },
    transparent_background = true,
    no_bold = false,
    integrations = {
      harpoon = true,
      fidget = true,
      cmp = true,
      flash = true,
      gitsigns = true,
      illuminate = true,
      indent_blankline = { enabled = true },
      lsp_trouble = true,
      mason = true,
      mini = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      navic = { enabled = true, custom_bg = "lualine" },
      neotest = true,
      noice = true,
      notify = true,
      neotree = true,
      semantic_tokens = true,
      telescope = true,
      treesitter = true,
      which_key = true,
    },
    highlight_overrides = {
      all = function(colors)
        return {
          DiagnosticVirtualTextError = { bg = colors.none },
          DiagnosticVirtualTextWarn = { bg = colors.none },
          DiagnosticVirtualTextHint = { bg = colors.none },
          DiagnosticVirtualTextInfo = { bg = colors.none },
        }
      end,
    },
    color_overrides = {
      mocha = {},
    },
    custom_highlights = function(colors)
      return {
        MsgSeparator = { bg = colors.mantle },
      }
    end,
  },
}
