return {
  "coder/claudecode.nvim",
  dependencies = { "folke/snacks.nvim" },
  config = true,
  keys = {
    { "<leader>i", nil, desc = "AI/Claude Code" },
    { "<leader>ic", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
    { "<leader>if", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
    { "<leader>ir", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
    { "<leader>iC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
    { "<leader>ib", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
    { "<leader>is", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
    {
      "<leader>is",
      "<cmd>ClaudeCodeTreeAdd<cr>",
      desc = "Add file",
      ft = { "NvimTree", "neo-tree", "oil" },
    },
    -- Diff management
    { "<leader>ia", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
    { "<leader>id", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
  },
}
