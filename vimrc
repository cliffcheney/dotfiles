set nocompatible
filetype on
syntax on

set directory=~/.vim/swapfiles/

set number
set relativenumber
set ruler
set cursorline
set laststatus=2
set hlsearch
set ignorecase
set smartcase
set smd
set t_Co=256
set encoding=utf-8
set termguicolors
set expandtab
set shiftwidth=4
set softtabstop=4
set scl=yes
set hidden
set history=200
set colorcolumn=100
set timeoutlen=700
set nospell
set spelllang=en_us
set clipboard=unnamed
set mouse=a
set wildmode=longest,list,full

imap jj <Esc>
let mapleader = " "

""""""""""""""""""""""""""""""""""""""""" Plugins with Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" vim color schemes
Plugin 'rafi/awesome-vim-colorschemes'

" XML plugin
Plugin 'sukima/xmledit'

"colorizer hex colors
Plugin 'chrisbra/Colorizer'

Plugin 'preservim/nerdtree'

" which key for leader keys
Plugin 'liuchengxu/vim-which-key'

" COC Intelisense like completion
Plugin 'neoclide/coc.nvim'

" Git Tool
Plugin 'tpope/vim-fugitive'

" Airline
Plugin 'vim-airline/vim-airline'

Plugin 'airblade/vim-gitgutter'

" Syntastic
Plugin 'vim-syntastic/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"""""""""""""""""""""""""""""""""" SETTINGS LOADED AFTER PLUGINS

"Colorscheme settins loaded after awesome
" colorscheme minimalist
" colorscheme simple-dark
" colorscheme meta5
" colorscheme hybrid
colorscheme darcula

" Syntastic support

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NerdTree auto open on start without file
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" NerdTree auto on directory open autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

 " GitGutter settings
let g:gitgutter_enabled = 1

" xmledit auto folding
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

"""""""""""""""""""""""""""""""""" KEYBINDINGS LOADED AFTER PLUGINS

" Alias to replace all to Leader-S
nnoremap <F6> :%s//gI<Left><Left><Left>

" :ls and :b for easier buffer navigation
noremap <leader>l :ls<cr>:b

" attempt to load coc extensions with F keys
noremap <F9> :CocInstall coc-explorer<CR>
noremap <F8> :CocInstall coc-json coc-css coc-html coc-prettier coc-tsserver

"load vimrc
noremap <F5> :source ~/.vimrc<CR>

" whichkey plugin
nnoremap <F10> :WhichKey '<Space>'<CR>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" better split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Alias write and quit to Leader
nnoremap <leader>q :wq<CR>
nnoremap <leader>w :w<CR>

" splits on Leader sh sv
nnoremap <leader>sh :split<CR> <C-W><C-J>

nnoremap <leader>sv :vsplit<CR> <C-W><C-L>

nnoremap <leader>sc :close<CR>
nnoremap <leader>so :only<CR>

" open command history with key
" map <C-h> q:
noremap <leader>h q:

" clear last search highlight
noremap <leader>c :let @/ = ""<CR>

" NerdTree Toggle
map <C-n> :NERDTreeToggle<CR>
noremap <leader>n :NERDTreeToggle<CR>

" COC Explorer
nmap <space>e :CocCommand explorer<CR>

" leader z as fold toggle
noremap <leader>z za<CR>


