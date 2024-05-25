return {
	"https://git.sr.ht/~swaits/zellij-nav.nvim",
	lazy = true,
	event = "VeryLazy",
	keys = {
		{ "<c-H>", "<cmd>ZellijNavigateLeft<cr>",  { silent = true, desc = "navigate left" } },
		{ "<c-J>", "<cmd>ZellijNavigateDown<cr>",  { silent = true, desc = "navigate down" } },
		{ "<c-K>", "<cmd>ZellijNavigateUp<cr>",    { silent = true, desc = "navigate up" } },
		{ "<c-L>", "<cmd>ZellijNavigateRight<cr>", { silent = true, desc = "navigate right" } },
	},
	opts = {},
}
