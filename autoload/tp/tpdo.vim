function! tp#tpdo#change_theme(operate)
    if len(s:theme_list) > 0
        if a:operate == "work"
            call <sid>load_next_theme()
        elseif a:operate == "normal"
            call <sid>load_previous_theme()
        else
            echo "Invaild operate"
        endif
    endif
endfunction
function! s:getToWork()
  colorscheme deus
endfunction
function! s:returnNormalLife()
  hi clear
syntax off
endfunction
