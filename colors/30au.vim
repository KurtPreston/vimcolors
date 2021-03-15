" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

augroup vimStartup | au!
    " :h restore-cursor
    autocmd BufRead * call setpos('.', getpos("'\""))
    " 'q' to close special windows/buffers (e.g. 'help')
    autocmd BufWinEnter *
        \   if !empty(&buftype)
        \ |     execute 'nnoremap <buffer>q <C-W>q'
        \ | endif
    " update timestamp before saving a buffer
    autocmd BufWrite *
        \   if &modified && &modeline && &modelines > 0
        \ |     call s:timestamp('(Last Change|Date):', '%Y %b %d', &modelines)
        \ | endif
    " never italicize comments
    autocmd ColorScheme * hi Comment cterm=NONE gui=NONE
    " prettify man buffer
    autocmd FileType man setlocal colorcolumn& list&
    " :h spell-SpellFileMissing
    autocmd SpellFileMissing * call misc#wget(
        \ get(g:, 'spellfile_URL', 'https://ftp.nluug.nl/pub/vim/runtime/spell'),
        \ better#stdpath('config', 'spell'),
        \ map(['spl', 'sug'], 'printf("%s.%s.%s", expand("<amatch>"), &enc, v:val)'))
    " save session on exit
    autocmd VimLeavePre *
        \   if !empty(v:this_session) && !v:dying
        \ |     mksession! `=v:this_session`
        \ | endif
augroup end

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
