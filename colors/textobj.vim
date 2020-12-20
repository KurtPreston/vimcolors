" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

const s:bignum = 0x7fffffff

function! textobj#indent(level, above, below) abort
    let [l:level, l:start, l:end] = [a:level, line('v'), line('.')]
    if l:start > l:end
        let [l:start, l:end] = [l:end, l:start]
    endif

    " find minimal indent
    let [l:curr, l:min_indent] = [prevnonblank(l:end), s:bignum]
    while l:min_indent > 0 && l:curr >= l:start
        let l:min_indent = min([l:min_indent, indent(l:curr)])
        let l:curr = prevnonblank(l:curr - 1)
    endwhile

    " all lines are empty
    if l:min_indent == s:bignum
        if l:curr
            " have prevnonblank()
            let [l:start, l:min_indent] = [l:curr, indent(l:curr)]
            let l:level -= 1
        else
            let l:start = 1
            let l:curr = nextnonblank(l:end + 1)
            if l:curr
                " have nextnonblank()
                let [l:end, l:min_indent] = [l:curr, indent(l:curr)]
                let l:level -= 1
            else
                " empty buffer
                return textobj#set_lines(1, '$')
            endif
        endif
    endif

    " go up
    while l:level > 0 && l:start
        let l:start = prevnonblank(l:start - 1)
        let l:curr = indent(l:start)
        if l:curr == 0 || l:curr > 0 && l:curr < l:min_indent
            " next indentation level
            let l:min_indent = l:curr
            let l:level -= 1
        endif
    endwhile

    " go down
    while l:level >= 0 && l:end
        let l:end = nextnonblank(l:end + 1)
        let l:curr = indent(l:end)
        if l:curr >= 0 && l:curr <= l:min_indent
            " close indentation
            let l:min_indent = l:curr
            let l:level -= 1
        endif
    endwhile

    return textobj#set_lines(l:start ? l:start + !a:above : 1,
        \ l:end ? l:end - !a:below : '$')
endfunction

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
