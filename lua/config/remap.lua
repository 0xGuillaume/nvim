vim.g.mapleader = " "

-- Normal mode
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "oo", "o<ESC>")
vim.keymap.set("n", "OO", "O<ESC>")
vim.keymap.set("n", "Y", "y$")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-Right>", ":bnext")
vim.keymap.set("n", "<C-Left>", ":bprev")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Insert mode
vim.keymap.set("i", "<C-c>", "<ESC>")

-- Visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
