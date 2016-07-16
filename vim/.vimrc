let g:pathogen_disabled = ['omnisharp-vim', 'vim-dispatch']

execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

set backspace=indent,eol,start
set expandtab
set incsearch
set hlsearch
set lazyredraw
set showmatch
set laststatus=2
set nocompatible
set number
set relativenumber
set ruler
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set wildmenu
set nowrap
set clipboard=unnamed
set cursorline
set listchars=eol:$,nbsp:+,tab:>.,extends:>,precedes:<,trail:-
set mouse=a

function! NerdTreeStartup()
    if !exists("s:std_in") && 0 == argc()
        NERDTree
    end
endfunction

set t_Co=256
if has("win32") || has("win16")
    if has("gui_running")
        au GUIEnter * simalt ~x
        set lines=999 columns=999
    endif
    set term=pcansi
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
    set guifont=DejaVu_Sans_Mono_for_Powerline:h10
    let g:gitgutter_avoid_cmd_prompt_on_windows = 0
    set directory=%TEMP%
else
    set clipboard+=unnamed
    if has("gui_running")
        set fuoptions=maxvert,maxhorz
        set lines=999 columns=999
    endif
    set guifont=Sauce\ Code\ Powerline\ ExtraLight:h12
    set directory=/tmp
endif

colorscheme desertEx

let g:airline_powerline_fonts=1
let g:xml_syntax_folding=1
let g:gitgutter_realtime=1
let g:gitgutter_eager=1
let g:mustache_abbreviations=1
let g:ctrlp_user_command='ag %s -l --nocolor --hidden -g ""'
let g:syntastic_javascript_checkers = ["eslint"]
let g:jsx_ext_required = 0

autocmd FileType xml setlocal foldmethod=syntax
autocmd Filetype ruby setlocal shiftwidth=2 tabstop=2
autocmd Filetype jade setlocal shiftwidth=2 tabstop=2
autocmd Filetype javascript setlocal shiftwidth=2 tabstop=2
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.coffee setlocal shiftwidth=2 tabstop=2 expandtab
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * call NerdTreeStartup()
autocmd filetype crontab setlocal nobackup nowritebackup

map <MiddleMouse> <Nop>
map <C-t> :NERDTreeToggle<CR>
nmap <leader>l :set list!<CR>
nnoremap  <silent> <ESC>[A <Nop>

