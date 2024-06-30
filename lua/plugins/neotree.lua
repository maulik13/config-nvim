return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {},
    filesystem = {
      filtered_items = {
        visible = false,
        hide_dotfiles = false,
        hide_gitignored = true,
        show_hidden_count = true,
        hide_by_name = {
          ".git",
          ".DS_Store",
          "thumb.db",
          "thumb",
          ".idea",
          "node_modules",
          ".cache",
        },
      },
    },
  },
}
