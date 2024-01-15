-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- keymap to split window to right
vim.api.nvim_set_keymap("n", "<leader>\\", "<Cmd>vsplit<CR>", { noremap = true, silent = true })
-- -- keymap to toggle terminal
-- vim.api.nvim_set_keymap(
--   "n",
--   "<C-/>",
--   '<Cmd>ToggleTerm direction="horizontal" size=20<CR>',
--   { noremap = true, silent = true }
-- )
-- vim.api.nvim_set_keymap("n", "<C-/>", "<Cmd>ToggleTerm<CR>", { noremap = true, silent = true })
-- vim.keymap.set({ "n", "t" }, "<C-/>", "<Cmd>ToggleTerm direction='horizontal'<CR>", { noremap = true, silent = true })
