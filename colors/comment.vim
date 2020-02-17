" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" comment#toggle({line1}, {line2} [, {preserveindent}])
" (Un)Comment line range
function! comment#toggle(line1, line2, ...) abort
    " lines to (un)comment
    let l:text = getline(a:line1, a:line2)
    if empty(l:text)
        return
    endif
    " preserve indent
    let l:pi = get(a:, 1, &preserveindent)
    " comment regex
    let l:r_cmt = '^' . printf(escape(&cms, '^$.*~[]\'), '\zs.*\ze') . '$'
    " process all lines
    for l:lnum in range(len(l:text))
        " split into [indent][body]
        let [l:body, l:indent; _] = matchlist(l:text[l:lnum], '^\(\s*\)\zs.*')
        if empty(l:body)
            " [indent]/**/ or /*[indent]*/
            let l:text[l:lnum] = (l:pi ? l:indent : '') .
                \ printf(&cms, l:pi ? '' : l:indent)
        else
            " do we uncomment?
            let [l:cmt, l:cpos, _] = matchstrpos(l:body, l:r_cmt)
            " [indent][cmt] or [indent]/*[body]*/ or /*[indent][body]*/
            let l:text[l:lnum] = (l:cpos >= 0) ? l:indent . l:cmt :
                \ l:pi ? l:indent . printf(&cms, l:body) :
                \ printf(&cms, l:text[l:lnum])
        endif
    endfor
    " set (un)commented text
    call setline(a:line1 > 1 ? a:line1 : 1, l:text)
endfunction
