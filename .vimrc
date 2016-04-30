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

" change default delete behaviour I really want to delete
set backspace=indent,eol,start

" regex require escape of special chars with \v need that to make it default
nnoremap / /\v

" Make it easy to navigate errors (and vimgreps)...
nmap <silent> <RIGHT>         :cnext<CR> 	"move next result with right
nmap <silent> <RIGHT><RIGHT>  :cnf<CR><C-G>	"move next page with right+right
nmap <silent> <LEFT>          :cprev<CR>	"move prev result with left
nmap <silent> <LEFT><LEFT>    :cpf<CR><C-G>	"move prev page with left+left


"=====[ Show help files in a new tab ]==============

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


