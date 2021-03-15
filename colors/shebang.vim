" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" preprocess VimScript to allow
" :h line-continuation and :h line-continuation-comment
function s:preprocess(script) abort
    if stridx(&cpo, 'C') < 0
        let [l:curr, l:last] = [1, len(a:script) - 1]
        while l:curr <= l:last
            " match line-continuation or line-continuation-comment
            let l:cont = matchlist(a:script[l:curr], '\v^\s*(\\|"\\ )(.*)')
            if empty(l:cont)
                " skip over normal line
                let l:curr += 1
            else
                " join line-continuation
                if l:cont[1] is# '\'
                    let a:script[l:curr - 1] .= l:cont[2]
                endif
                unlet a:script[l:curr]
                let l:last -= 1
            endif
        endwhile
    endif
    return a:script
endfunction

function s:command(shebang, fname) abort
    let l:cmd = matchlist(a:shebang, '\v^#!\s*(\S+)\s*(.*)')[1:2]
    if empty(l:cmd)
        return
    endif
    if empty(l:cmd[1])
        unlet l:cmd[1]
    endif
    " Note: even if we're running under plain Windows
    " there can be MSYS/Cygwin out there
    if l:cmd[0][0] is# '/' && !has('unix')
        " prepend 'env'
        call insert(l:cmd, 'env')
    endif
    " script file name
    return add(l:cmd, a:fname)
endfunction

" shebang#execute({buf}, {line1}, {line2} [, {win}])
" Execute script from a buffer
function! shebang#execute(buf, line1, line2, win = 0) abort
    " get buffer info
    let l:bufnr = bufnr(a:buf)
    if l:bufnr == -1 || !bufloaded(l:bufnr)
        throw 'Invalid buffer '..a:buf
    endif
    let l:fname = bufname(l:bufnr)
    " can we source a whole file?
    let l:dosource = (a:line1 == 1) && (a:line2 is# '$' || a:line2 >= 1 &&
        \ empty(getbufline(l:bufnr, a:line2 + 1))) && !empty(l:fname) &&
        \ !getbufvar(l:bufnr, '&modified') && empty(getbufvar(l:bufnr, '&buftype'))
    " read in code snippet
    if !l:dosource
        let l:script = getbufline(l:bufnr, a:line1, a:line2)
        if empty(l:script)
            throw 'Invalid line range: '..a:line1..','..a:line2
        endif
    endif
    " go to target Window
    let l:winid = (a:win <= 0) ? 0 : (a:win < 1000) ? win_getid(a:win) : a:win
    call win_gotoid(l:winid)

    if getbufvar(l:bufnr, '&filetype') is# 'vim' ||
        \ getbufvar(l:bufnr, 'current_syntax') is# 'vim'
        " VimScript shall be sourced directly
        call execute(l:dosource ? 'source '..l:fname : s:preprocess(l:script), '')
    else
        " parse shebang line
        let l:shebang = getbufline(l:bufnr, 1)[0]
        if l:shebang !~# '^#!'
            throw 'No shebang in ' . (empty(l:fname) ? 'buffer #'..l:bufnr : l:fname)
        endif
        let l:cmd = s:command(l:shebang, l:dosource ? l:fname : '-')
        if empty(l:cmd)
            return
        endif
        call term#start(l:cmd)
        if !l:dosource
            " send script through stdin
            call term#sendkeys('%', add(l:script, has('win32') ? "\<C-Z>" : "\<C-D>"))
        endif
    endif
endfunction
