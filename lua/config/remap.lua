vim.g.mapleader = " "

-- Normal mode
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "oo", "o<ESC>")
vim.keymap.set("n", "OO", "O<ESC>")
vim.keymap.set("n", "Y", "y$")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-Right>", ":bnext")
vim.keymap.set("n", "<C-Left>", ":bprev")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Navigate the split view easier by pressing:
-- CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Resize split windows using arrow keys by pressing:
-- CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
vim.api.nvim_set_keymap('n', '<C-Up>', '<C-w>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', '<C-w>-', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Left>', '<C-w><', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>', '<C-w>>', { noremap = true, silent = true })

-- Insert mode
vim.keymap.set("i", "<C-c>", "<ESC>")
