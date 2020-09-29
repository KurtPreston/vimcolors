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

" better#gui_running()
" Vim/Neovim compatibility
function! better#gui_running() abort
    return has('gui_running') || exists('*nvim_list_uis') &&
        \ !empty(nvim_list_uis()) && nvim_list_uis()[-1].chan > 0
endfunction

" better#guifont(typeface, height)
" set &guifont
function! better#guifont(typeface, height) abort
    if empty(a:typeface) && empty(a:height)
        echo has('nvim') ? &guifont : getfontname()
        return
    endif
    let l:fonts = split(better#or(a:typeface, &guifont), ',')
    let l:height = (a:height >= 10) ? a:height : get(g:, 'fontheight', 10) + a:height
    let l:prefix = has('gui_gtk') ? ' ' : ':h'
    call map(l:fonts, {_, v -> substitute(trim(v), '\v('..l:prefix..'(\d+))?$',
        \ printf('\=%s..%d', string(l:prefix), l:height), '')})
    silent! let &guifont = join(l:fonts, ',')
    let g:fontheight = l:height
endfunction

" better#inputlist(prompt, textlist, Action)
" choose item from {textist} and invoke {Action} afterwards
function! better#inputlist(prompt, textlist, Action) abort
    function! s:callback(id, result) abort closure
        if a:result >= 1 && a:result <= len(a:textlist)
            call a:Action(a:textlist[a:result - 1])
        endif
    endfunction
    if has('popupwin')
        call popup_menu(a:textlist, {'title': a:prompt,
            \ 'callback': funcref('s:callback')})
    else
        let l:list = insert(map(copy(a:textlist), {k, v -> printf('%d) %s', k + 1, v)}),
            \ a:prompt)
        call s:callback(0, inputlist(l:list))
    endif
endfunction

" better#choose(cmd, values)
" interactively choose one of {values} and then execute {cmd}
function! better#choose(cmd, values) abort
    call better#inputlist('Choose item', a:values, {v -> execute(printf(a:cmd, v), '')})
endfunction

" better#is_blank_buffer()
" check if current buffer is blank
function! better#is_blank_buffer() abort
    return !&modified && empty(&buftype) && line('$') == 1 && empty(getline(1))
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

" better#win_execute({id}, {command} [, {silent}])
" Vim/Neovim compatibility
" Note: Neovim doesn't have win_execute()
function! better#win_execute(id, command, ...) abort
    " call win_execute() if possible
    let l:silent = get(a:, 1, 'silent')
    if exists('*win_execute')
        return win_execute(a:id, a:command, l:silent)
    endif
    " try to switch the window
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
