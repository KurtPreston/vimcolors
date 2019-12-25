" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" Execute script from a buffer
function! shebang#execute(buf, line1, line2, ...)
    " get buffer info
    let l:bufnr = bufnr(a:buf)
    if l:bufnr == -1 || !bufloaded(l:bufnr)
        throw 'Invalid buffer ' . a:buf
    endif
    let l:fname = bufname(l:bufnr)
    " can we source a whole file?
    let l:dosource = (a:line1 == 1) && (a:line2 ==# '$' || a:line2 >= 1 &&
        \ empty(getbufline(l:bufnr, a:line2 + 1))) && !empty(l:fname) &&
        \ !getbufvar(l:bufnr, '&modified') && empty(getbufvar(l:bufnr, '&buftype'))
    " read in code snippet
    if !l:dosource
        let l:script = getbufline(l:bufnr, a:line1, a:line2)
        if empty(l:script)
            throw 'Invalid line range'
        endif
    endif
    " go to target Window
    let l:winid = get(a:, 1)
    if l:winid <= 0
        let l:winid = 0
    elseif l:winid < 1000
        let l:winid = win_getid(l:winid)
    endif
    call win_gotoid(l:winid)

    if getbufvar(l:bufnr, '&filetype') is# 'vim' ||
        \ getbufvar(l:bufnr, 'current_syntax') is# 'vim'
        " VimScript shall be sourced directly
        if l:dosource
            execute 'source' l:fname
        else
            " :h line-continuation support
            if stridx(&cpo, 'C') < 0
                let [l:curr, l:last] = [1, len(l:script) - 1]
                while l:curr <= l:last
                    " line-continuation or line-continuation-comment
                    let l:cont = matchlist(l:script[l:curr], '\v^\s*(\\|"\\ )(.*)')
                    if empty(l:cont)
                        " skip over normal line
                        let l:curr += 1
                    else
                        " join line-continuation
                        if l:cont[1] ==# '\'
                            let l:script[l:curr - 1] .= l:cont[2]
                        endif
                        call remove(l:script, l:curr)
                        let l:last -= 1
                    endif
                endwhile
            endif
        endif
        " execute VimScript
        call execute(l:script, '')
    else
        " parse shebang line to get interpreter
        let l:cmd = matchlist(getbufline(l:bufnr, 1), '\v^#!\s*(\S+)\s*(.*)')
        if empty(l:cmd)
            throw 'No shebang in ' . (empty(l:fname) ? 'buffer ' . l:bufnr : l:fname)
        endif
        " drop extra items
        unlet l:cmd[3:]
        " Note: even if we're running under plain Windows
        " there can be MSYS/Cygwin out there
        if l:cmd[1][0] ==# '/' && !has('unix')
            " prepend 'env'
            let l:cmd[0] = 'env'
        else
            " execute as is
            unlet l:cmd[0]
        endif
        " drop empty shebang args
        if empty(l:cmd[-1])
            unlet l:cmd[-1]
        endif
        " append script file name
        call add(l:cmd, l:dosource ? fnamemodify(l:fname, ':p:S') : '-')
        " create new terminal window
        call term#start(l:cmd)
        if !l:dosource
            " send our script through stdin
            call term#sendkeys('%', add(l:script, "\<C-D>"))
        endif
    endif
endfunction
