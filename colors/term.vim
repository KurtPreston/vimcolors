" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" term_start() compatibility wrapper
function! term#start(cmd, ...)
    let l:options = extend({'curwin': 0}, get(a:, 1, {}))
    if exists('*term_start')
        return term_start(a:cmd, l:options)
    elseif exists('*termopen')
        try
            execute remove(l:options, 'curwin') ? "enew" : "new"
            call termopen(a:cmd, l:options)
            return bufnr()
        catch | endtry
    endif
endfunction

" Check if buffer indeed is running a terminal process
function! term#running(buf)
    return getbufvar(a:buf, '&buftype') !=# 'terminal' ? 0 :
        \ has('terminal') ? term_getstatus(a:buf) =~# 'running' :
        \ has('nvim') ? jobwait([getbufvar(a:buf, '&channel')], 0)[0] == -1 :
        \ 0
endfunction

" term_sendkeys() compatibility wrapper
function! term#sendkeys(buf, keys) abort
    " make sure it's running a terminal process
    if !term#running(a:buf)
        return
    endif
    " accept List too
    let l:keys = (type(a:keys) == v:t_list) ? join(a:keys, "\r") : a:keys
    if exists('*chansend')
        " Neovim has chansend()
        call chansend(getbufvar(a:buf, '&channel'), l:keys)
    elseif exists('*term_sendkeys')
        " Vim has term_sendkeys()
        call term_sendkeys(a:buf, l:keys)
    else
        " try to put it directly (works in Neovim only?)
        call misc#win_execute(get(win_findbuf(bufnr(a:buf)), 0),
            \ "put=" . escape(tr(string(l:keys), "\n", "\r"), '|"'))
    endif
    " scrolling may come in handy in Terminal-Normal mode
    call misc#win_execute(get(win_findbuf(bufnr(a:buf)), 0), [
        \ 'if line("$") > line("w$")',
            \ 'normal! 999999z-',
        \ 'endif'])
endfunction
