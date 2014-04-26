execute pathogen#infect()

syntax on
filetype plugin indent on

set clipboard+=unnamed
set backspace=indent,eol,start
set number
set nocompatible
set ruler
set wildmenu
set laststatus=2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

autocmd Filetype ruby setlocal shiftwidth=2 tabstop=2

if has("win32")
	colorscheme molokai
else
	colorscheme monokai
endif
