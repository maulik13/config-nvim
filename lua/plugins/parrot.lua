return {
  "frankroeder/parrot.nvim",
  dependencies = {
    "ibhagwan/fzf-lua",
    "nvim-lua/plenary.nvim",
  },
  opts = {
    openai = {
      api_key = os.getenv("OPENAI_API_KEY"),
    },
    anthropic = {
      api_key = os.getenv("ANTHROPIC_API_KEY"),
    },
  },
}
