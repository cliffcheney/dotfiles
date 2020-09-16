set nocompatible              
filetype on
syntax on

set directory=~/.vim/swapfiles//

filetype plugin indent on
syntax on

imap jj <Esc>

" set :bs to open :ls and :b for easier buffer navigation
cnoremap <expr> bs (getcmdtype() == ':' && getcmdpos() == 1) ? "ls\<CR>:b" : "ls"
noremap <leader>l :ls<cr>:b

noremap <leader>m :MinimapToggle<cr>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" vim color schemes
Plugin 'rafi/awesome-vim-colorschemes'

Plugin 'preservim/nerdtree'

" New auto complete plugin
" Plugin 'ajh17/VimCompletesMe'
Plugin 'ycm-core/YouCompleteMe'

" Fuzzy File Finder
" Plugin 'kien/ctrlp.vim'
" Abandoned and replaced by
Plugin 'ctrlpvim/ctrlp.vim'

" Git Tool
Plugin 'tpope/vim-fugitive'

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Minimap
Plugin 'severin-lemaignan/vim-minimap'

Plugin 'airblade/vim-gitgutter'

" Syntastic
Plugin 'vim-syntastic/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
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
" autocmd FileType vim let b:vcm_tab_complete = 'vim'

" YouCompleteMe keybindings
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']

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

colorscheme minimalist
