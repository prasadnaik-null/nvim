" setting leader
let mapleader = " " 

" <space>pv leads to opening file manager in current folder
nmap <leader>pv <cmd>Ex<CR> 

" for pulgins
call plug#begin()
	" telescopic finder
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.x' }
	
	" treesitter
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

nnoremap <leader>ff <cmd>Telescope find_files<cr>
