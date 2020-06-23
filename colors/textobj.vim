" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

const s:bignum = 0x7fffffff

function s:line(expr) abort
    return type(a:expr) == v:t_number ? a:expr : line(a:expr)
endfunction

function! textobj#pos(expr, pattern) abort
    let l:lnum = s:line(a:expr)
    if type(a:pattern) == v:t_string
        let l:col = match(getline(l:lnum), a:pattern) + 1
    else
        let l:col = a:pattern
    endif
    return [0, l:lnum, l:col, 0]
endfunction

function! textobj#set_chars(first, last) abort
    call setpos("'<", a:first)
    call setpos("'>", a:last)
    let l:vmode = visualmode() is# 'v' || empty(visualmode()) ? 'gv' : 'gvv'
    let l:vmode .= &selection is# 'exclusive' ? 'l' : ''
    return mode() is# 'n' ? printf(":\<C-U>normal! %s\<CR>", l:vmode) : l:vmode
endfunction

function! textobj#set_lines(first, last) abort
    call setpos("'<", [0, s:line(a:first), 1, 0])
    call setpos("'>", [0, s:line(a:last), s:bignum, 0])
    let l:vmode = visualmode() is# 'V' ? 'gv' : 'gvV'
    return mode() is# 'n' ? printf(":\<C-U>normal! %s\<CR>", l:vmode) : l:vmode
endfunction
