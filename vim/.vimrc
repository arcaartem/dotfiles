execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

set backspace=indent,eol,start
set expandtab
set incsearch
set laststatus=2
set nocompatible
set number
set relativenumber
set ruler
set shiftwidth=4
set smarttab
set softtabstop=4
set tabstop=4
set wildmenu
set nowrap
set clipboard=unnamed

autocmd Filetype ruby setlocal shiftwidth=2 tabstop=2
autocmd BufRead,BufNewFile *.md set filetype=markdown

if has("win32") || has("win16")
    if has("gui_running")
        au GUIEnter * simalt ~x
        set lines=999 columns=999
    endif
    set term=pcansi
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
    set guifont=DejaVu_Sans_Mono_for_Powerline:h10
    let g:gitgutter_avoid_cmd_prompt_on_windows = 0
else
    set t_Co=256
    set clipboard+=unnamed
    if has("gui_running")
        set fuoptions=maxvert,maxhorz
        set lines=999 columns=999
    endif
    set guifont=Sauce\ Code\ Powerline\ ExtraLight:h12
endif

colorscheme desertEx

let g:airline_powerline_fonts=1
let g:xml_syntax_folding=1
let g:gitgutter_realtime=1
let g:gitgutter_eager=1

au FileType xml setlocal foldmethod=syntax

map <MiddleMouse> <Nop>
map <C-t> :NERDTreeToggle<CR>
nnoremap  <silent> <ESC>[A <Nop>
