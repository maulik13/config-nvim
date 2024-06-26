local g = vim.g

if g.neovide then
  g.neovide_transparency = 0.95
  g.neovide_window_blurred = true
  g.neovide_floating_blur_amount_x = 6.0
  g.neovide_floating_blur_amount_y = 6.0
  g.neovide_refresh_rate = 144
  g.neovide_cursor_vfx_mode = "ripple"
  g.neovide_cursor_animation_length = 0.03
  g.neovide_cursor_trail_size = 0.9
  g.neovide_remember_window_size = true
  g.neovide_underline_stroke_scale = 1.50
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
