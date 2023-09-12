-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set('n', '<leader>wb', '<cmd>w<cr>', { desc='[W]rite [B]uffer'})
vim.keymap.set('n', '<leader>cb', '<cmd>bd<cr>', { desc='[C]lose [B]uffer'})
