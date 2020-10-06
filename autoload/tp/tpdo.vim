function! tp#tpdo#change_theme(operate)
        if a:operate == "work"
            call <sid>getToWork()
        elseif a:operate == "normal"
            call <sid>returnNormalLife()
        else
            echo "Invaild operate"
        endif
endfunction
function! s:getToWork()
  set number
  set relativenumber
  set signcolumn=yes
  syntax on
  colorscheme deus
endfunction
function! s:returnNormalLife()
  set nonumber
  set signcolumn=no
  set norelativenumber
  syntax off
  colorscheme default
  hi clear
endfunction
