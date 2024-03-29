-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- Themes n such
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use({ "catppuccin/nvim", as = "catppuccin" })
    use({ 'navarasu/onedark.nvim', as = "onedark" })

    use { "zbirenbaum/copilot.lua" }

    use { 'nvim-tree/nvim-web-devicons' } -- OPTIONAL: for file icons
    use { 'lewis6991/gitsigns.nvim' } -- OPTIONAL: for git status
    use { 'romgrk/barbar.nvim' }

    use('mg979/vim-visual-multi')
    use('theprimeagen/vim-be-good')
    use('sbdchd/neoformat')
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }
end)
