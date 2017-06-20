"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state("$HOME/.vim/dein")
  call dein#begin("$HOME/.vim/dein")

  " Let dein manage dein
  " Required:
  call dein#add("$HOME/.vim/dein/repos/github.com/Shougo/dein.vim")

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/vimproc.vim')
  call dein#add('altercation/vim-colors-solarized.git')
  call dein#add('msanders/snipmate.vim')
  call dein#add('mileszs/ack.vim')
  call dein#add('stephpy/vim-yaml')
  call dein#add('pearofducks/ansible-vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

" ------ my stuff ------ 
" tabstop
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" some more fun ones
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set cursorcolumn
set ttyfast
"set ruler
set backspace=indent,eol,start
set laststatus=2
"set relativenumber
set undofile
set undodir=$HOME/.vim/undo
set undolevels=10000
set undoreload=10000

" set my leader
let mapleader = ";"

" search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" wrapping
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" list mode
"set list
set listchars=tab:▸\ ,eol:¬

" disable help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" solarized
syntax enable
set background=dark
colorscheme solarized

" turn off the fucking mouse
set mouse-=a
