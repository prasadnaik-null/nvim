-- ## ALL PACKER USED IN HERE

-- ## Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
vim.api.nvim_create_autocmd('BufWritePost', {
    group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
    pattern = 'plugins.lua',
    command = 'source <afile> | PackerSync',
})

-- ## Main packer stuff here
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Fuzzy finder : Telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    -- File browser : Telescope file browser
    use 'nvim-telescope/telescope-file-browser.nvim'

    -- Colour theme : Rose pine
    use {
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require("rose-pine").setup()
            vim.cmd('colorscheme rose-pine')
        end
    }

    -- Syntax highlighting : Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- All undo's : Undotree
    use 'mbbill/undotree'

    -- LSP : lsp-zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            'neovim/nvim-lspconfig',             -- Required
            'williamboman/mason.nvim',           -- Optional
            'williamboman/mason-lspconfig.nvim', -- Optional

            -- Autocompletion
            'hrsh7th/nvim-cmp',         -- Required
            'hrsh7th/cmp-nvim-lsp',     -- Required
            'hrsh7th/cmp-buffer',       -- Optional
            'hrsh7th/cmp-path',         -- Optional
            'saadparwaiz1/cmp_luasnip', -- Optional
            'hrsh7th/cmp-nvim-lua',     -- Optional

            -- Snippet, branch = "release"s
            'L3MON4D3/LuaSnip',             -- Required
            'rafamadriz/friendly-snippets', -- Optional
        }
    }

    -- Better statusline : Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Auto closing brackets : auto-pairs
    use 'jiangmiao/auto-pairs'

    -- Starup page : startify
    use 'mhinz/vim-startify'

    -- Comment stuff out fast : vim - commentary
    use 'tpope/vim-commentary'

    -- File browser (better than telescope) : nvim tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
        tag = 'nightly'
    }

    -- Hints on the next key to press while using keymaps : which-key
    use 'folke/which-key.nvim'


    -- Go to files fast : harpoon
    use 'ThePrimeagen/harpoon'

    -- Git changes otg : Git Gutter
    use 'airblade/vim-gitgutter'
end)
