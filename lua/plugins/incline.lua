return {
  "b0o/incline.nvim",
  dependencies = { "catppuccin/nvim" },
  event = "BufReadPre",
  priority = 1200,
  config = function()
    local U = require("catppuccin.utils.colors")
    local C = require("catppuccin.palettes").get_palette("macchiato")
    require("incline").setup({
      highlight = {
        groups = {
          InclineNormal = {
            guibg = U.darken(U.increase_saturation(C.mauve, 0.7), 0.5, C.base),
            guifg = C.text,
            gui = "bold",
            cterm = "bold",
          },
          InclineNormalNC = { guifg = C.text, guibg = C.surface1 },
        },
      },
      window = { margin = { vertical = 1, horizontal = 1 } },
      hide = {
        cursorline = true,
      },
      render = function(props)
        local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
        if vim.bo[props.buf].modified then
          filename = "[+] " .. filename
        end

        local icon, color = require("nvim-web-devicons").get_icon_color(filename)
        return { { icon, guifg = color }, { "  " }, { filename } }
      end,
    })
  end,
}
