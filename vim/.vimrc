execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

set backspace=indent,eol,start
set clipboard+=unnamed
set expandtab
set incsearch
set laststatus=2
set nocompatible
set number
set ruler
set shiftwidth=4
set smarttab
set softtabstop=4
set tabstop=4
set wildmenu

autocmd Filetype ruby setlocal shiftwidth=2 tabstop=2

colorscheme desertEx

set guifont=Liberation\ Mono\ for\ Powerline
let g:airline_powerline_fonts=1
