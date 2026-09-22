-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- Colorscheme rotation
-- 1. Define your pool of 4 colorschemes
local themes = { "nightfox", "duskfox", "nordfox", "carbonfox", "terafox" }
-- 2. Create a variable to track the currently loaded index
local current_theme_idx = 1
-- 3. Create the rotation function
local function rotate_colorschemes()
  -- Move to the next index; loop back to 1 if we pass the end of the list
  current_theme_idx = (current_theme_idx % #themes) + 1
  
  local next_theme = themes[current_theme_idx]
  
  -- Apply the new colorscheme securely
  pcall(vim.cmd.colorscheme, next_theme)
  
  -- Optional: Print a quick message in the command bar so you know what loaded
  vim.notify("Colorscheme: " .. next_theme, vim.log.levels.INFO)
end
-- 4. Bind the function to a keymap (Example: <leader>th to "theme toggle")
vim.keymap.set("n", "<F1>", rotate_colorschemes, {
  desc = "Rotate through colorschemes"
})

-- Moving through windows
keymap.set("n", "<S-Left>", "<C-w>h", { desc = "Go to Left Window" })
keymap.set("n", "<S-Right>", "<C-w>l", { desc = "Go to Right Window" })
keymap.set("n", "<S-Up>", "<C-w>k", { desc = "Go to Upper Window" })
keymap.set("n", "<S-Down>", "<C-w>j", { desc = "Go to Lower Window" })

-- Moving through buffers
keymap.set("n", "<A-Left>", "<cmd>bprevious<CR>", { desc = "Go to Previous buffer" })
keymap.set("n", "<A-Right>", "<cmd>bnext<CR>", { desc = "Go to Next buffer" })

keymap.set("n", "<F4>", LazyVim.pick("live_grep"), { desc = "Grep in root dir" })
