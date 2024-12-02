return {
  "leath-dub/snipe.nvim",
  opts = {
    ui = {
      position = "cursor",
      open_win_override = {
        title = "Jump to buffer",
        border = "rounded", -- use "rounded" for rounded border
      },
    },
  },
  keys = {
    {
      "gf",
      function()
        require("snipe").open_buffer_menu()
      end,
      desc = "Open Snipe buffer menu",
    },
  },
}
