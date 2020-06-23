" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

augroup vimStartup | au!
    " :h restore-cursor
    autocmd BufRead * call setpos('.', getpos("'\""))
    " auto-conversion to plain text
    autocmd BufReadCmd,FileReadCmd *.doc,*.rtf
        \ call s:docread('catdoc <afile>:p:S')
    autocmd BufReadCmd,FileReadCmd *.docx,*.epub,*.fb2,*.odt
        \ call s:docread('pandoc -t plain <afile>:p:S')
    autocmd BufReadCmd,FileReadCmd *.djv,*.djvu
        \ call s:docread('djvutxt <afile>:p:S')
    autocmd BufReadCmd,FileReadCmd *.pdf
        \ call s:docread('pdftotext -layout <afile>:p:S -')
    " 'q' to close a non-modifiable window/buffer (e.g. 'help')
    autocmd BufWinEnter *
        \   if !empty(&buftype)
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

function s:docread(cmd) abort
    echo 'Please, wait...'
    let l:empty = line2byte(1) < 0
    execute "silent '[read !" a:cmd
    if l:empty
        keepjumps 1delete_
        setlocal buftype=nowrite filetype=text
    endif
endfunction

function s:timestamp(text, format, lines) abort
    let l:svpos = winsaveview()
    let l:lc_time = v:lc_time
    try
        call cursor(1, 1)
        if search('\v\C'..a:text..'\s*\S', 'e', a:lines)
            language time C
            silent! undojoin
            execute 'normal! "_C'..strftime(a:format)
        endif
    finally
        execute 'language time' l:lc_time
        call winrestview(l:svpos)
    endtry
endfunction
