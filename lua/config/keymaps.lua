-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "<C-H>", "<C-W>", { desc = "Delete previous word in insert mode" })
vim.keymap.set("i", "<C-BS>", "<C-w>", { desc = "Delete previous word in insert mode" })

-- COPILOT KEYMAP
vim.api.nvim_set_keymap('i', '<C-j>', 'copilot#Accept("<CR>")', { expr = true, silent = true, noremap = true })

-- Show notification history
vim.keymap.set("n", "<leader>nh", "<cmd>Noice history<cr>", { desc = "Show notification history" })
