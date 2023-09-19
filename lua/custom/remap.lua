vim.g.mapleader = " "
vim.keymap.set("n", "<leader>gb", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv");
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv");

vim.keymap.set("n", "<C-J>", "yyp")
vim.keymap.set("n", "<C-K>", "yykp")

vim.keymap.set("v", "<C-J>", "yyp")
vim.keymap.set("v", "<C-K>", "yykp")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>l", ":nohlsearch<CR>")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<C-c>", "<Esc>")
vim.keymap.set("i", "<C-c>", "<Esc>")


vim.keymap.set("n", "<leader>q", ":q<CR>")

vim.keymap.set("n", "<leader>h", ":set hlsearch!<CR>")

vim.keymap.set("n", "<leader> f", ":Neoformat prettier")
