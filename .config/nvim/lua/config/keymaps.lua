-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ウィンドウ移動: Ctrl+h/j/k/l は Ghostty に奪われるため Alt+h/j/k/l を使用
vim.keymap.set("n", "<A-h>", "<C-w>h", { desc = "Go to Left Window" })
vim.keymap.set("n", "<A-j>", "<C-w>j", { desc = "Go to Lower Window" })
vim.keymap.set("n", "<A-k>", "<C-w>k", { desc = "Go to Upper Window" })
vim.keymap.set("n", "<A-l>", "<C-w>l", { desc = "Go to Right Window" })
