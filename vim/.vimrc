"UI and basics
set number
set termguicolors
set laststatus=2 "Status line stuff

"detect changes in files
set autoread
autocmd FocusGained,BufEnter * checktime

"Auto indentation for python files
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4

"Syntax highlighting
syntax on
filetype plugin indent on

"Default tab width
set tabstop=4
set shiftwidth=4 

set smartindent
set autoindent
set foldmethod=syntax
set foldlevelstart=99
set expandtab 

set smartcase           " Combine with ignorecase for better searching
set incsearch           " Show live search results
set wildmenu            " Visual autocomplete for commands
set showcmd             " Show incomplete commands
set noswapfile          " Don’t litter swap files everywhere
set undofile            " Persistent undo history

set hlsearch

let mapleader = ","
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <C-p> :Files<CR>   " fzf search


call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot' "syntax highlighting
Plug 'itchyny/lightline.vim' "status line
Plug 'preservim/nerdtree' "Side file expandtab

Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }  " installs fzf binary
Plug 'junegunn/fzf.vim'"

Plug 'tpope/vim-fugitive' "Git integration
Plug 'Yggdroot/indentLine' "visual indents
Plug 'jiangmiao/auto-pairs'  "Auto close brackets

call plug#end()

