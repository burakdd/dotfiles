
"====[ Work out what kind of file this is ]========
filetype plugin indent on

"use vim settings rather than vi settings.
set nocompatible
"show me where i am in the file and search percentage
set ruler
"no need to other number formats other than decimal
set nrformats=
"set syntax highligthing on
syntax on
"show me the commands
set showcmd
"autoread file when change on disk
set autoread

"====[ Set up smarter search behaviour ]=======================
set ignorecase
"if all lower go search for both case or if upper go search for upper
set smartcase
"higlighting would be nice for searches as I type along
set hlsearch
"lookahead as search pattern is specified
set incsearch
"higlight the entire line the cursor on
set cursorline


"enable showing title
set title

"always show status line
set laststatus=2

" no annoying beep sound
set visualbell
set noerrorbells

"no backup needed
set nobackup

"no swp or something else
set noswapfile

" Make it obvious where 80 characters is
set textwidth=80
"set colorcolumn=+1

" Softtabs, 4 spaces
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround
set smarttab


" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Show list of completetions in as much as possible
set wildmode=list:longest,full

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"show absolute number for current line
set number

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
"noremap ş l
"noremap l k
"noremap k j
"noremap j h


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


