local lsp = require('lsp-zero').preset({})

lsp.preset("recommended")

-- lsp.on_attach(function(client, bufnr)
--   -- see :help lsp-zero-keybindings
--   -- to learn the available actions
--   lsp.default_keymaps({
-- 	  buffer = bufnr,
-- 	  preserve_mappings = false
--   })
-- end)

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({ buffer = bufnr })
    local opts = { buffer = bufnr }

    vim.keymap.set({ 'n', 'x' }, '<leader>f', function()
        vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
    end, opts)
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
end)

lsp.setup_servers({ 'tsserver', 'eslint' })

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.configure('gdscript', {
    force_setup = true, -- because the LSP is global. Read more on lsp-zero docs about this.
    single_file_support = false,
    cmd = {'ncat', 'localhost', '6005'}, -- the important trick for Windows!
    root_dir = require('lspconfig.util').root_pattern('project.godot', '.git'),
    filetypes = {'gd', 'gdscript', 'gdscript3' }
})

lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = {
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({ select = false }),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Navigate between snippet placeholder
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    }
})

