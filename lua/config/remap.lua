vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "oo", "o<ESC>")
vim.keymap.set("n", "OO", "O<ESC>")
vim.keymap.set("n", "Y", "y$")

vim.keymap.set("n", "<C-Right>", ":bnext")
vim.keymap.set("n", "<C-Left>", ":bprev")

vim.keymap.set("i", "<C-c>", "<ESC>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
