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
set nowrap

autocmd Filetype ruby setlocal shiftwidth=2 tabstop=2

colorscheme desertEx

if has("win32") || has("win16")
    if has("gui_running")
        au GUIEnter * simalt ~x
    endif
    set t_Co=256
    set guifont=DejaVu_Sans_Mono_for_Powerline:h10
else
    set guifont=Envy\ Code\ R\ for\ Powerline
endif

let g:airline_powerline_fonts=1
