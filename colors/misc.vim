" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" better bufwinid()
function! misc#bufwinid(buf)
    let l:bufnr = bufnr(a:buf)
    if l:bufnr == -1
        " invalid buffer
        return -1
    elseif l:bufnr == bufnr()
        " current buffer
        return win_getid()
    endif
    " find in the current tab
    let l:winid = bufwinid(l:bufnr)
    if l:winid == -1
        " find first match
        let l:winid = get(win_findbuf(l:bufnr), 0, -1)
    endif
    return l:winid
endfunction

" win_execute() compatibility wrapper
" Note: Neovim still doesn't have win_execute()
function! misc#win_execute(id, command, ...)
    " make use of win_execute() if possible
    let l:silent = get(a:, 1, 'silent')
    if exists('*win_execute')
        return win_execute(a:id, a:command, l:silent)
    endif
    " try to switch current window
    let l:wcurr = win_getid()
    if a:id != l:wcurr && !win_gotoid(a:id)
        return
    endif
    " execute command and switch window back after that
    try | return execute(a:command, l:silent)
    finally
        if a:id != l:wcurr
            call win_gotoid(l:wcurr)
        endif
    endtry
endfunction

" Copy line range to multiple destinations
" Note: all :h {address} formats are supported
function! misc#copy(line1, line2, ...) abort
    " save the text to be copied
    let l:text = getline(a:line1, a:line2)
    " reverse sort line numbers to prevent overlapping
    let l:lines = reverse(sort(filter(map(copy(a:000),
        \ 'trim(execute(v:val . "=", "silent!"))'), '!empty(v:val)'), 'N'))
    " now make all the copies
    for l:lnum in l:lines
        call append(l:lnum, l:text)
    endfor
endfunction

" Switch colorscheme by 'incr' positions
function! misc#switchcolor(incr) abort
    let l:colors = getcompletion('', 'color')
    let l:next = index(l:colors, get(g:, 'colors_name')) + a:incr
    execute 'colorscheme' l:colors[l:next % len(l:colors)]
    setlocal statusline=%!get(g:,'colors_name','n/a')
    redrawstatus | sleep
    setlocal statusline=
endfunction

" Turn any :[range]command into g@{motion} operator
" Usage: nnoremap <expr>gs misc#xoper('sort')
function! misc#xoper(cmd)
    " make valid opfunc name
    let l:func = 's:xoper_' . substitute(a:cmd, '\H', '_', 'g')
    " create opfunc calling Ex command
    if !exists('*' . l:func)
        execute printf("fun %s(type)\n'[,']%s\nendfun", l:func, a:cmd)
    endif
    " set opfunc and return 'g@' to be used by map-<expr>
    let &opfunc = get(function(l:func), 'name')
    return 'g@'
endfunction
