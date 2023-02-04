-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
vim.api.nvim_create_autocmd('BufWritePost', {
    group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
    pattern = 'plugins.lua',
    command = 'source <afile> | PackerCompile',
})

-- main packer stuff here
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- telescope
  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.1',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- rose-pine theme
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  require("rose-pine").setup()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  -- treesitter (i dont know what this thing does but apprently its way too op)
  -- okay so the thing we use it for is syntax highlighting
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- treesitter playground (not of much use to me but okay)
  use ('nvim-treesitter/playground')

  -- go to files fast
  use ('ThePrimeagen/harpoon')

  -- undotree
  use ('mbbill/undotree')

  -- for git stuff (idk why but not working)
  -- use ('tpope/fugitive')

  -- lsp
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippet, branch = "release"s
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }

  -- sml
  use ('jez/vim-better-sml')

  -- better status bar 
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- auto closing brackets
  use 'jiangmiao/auto-pairs'

  -- file manager
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
      -- use { "nvim-telescope/telescope-file-browser.nvim" }

  -- startpage
  use 'mhinz/vim-startify'

  -- tabs
  use {
      'kdheepak/tabline.nvim',
      config = function()
          require'tabline'.setup {enable = false}
      end,
      requires = {'hoob3rt/lualine.nvim', 'kyazdani42/nvim-web-devicons'}
  }

  -- org mode compatibility
  use {'nvim-orgmode/orgmode', config = function()
      require('orgmode').setup{}
      require('orgmode').setup_ts_grammar{}
      end
  }

  -- indentation
  use 'lukas-reineke/indent-blankline.nvim'

  -- cheatsheet
  use {
      'sudormrfbin/cheatsheet.nvim',

      requires = {
          {'nvim-telescope/telescope.nvim'},
          {'nvim-lua/popup.nvim'},
          {'nvim-lua/plenary.nvim'},
      }
  }
end)
