local builtin = require('telescope.builtin')
require('telescope').setup{ file_ignore_patterns = {"./node_modules/*", "node_modules", "^node_modules/*", "node_modules/*", ".git"}, }
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-e>', builtin.git_files, {})
--vim.keymap.set('n', '<leader>ps', function() 
--	builtin.grep_string({ search = vim.fn.input("Grep > ") })
--end)
