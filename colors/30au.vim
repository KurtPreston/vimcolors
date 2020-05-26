" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

augroup vimStartup | au!
    " :h restore-cursor
    autocmd BufRead * call setpos('.', getpos("'\""))
    " 'q' to close a non-modifiable window/buffer (e.g. 'help')
    autocmd BufWinEnter *
        \   if !&modifiable || &buftype is# 'nofile'
        \ |     execute 'nnoremap <buffer>q <C-W>q'
        \ | endif
    " update timestamp before saving a buffer
    autocmd BufWrite *
        \   if &modified && &modeline && &modelines > 0
        \ |     call s:timestamp('(Last Change|Date):', '%Y %b %d', &modelines)
        \ | endif
    " save session on exit
    autocmd VimLeavePre *
        \   if !v:dying && !empty(v:this_session)
        \ |     execute 'mksession!' v:this_session
        \ | endif
augroup end

function s:timestamp(text, format, lines)
    let l:svpos = winsaveview()
    try
        call cursor(1, 1)
        if search('\v\C'..a:text..'\s*\S', 'e', a:lines)
            let l:lc_time = v:lc_time
            language time C
            silent! undojoin
            execute 'normal! "_C'..strftime(a:format)
            execute 'language time' l:lc_time
        endif
    finally
        call winrestview(l:svpos)
    endtry
endfunction
