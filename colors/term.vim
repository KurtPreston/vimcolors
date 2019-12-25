" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" term_start() compatibility wrapper
function! term#start(cmd, ...)
    let l:opt = get(a:, 1, {})
    if exists('*term_start')
        return term_start(a:cmd, l:opt)
    elseif exists('*termopen')
        try
            execute get(l:opt, 'curwin') ? 'enew' :
                \ get(l:opt, 'vertical') ? 'vnew' : 'new'
            call termopen(a:cmd, l:opt)
            execute 'resize' get(l:opt, 'term_rows', '+0')
            execute 'vertical resize' get(l:opt, 'term_cols', '+0')
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
    let l:winid = misc#bufwinid(a:buf)
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
        call misc#win_execute(l:winid, "put =" .
            \ escape(tr(string(l:keys), "\n", "\r"), '|"'))
    endif
    " scrolling may come in handy in Terminal-Normal mode
    call misc#win_execute(l:winid, [
        \ 'if line("$") > line("w$")',
            \ 'normal! 999999z-',
        \ 'endif'])
endfunction
