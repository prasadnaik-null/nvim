" set numbers of line lhs
set number
" numbering relative to the line you are on
set relativenumber
" allows mouse access
set mouse=a
" use paste from things coppied from outside vim
set clipboard=unnamedplus
" sets title instead of "/bin/bash
set title
" keeps n number of lines above and below while scrolling and going through the file
set scrolloff=7
" case insensitive
set ignorecase
" highlighting search
set hlsearch
" number of columns occupied by tab
set tabstop=4
" see multiple spaces as tabstops so <BS> does the right thing
set softtabstop=4           
" converts tabs to white space
set expandtab               
" width for autoindents
set shiftwidth=4            
" indent a new line the same amount as the line just typed
set smartindent              
" get bash-like tab completions
set wildmode=longest,list   
" syntax enhancement
filetype plugin indent on
syntax on

call plug#begin('~/.vim/plugged')
    " better status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " syntax highlighting
    Plug 'sheerun/vim-polyglot'
    " auto closing brackets
    Plug 'jiangmiao/auto-pairs'
    " sidebar to access files
    Plug 'preservim/nerdtree'
    " suggestions while coding
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " use devicons
    Plug 'ryanoasis/vim-devicons'    
    " starup page
    Plug 'mhinz/vim-startify'
call plug#end()

" nerd tree changes
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
nmap <F2> :NERDTreeToggle<CR>

" ariline theme
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" add tabs like structure
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
let mapleader = ' '
nmap <Tab>` :bp<CR>
nmap <Tab><Tab> :bn<CR>
nmap <C-w> :w<CR> :bd<CR>

" ctrl-s to save
map <C-s> :w<CR>

" j for up and k for down
" nmap j <Up>
" nmap k <Down>
" not using em as of now to just get into using proper vim keys ig

" prettier
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

" coc config source
source /home/prasad/.config/nvim/plug-config/coc.vim

" run python code in nvim
imap <F5> <Esc>:w<CR>:!clear;python3 "%"<CR>
nmap <F5> <Esc>:w<CR>:!clear;python3 "%"<CR>

" setting space as leader
" let mapleader=" "

" open buffer list using space space
nmap <Space><Space> :ls<CR>

" node path for coc
let g:coc_node_path = '/home/prasad/.nvm/versions/node/v19.3.0/bin/node'

" escape*2 will tur off the search highlight 
nnoremap <esc><esc> :silent! nohls<cr>
