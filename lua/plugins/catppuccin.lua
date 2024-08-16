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
      local U = require("catppuccin.utils.colors")
      -- vim.api.nvim_set_hl(0, "@markup.italic", { })

      return {
        MsgSeparator = { bg = colors.mantle },
        -- Highlight for markdown
        RenderMarkdownH1 = { fg = colors.teal, style = { "bold" } },
        RenderMarkdownH1Bg = { bg = U.darken(colors.teal, 0.3, colors.base) },
        RenderMarkdownH2 = { fg = colors.yellow, style = { "bold" } },
        RenderMarkdownH2Bg = { bg = U.darken(colors.yellow, 0.2, colors.base) },
        RenderMarkdownH3 = { fg = colors.mauve, style = { "bold" } },
        RenderMarkdownH3Bg = { bg = U.darken(colors.mauve, 0.3, colors.base) },
        RenderMarkdownH4 = { fg = colors.flamingo },
        RenderMarkdownH4Bg = { bg = U.darken(colors.flamingo, 0.15, colors.base) },
        RenderMarkdownH5 = { fg = colors.blue },
        RenderMarkdownH5Bg = { bg = U.darken(colors.blue, 0.15, colors.base) },
        RenderMarkdownH6 = { fg = colors.lavender },
        RenderMarkdownH6Bg = { bg = U.darken(colors.lavender, 0.15, colors.base) },

        RenderMarkdownBullet = { fg = colors.peach },
        RenderMarkdownQuote = { fg = colors.blue },

        MarkdownLinkLabel = { fg = colors.blue },
        MarkdownQuoteText = { fg = colors.lavender },
        ["@markup.strong"] = { fg = colors.mauve, style = { "bold" } },
        ["@markup.italic"] = { fg = colors.mauve, style = { "italic" } },
      }
    end,
  },
}
