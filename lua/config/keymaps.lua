-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.api.nvim_set_keymap

-- Switch buffer
keymap("n", "<C-PageUp>", ":bprevious<CR>", { noremap = true, silent = true })
keymap("n", "<C-PageDown>", ":bnext<CR>", { noremap = true, silent = true })

-- Paste over currently selected text without yanking it
keymap("v", "p", '"_dP', { noremap = true, silent = true })

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", { noremap = true, silent = true })
