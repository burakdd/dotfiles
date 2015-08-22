set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype specific indent
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
syntax enable           " enable syntax highlight
set showmatch           " highlight matching paranthesis
set hidden              " buffer can exist in background
set autoread            " relooad files changes outside
set history=1000        " remember last 1000 command
set mouse=a             " enable mouse in all modes
set noswapfile          " turn off swap files
set nobackup            " no backup needed
set nowritebackup       " no write backup needed
set autoindent          " auto indentation
set smartindent         " smart indentation
set shiftwidth=4        " shift 4 length
set tabstop=4           " tab stop 4
set expandtab
set nowrap
set incsearch           " find next match as we type
set hlsearch            " highlight search results
set laststatus=2        " enable status line
set visualbell t_vb=    " disable visual bell
set nocompatible        " use vim settings rather than vi
