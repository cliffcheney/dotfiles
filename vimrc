" vimrc by Cliff Cheney
" aiming for no plugins

syntax enable
filetype plugin on

set nocompatible
set path+=**
set directory=~/.vim/swapfiles/
set wildmenu
set number
set relativenumber
set nocursorline
set cursorline
set ruler
set laststatus=2
set hlsearch
set ignorecase
set smartcase
set smd
set t_Co=256
set encoding=utf-8
set expandtab
set shiftwidth=4
set softtabstop=4
set scl=yes
set hidden
set history=100
" set colorcolumn=100
set timeoutlen=400
set nospell
set spelllang=en_us
set clipboard+=unnamedplus
set mouse=a
set wildmode=longest,list,full
set termbidi

" set tree listing at netrw default
let g:netrw_liststyle= 3

imap jj <Esc>
imap jk <Esc>
let mapleader = " "

" colorschemes
" colorscheme delek

" better split navigation
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-h> <C-W><C-H>
nnoremap <C-l> <C-W><C-L>

"adjust split size with leader key
nnoremap <silent> <leader>o :vertical resize +5<CR>
nnoremap <silent> <leader>p :vertical resize -5<CR>
nnoremap <silent> <leader>u :resize +5<CR>
nnoremap <silent> <leader>i :resize -5<CR>

" :ls and :b for easier buffer navigation
noremap <leader>l :ls<cr>:b

" Alias write and quit to Leader
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>

"open netrw in split
noremap <leader>e :vsplit<CR> :Explore<CR>  

" scroll bind for diff comparisons
nnoremap <leader>sb :set scrollbind<CR>
nnoremap <leader>sn :set noscrollbind<CR>

" open command history with key
noremap <leader>h q:

" clear last search highlight
noremap <leader>c :let @/ = ""<CR>

" leader z as fold toggle
noremap <leader>z za<CR>

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

"load vimrc
noremap <F5> :source ~/.vimrc<CR>
" noremap <F5> :source /workspaces/11088342/config/vimrc<CR>

"TAB in general mode will go to next buffer.
nnoremap <TAB> :bnext<CR>

" set enter as next found item
noremap <ENTER> n

" ALT TAB will go to next tab
noremap <M-TAB> <Esc>gt<CR>
tnoremap <M-TAB> <Esc>gt<CR>

" quick find replace snippet
nnoremap S :%s//g<Left><Left>
