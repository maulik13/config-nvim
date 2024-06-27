-- Customize the entire bufferline theme from catppuccin
local function getHighlights()
  local C = require("catppuccin.palettes").get_palette("macchiato")
  local O = require("catppuccin").options
  local transparent_background = O.transparent_background
  local active_bg = transparent_background and "NONE" or C.crust
  local inactive_bg = transparent_background and "NONE" or C.base
  local separator_fg = O.transparent_background or C.crust
  local inactive_fg = C.surface2
  local styles = { "bold", "italic" }
  local active_sp = C.red
  local inactive_sp = C.flamingo

  return {
    -- buffers
    background = { bg = inactive_bg, fg = inactive_fg },
    buffer_visible = { fg = inactive_fg, bg = inactive_bg },
    buffer_selected = { fg = C.text, bg = active_bg, bold = true, italic = true, sp = active_sp },
    -- Duplicate
    duplicate_selected = { fg = C.text, bg = active_bg, bold = true, italic = true, sp = active_sp },
    duplicate_visible = { fg = C.surface1, bg = inactive_bg, bold = true, italic = true },
    duplicate = { fg = C.surface1, bg = inactive_bg, bold = true, italic = true },
    -- tabs
    tab = { fg = C.surface2, bg = inactive_bg },
    tab_selected = { fg = C.sky, bg = C.surface1, bold = true, italic = true },
    tab_separator = { fg = inactive_bg, bg = inactive_bg },
    tab_separator_selected = { fg = C.surface1, bg = C.surface1 },
    tab_close = { fg = C.red, bg = inactive_bg },

    indicator_visible = { fg = C.peach, bg = inactive_bg, bold = true, italic = true },
    indicator_selected = { fg = C.flamingo, bg = active_bg, sp = active_sp },
    -- separators
    separator = { fg = inactive_bg, bg = inactive_bg },
    separator_visible = { fg = C.blue, bg = inactive_bg },
    separator_selected = { fg = C.yellow, bg = C.red, sp = active_sp },
    offset_separator = { fg = C.red, bg = inactive_bg },
    -- close buttons
    close_button = { fg = C.surface1, bg = inactive_bg },
    close_button_visible = { fg = C.surface1, bg = inactive_bg },
    close_button_selected = { fg = C.red, bg = active_bg, sp = active_sp },
    -- Empty fill
    fill = { bg = inactive_bg },
    -- Numbers
    numbers = { fg = C.subtext0, bg = inactive_bg },
    numbers_visible = { fg = C.subtext0, bg = inactive_bg },
    numbers_selected = { fg = C.subtext0, bg = active_bg, bold = true, italic = true, sp = active_sp },
    -- Errors
    error = { fg = inactive_fg, bg = inactive_bg },
    error_visible = { fg = inactive_fg, bg = inactive_bg },
    error_selected = { fg = C.red, bg = active_bg, bold = true, italic = true, sp = active_sp },
    error_diagnostic = { fg = inactive_fg, bg = inactive_bg },
    error_diagnostic_visible = { fg = inactive_fg, bg = inactive_bg },
    error_diagnostic_selected = { fg = C.red, bg = active_bg, sp = active_sp },
    -- Warnings
    warning = { fg = inactive_fg, bg = inactive_bg },
    warning_visible = { fg = inactive_fg, bg = inactive_bg },
    warning_selected = { fg = C.yellow, bg = active_bg, bold = true, italic = true, sp = active_sp },
    warning_diagnostic = { fg = inactive_fg, bg = inactive_bg },
    warning_diagnostic_visible = { fg = inactive_fg, bg = inactive_bg },
    warning_diagnostic_selected = { fg = C.yellow, bg = active_bg, sp = active_sp },
    -- Infos
    info = { fg = inactive_fg, bg = inactive_bg },
    info_visible = { fg = inactive_fg, bg = inactive_bg },
    info_selected = { fg = C.sky, bg = active_bg, bold = true, italic = true, sp = active_sp },
    info_diagnostic = { fg = inactive_fg, bg = inactive_bg },
    info_diagnostic_visible = { fg = inactive_fg, bg = inactive_bg },
    info_diagnostic_selected = { fg = C.sky, bg = active_bg, sp = active_sp },
    -- Hint
    hint = { fg = inactive_fg, bg = inactive_bg },
    hint_visible = { fg = inactive_fg, bg = inactive_bg },
    hint_selected = { fg = C.teal, bg = active_bg, bold = true, italic = true, sp = active_sp },
    hint_diagnostic = { fg = inactive_fg, bg = inactive_bg },
    hint_diagnostic_visible = { fg = inactive_fg, bg = inactive_bg },
    hint_diagnostic_selected = { fg = C.teal, bg = active_bg, sp = active_sp },
    -- Diagnostics
    diagnostic = { fg = inactive_fg, bg = inactive_bg },
    diagnostic_visible = { fg = inactive_fg, bg = inactive_bg },
    diagnostic_selected = { fg = C.subtext0, bg = active_bg, bold = true, italic = true, sp = active_sp },
    -- Modified
    modified = { fg = C.peach, bg = inactive_bg },
    modified_visible = { fg = C.peach, bg = inactive_bg },
    modified_selected = { fg = C.peach, bg = active_bg, sp = active_sp },
  }
end

return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  dependencies = {
    "catppuccin/nvim",
  },
  keys = {
    -- { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
    -- { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
  },
  opts = {
    options = {
      themable = true,
      always_show_bufferline = true,
      show_buffer_close_icons = true,
      show_close_icon = false,
      -- numbers = function(opts)
      --   return string.format("%s", opts.raise(opts.ordinal))
      -- end,
      indicator = {
        style = "underline",
      },
      -- This does not work due to a bug, will wait or fix this later
      -- separator_style = { "", "" },
      -- separator_style = { "", "" },
      -- separator_style = { "", "" },

      -- separator_style = "slant",
      offsets = {
        {
          filetype = "neo-tree",
          text_align = "left",
          text = "Explorer",
        },
      },
    },
    highlights = getHighlights(),
  },
}
