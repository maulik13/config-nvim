return {
  "MeanderingProgrammer/render-markdown.nvim",
  lazy = false,
  name = "markdown.nvim",
  priority = 1000,
  opts = {
    file_types = { "markdown", "Avante" },
    pipe_table = { preset = "round" },
    code = {
      sign = true,
    },
    heading = {
      sign = false,
      width = "block",
      icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
      min_width = 90,
    },
  },
}
