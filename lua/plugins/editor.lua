return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {},
      setup = {
        eslint = function()
          Snacks.util.lsp.on({ name = "eslint" }, function(_, client)
            if client.name == "eslint" then
              client.server_capabilities.documentFormattingProvider = true
            elseif client.name == "tsserver" then
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
        end,
      },
      diagnostics = {
        float = {
          border = "rounded",
        },
      },
    },
  },
}
