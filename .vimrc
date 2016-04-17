set nocompatible 	"Use Vim settings, rather than Vi settings (much better!).
set ruler		"show me where i am in the file and searh percentage

set matchpairs += <:>,<<:>>,":",=:;	"% also match these along with brackets

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


