" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" Execute a script fragment from the current buffer
function! shebang#execute(line1, line2, ...) abort
    " can we source a whole file?
    let l:dosource = get(a:, 1) && a:line1 == 1 && a:line2 == line('$')
        \ && empty(&buftype) && !empty(bufname())
    if l:dosource
        " save pending changes if any
        silent! update
        let l:dosource = !&modified
    endif
    if !l:dosource
        " prepare our fragment
        let l:script = getline(a:line1, a:line2)
    endif
    if &filetype ==# 'vim' || get(b:, 'current_syntax') is# 'vim'
        " VimScript shall be sourced directly
        if l:dosource
            source %
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
                        if l:cont[1] == '\'
                            let l:script[l:curr - 1] .= l:cont[2]
                        endif
                        call remove(l:script, l:curr)
                        let l:last -= 1
                    endif
                endwhile
            endif
            " execute it
            call execute(l:script, '')
        endif
    else
        " parse shebang line to get interpreter
        let l:shebang = matchlist(getline(1), '\v^#!\s*(\S+)\s*(.*)')
        if empty(l:shebang)
            echoerr "No shebang in" bufname()
            return
        endif
        " drop extra items
        unlet l:shebang[3:]
        " Note: even if we're running under plain Windows
        " there can be MSYS/Cygwin out there
        if l:shebang[1][0] == '/' && !has('unix')
            " prepend 'env'
            let l:shebang[0] = 'env'
        else
            " execute as is
            unlet l:shebang[0]
        endif
        " drop empty shebang args
        if empty(l:shebang[-1])
            unlet l:shebang[-1]
        endif
        " append script file name
        call add(l:shebang, l:dosource ? expand('%:p') : '-')
        " create new terminal window
        call term#start(l:shebang)
        if !l:dosource
            " send our script through stdin
            call term#sendkeys('%', add(l:script, ''))
        endif
    endif
endfunction
