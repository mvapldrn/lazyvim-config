-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- Moving through windows
keymap.set("n", "<S-Left>", "<C-w>h", { desc = "Go to Left Window" })
keymap.set("n", "<S-Right>", "<C-w>l", { desc = "Go to Right Window" })
keymap.set("n", "<S-Up>", "<C-w>k", { desc = "Go to Upper Window" })
keymap.set("n", "<S-Down>", "<C-w>j", { desc = "Go to Lower Window" })

-- Moving through buffers
keymap.set("n", "<A-Left>", "<cmd>bprevious<CR>", { desc = "Go to Previous buffer" })
keymap.set("n", "<A-Right>", "<cmd>bnext<CR>", { desc = "Go to Next buffer" })

keymap.set("n", "<F4>", LazyVim.pick("live_grep"), { desc = "Grep in root dir" })
