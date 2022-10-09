

syntax enable
filetype plugin on

set nocompatible
set path+=**
set exrc
set directory=~/.vim/swapfiles/
set wildmenu
set number
set relativenumber
set guicursor=
set cursorline
" set cursorcolumn
" highlight CursorLine ctermbg=233 
" highlight CursorColumn ctermbg=234
set ruler
set laststatus=2
set hlsearch
set incsearch
set complete+=kspell
set completeopt=menuone,longest,preview
set scrolloff=8
set ignorecase
set smartcase
set showmatch
set smd
set t_Co=256
set encoding=utf-8
set expandtab
set shiftwidth=4
set softtabstop=4
set scl=yes
set hidden
set history=100
" set colorcolumn=80
set timeoutlen=401
set nospell
set spelllang=en_us
set clipboard+=unnamedplus
set mouse=a
set wildmode=longest,list,full
set signcolumn=yes

" for arabic 
set termbidi

" set tree listing at netrw default
let g:netrw_banner = 0
let g:netrw_liststyle = 3

imap jj <Esc>
imap jk <Esc>
let mapleader = " "


" better split navigation
" nnoremap <C-j> <C-W><C-J>
" nnoremap <C-k> <C-W><C-K>
nnoremap <C-h> <C-W><C-H>
nnoremap <C-l> <C-W><C-L>

" adjust split size with leader key
nnoremap <silent> <leader>p :vertical resize +5<CR>
nnoremap <silent> <leader>o :vertical resize -5<CR>
nnoremap <silent> <leader>i :resize +5<CR>
nnoremap <silent> <leader>u :resize -5<CR>

" :ls and :b for easier buffer navigation
noremap <leader>l :ls<cr>:b

" Alias write and quit to Leader
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>

" open netrw in split
noremap <leader>e :vsplit<CR> :Explore<CR>  

" scroll bind for diff comparisons
" nnoremap <leader>sb :set scrollbind<CR>
" nnoremap <leader>sn :set noscrollbind<CR>
nnoremap <leader>s :set scrollbind<CR>
nnoremap <leader>S :set noscrollbind<CR>

" open command history with key
noremap <leader>h q:

" clear last search highlight
noremap <leader>c :let @/ = ""<CR>

" move lines up or down with shift
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

" better visual indent
vnoremap < <gv
vnoremap > >gv

" remap q to Q to prevent accidental macro
noremap Q q
noremap q <Nop>

" load vimrc
nnoremap <F5>:source ~/.vimrc<CR>
" noremap <F5> :source /workspaces/11088342/config/vimrc<CR>

" TAB in general mode will go to next buffer.
nnoremap <TAB> :bnext<CR>

" set enter as next found item
noremap <ENTER> n

" ALT TAB will go to next tab
noremap <M-TAB> <Esc>gt<CR>
tnoremap <M-TAB> <Esc>gt<CR>
 
" quick find replace snippet
nnoremap S :%s//g<Left><Left>

call plug#begin('~/.vim/plugged')

Plug 'kdheepak/lazygit.nvim'
" vim color schemes
Plug 'rafi/awesome-vim-colorschemes'
Plug 'folke/tokyonight.nvim'

" auto pop-up complete built-in autocomplete
Plug 'vim-scripts/AutoComplPop'

" XML plugin
Plug 'sukima/xmledit'

" which key for leader keys
Plug 'liuchengxu/vim-which-key'

" Git Tool
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Airline
Plug 'vim-airline/vim-airline'

" Syntastic
Plug 'vim-syntastic/syntastic'

" Primegagen game
Plug 'ThePrimeagen/vim-be-good'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

" keybindings to help AutoComplPop
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"
inoremap <expr> <Right> pumvisible() ? "<C-y>" :"<Right>"

inoremap <expr> <Left> pumvisible() ? "<C-e>" :"<Left>"

inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <C-j> pumvisible() ? "<C-n>" :"<C-j>"
inoremap <expr> <Up> pumvisible() ? "<C-p>":"<Up>"
inoremap <expr> <C-k> pumvisible() ? "<C-p>" :"<C-k>"

" colorschemes
" colorscheme tokyonight-night
colorscheme elflord

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
