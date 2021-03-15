" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" better#bufwinid({expr})
" improved bufwinid():
"     - prefer current window ID if it matches;
"     - not confined to the current tab
function! better#bufwinid(buf) abort
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

" better#format({fmt}, ...)
" format string by positional arguments
function! better#format(fmt, ...) abort
    return substitute(a:fmt, '%\(\d\d\?\)', '\=get(a:, submatch(1), v:null)', 'g')
endfunction

" better#gui_running()
" Vim/Neovim compatibility
function! better#gui_running() abort
    return has('gui_running') || exists('*nvim_list_uis') &&
        \ !empty(nvim_list_uis()) && nvim_list_uis()[-1].chan > 0
endfunction

" better#is_blank_buffer()
" check if current buffer is blank
function! better#is_blank_buffer() abort
    return !&modified && empty(&buftype) && line('$') == 1 && empty(getline(1))
endfunction

" better#oldfiles(max)
" get some of v:oldfiles
function! better#oldfiles(max) abort
    let l:vimhelp = glob2regpat($VIMRUNTIME..'/doc/*.txt')
    return filter(v:oldfiles[:], {_, v -> match(v, l:vimhelp) < 0})[: a:max - 1]
endfunction

" better#or({expr1} ...)
" logical or: returns first non-empty argument or the last one
function! better#or(...) abort
    let l:arg = 0
    for l:arg in a:000
        if !empty(l:arg)
            break
        endif
    endfor
    return l:arg
endfunction

" better#stdpath({what}, [{subdir} ...])
" return full path to {subdir} under Vim/Neovim stdpath()
function! better#stdpath(what, ...) abort
    let l:path = exists('*stdpath') ? stdpath(a:what) :
        \ strpart(&rtp, 0, stridx(&rtp, ','))
    if a:0
        let l:path .= '/' . call('printf', a:000)
    endif
    return exists('+shellslash') && &shellslash ? tr(l:path, '\', '/') : l:path
endfunction

" better#win_execute({id}, {command} [, {silent}])
" Vim/Neovim compatibility
" Note: Neovim doesn't have win_execute()
function! better#win_execute(id, command, silent = 'silent') abort
    " call win_execute() if possible
    if exists('*win_execute')
        return win_execute(a:id, a:command, a:silent)
    endif
    " try to switch the window
    let l:wcurr = win_getid()
    if a:id != l:wcurr && !win_gotoid(a:id)
        return
    endif
    " execute command and switch window back after that
    try | return execute(a:command, a:silent)
    finally
        if a:id != l:wcurr
            call win_gotoid(l:wcurr)
        endif
    endtry
endfunction
