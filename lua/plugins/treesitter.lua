return {
  "nvim-treesitter/nvim-treesitter",
  opts = function()
    vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { link = "RenderMarkdownH1" })
    vim.api.nvim_set_hl(0, "@markup.heading.2.markdown", { link = "RenderMarkdownH2" })
    vim.api.nvim_set_hl(0, "@markup.heading.3.markdown", { link = "RenderMarkdownH3" })
    vim.api.nvim_set_hl(0, "@markup.heading.4.markdown", { link = "RenderMarkdownH4" })
    vim.api.nvim_set_hl(0, "@markup.heading.5.markdown", { link = "RenderMarkdownH5" })
    vim.api.nvim_set_hl(0, "@markup.heading.6.markdown", { link = "RenderMarkdownH6" })
    vim.api.nvim_set_hl(0, "@markup.raw.markdown_inline", { link = "markdownCode" })
    vim.api.nvim_set_hl(0, "@markup.link.label.markdown_inline", { link = "MarkdownLinkLabel" })
    vim.api.nvim_set_hl(0, "@markup.quote.markdown", { link = "MarkdownQuoteText" })
  end,
}
