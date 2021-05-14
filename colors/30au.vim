" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

augroup vimStartup | au!
    " :h restore-cursor
    autocmd BufRead * call setpos('.', getpos("'\""))
    " 'q' to close special windows/buffers (e.g. 'help')
    autocmd BufWinEnter *
        \   if !empty(&buftype)
        \ |     execute 'nnoremap <buffer>q <C-W>c'
        \ | endif
    " update timestamp before saving a buffer
    autocmd BufWrite *
        \   if &modified && &modeline && &modelines > 0
        \ |     call s:timestamp('(Last Change|Date):', '%Y %b %d', &modelines)
        \ | endif
    " never italicize comments
    autocmd ColorScheme * hi Comment gui=NONE
    " prettify some buffers
    autocmd FileType man,qf setlocal colorcolumn& cursorline& list&
    " :h spell-SpellFileMissing
    autocmd SpellFileMissing * execute '!curl -OO --create-dirs --output-dir'
        \ shellescape(better#stdpath('config', 'spell'), v:true)
        \ shellescape(printf('%s/%s.%s.{spl,sug}',
        \   get(g:, 'spellfile_URL', 'https://ftp.nluug.nl/pub/vim/runtime/spell'),
        \   expand('<amatch>'), &encoding), v:true)
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
