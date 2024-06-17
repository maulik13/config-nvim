-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local discipline = require("craftzdog.discipline")

discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Bufferline
keymap.set("n", "<leader>bk", ":BufferLinePick<cr>", { desc = "Pick buffer" })

-- New tab
keymap.set("n", "]<tab>", ":tabnext<Return>", opts)
keymap.set("n", "[<tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Resize window using <shift> arrow keys
keymap.set("n", "<S-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
keymap.set("n", "<S-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
keymap.set("n", "<S-Left>", "<cmd>vertical resize +5<cr>", { desc = "Decrease window width" })
keymap.set("n", "<S-Right>", "<cmd>vertical resize -5<cr>", { desc = "Increase window width" })

-- Selection
keymap.set("n", "aa", "ggVG", { desc = "Select all" })

-- Disable some keymaps
keymap.del("n", "<S-h>") -- Switch to previous buffer
keymap.del("n", "<S-l>") -- Switch to next buffer
keymap.del("n", "<leader>`") -- Switch to Other Buffer
keymap.del("n", "<leader>K") -- "<cmd>norm! K<cr>", { desc = "Keywordprg" })
