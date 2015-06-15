" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc.vim'
"NeoBundle 'altercation/vim-colors-solarized.git'
NeoBundle 'msanders/snipmate.vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'stephpy/vim-yaml'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

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
