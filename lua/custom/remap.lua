vim.g.mapleader = " "
vim.keymap.set("n", "<leader>gb", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv");
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv");

-- vim.keymap.set("n", "J", ":m '>+1<CR>gv=gv");
-- vim.keymap.set("n", "K", ":m '<-2<CR>gv=gv");

vim.keymap.set("n", "<C-J>", "yyp")
vim.keymap.set("n", "<C-K>", "yykp")

vim.keymap.set("v", "<C-J>", "yyp")
vim.keymap.set("v", "<C-K>", "yykp")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<A-d>", "<C-d>zz")
vim.keymap.set("n", "<A-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>l", ":nohlsearch<CR>")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<C-c>", "<Esc>")
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<A-c>", "<Esc>")
vim.keymap.set("i", "<A-c>", "<Esc>")

vim.keymap.set("n", "<C-s>", "<Cmd>:w<CR>")
vim.keymap.set("i", "<C-s>", "<Cmd>:w<CR>")

vim.keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<A-h>', '<Cmd>BufferPrevious<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<A-l>', '<Cmd>BufferNext<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
vim.keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
vim.keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
vim.keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
vim.keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
vim.keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
vim.keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')
vim.keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>')

vim.keymap.set("n", "<leader>q", ":q<CR>")

vim.keymap.set("n", "<leader>h", ":set hlsearch!<CR>")

vim.keymap.set("n", "<leader> f", ":Neoformat prettier")
