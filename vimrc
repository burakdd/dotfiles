set nocompatible 	"Use Vim settings, rather than Vi settings (much better!).
set ruler		"show me where i am in the file and searh percentage
set mps+==:;		"% also match these along with brackets
set nrformats=  	"no need to other number formats other than decimal

"====[ Set up smarter search behaviour ]=======================

set ignorecase		"no longer care about case of the letters for search
set smartcase		"if all lower go search both case or if upper go search upper we need ignore case for this
set hlsearch		"highlighting would be good for searches
set incsearch		"lookahead as search pattern is specified


"do not let highlight search stick around after your are done with it
nmap <silent> <BS> :nohlsearch<CR>

" lets disable regular movement keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>

" lets shift movement keys to one right
noremap ş l
noremap l k
noremap k j
noremap j h


" change default delete behaviour I really want to delete
set backspace=indent,eol,start

" regex require escape of special chars with \v no need that make it default
nnoremap / /\v

" Make it easy to navigate errors (and vimgreps)...
nmap <silent> <RIGHT>         :cnext<CR>
nmap <silent> <RIGHT><RIGHT>  :cnf<CR><C-G>
nmap <silent> <LEFT>          :cprev<CR>
nmap <silent> <LEFT><LEFT>    :cpf<CR><C-G>


"====[ Use persistent undo ]=================

if has('persistent_undo')
    " Save all undo files in a single location (less messy, more risky)...
    set undodir=$HOME/.VIM_UNDO_FILES

    " Save a lot of back-history...
    set undolevels=5000

    " Actually switch on persistent undo
    set undofile

endif


"=====[ Show help files in a new tab, plus add a shortcut for helpg ]==============

"Only apply to .txt files...
augroup HelpInTabs
    autocmd!
    autocmd BufEnter  *.txt   call HelpInNewTab()
augroup END

"Only apply to help files...
function! HelpInNewTab ()
    if &buftype == 'help' 
        "Convert the help window to a tab...
        execute "normal \<C-W>T"
    endif
endfunction


