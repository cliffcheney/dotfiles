set nocompatible              
filetype on
syntax on

set directory=~/.vim/swapfiles//

set nu
set relativenumber
set ruler
set cursorline
set laststatus=2
set hlsearch
set ignorecase
set smartcase
set smd
set t_Co=256
set expandtab
set shiftwidth=4
set softtabstop=4
set scl=yes
set hidden
set history=200
set colorcolumn=80

imap jj <Esc>
let mapleader = " "

" write using leader noremap <leader>w :w<CR> " noremap <leader>q :wqa<CR> " 
" Reload vimrc noremap cfr :source ~/.vimrc<CR> 
" :ls and :b for easier buffer navigation
noremap <leader>l :ls<cr>:b

"load vimrc
noremap <leader>v :source ~/.vimrc<CR>

" better split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
" unmap <C-H>
nnoremap <C-H> <C-W><C-H>

" open command history with key
" map <C-h> q: 
noremap <leader>h q:

" clear last search
noremap <leader>c :let @/ = ""<CR> 

" noremap <leader>m :MinimapToggle<cr>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" vim color schemes
Plugin 'rafi/awesome-vim-colorschemes'

" XML plugin
Plugin 'sukima/xmledit'

"colorizer hex colors
Plugin 'chrisbra/Colorizer'

Plugin 'preservim/nerdtree'

" New auto complete plugin
Plugin 'ajh17/VimCompletesMe'

" Fuzzy File Finder
" Plugin 'kien/ctrlp.vim'
" Abandoned and replaced by
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'junegunn/fzf.vim'

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

" NerdTree Toggle
map <C-n> :NERDTreeToggle<CR>
noremap <leader>n :NERDTreeToggle<CR>

" Syntastic support
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
                            
" NerdTree auto on directory open
 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

 " GitGutter settings
let g:gitgutter_enabled = 1

" NerdTree auto open on start without file
 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" VimCompleteMe auto 
autocmd FileType vim let b:vcm_tab_complete = 'vim'

" xmledit auto folding
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" leader z as fold toggle
noremap <leader>z za<CR>

colorscheme minimalist
" colorscheme simple-dark
" colorscheme meta5
" colorscheme hybrid
" colorscheme darcula 
