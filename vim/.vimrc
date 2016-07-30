execute pathogen#infect()

set expandtab
set hlsearch
set lazyredraw
set nocompatible
set number
set relativenumber
set shiftwidth=4
set softtabstop=4
set tabstop=4
set nowrap
set clipboard=unnamed
set cursorline
set listchars=eol:$,nbsp:+,tab:>.,extends:>,precedes:<,trail:-
set mouse=a
set timeoutlen=500
set ttimeoutlen=-1

function! NerdTreeStartup()
    if !exists("s:std_in") && 0 == argc()
        NERDTree
    end
endfunction

set t_Co=256
set ttymouse=xterm2
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
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js"
let g:neocomplete#enable_at_startup = 1
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_smart_case = 1
let g:used_javascript_libs = 'underscore,react,jquery'

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ neocomplete#start_manual_complete()

function! s:check_back_space() "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  " return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

autocmd FileType xml setlocal foldmethod=syntax
autocmd Filetype ruby setlocal shiftwidth=2 tabstop=2
autocmd Filetype jade setlocal shiftwidth=2 tabstop=2
autocmd Filetype javascript setlocal shiftwidth=2 tabstop=2
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.coffee setlocal shiftwidth=2 tabstop=2 expandtab
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * call NerdTreeStartup()
autocmd filetype crontab setlocal nobackup nowritebackup
autocmd BufRead,BufNewFile *.ledger set filetype=ledger

imap <C-L> <Plug>snipMateNextOrTrigger
smap <C-L> <Plug>snipMateNextOrTrigger
map <MiddleMouse> <Nop>
map <C-t> :NERDTreeToggle<CR>
nmap <leader>l :set list!<CR>
nnoremap  <silent> <ESC>[A <Nop>

function! Multiple_cursors_before()
    exe 'NeoCompleteLock'
    echo 'Disabled autocomplete'
endfunction

function! Multiple_cursors_after()
    exe 'NeoCompleteUnlock'
    echo 'Enabled autocomplete'
endfunction
