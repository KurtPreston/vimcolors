" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" (Un)Comment line range
function! comment#toggle(line1, line2, ...) abort
    " get vim-commentary compatible option
    let l:noindent = get(b:, 'commentary_startofline')
    " flip indent if optional argument is given and it's non-zero
    let l:noindent = get(a:, 1) ? !l:noindent : l:noindent
    " honour 'commentstring' option
    let l:pat = '^\s*' .
                \ substitute(escape(&cms, '^$.*~[]\'), '%s', '\\zs.*\\ze', '') .
                \ '$'
    for l:lnum in range(a:line1, a:line2)
        " original line
        let l:line = getline(l:lnum)
        " uncommented line (if any)
        let l:unline = matchstrpos(l:line, l:pat)
        " first indent (if any) then (un)commented line
        let l:fmt = '%*s' . (l:unline[1] < 0 ? &cms : '%s')
        " noindent only applicable while commenting out
        let l:indent = (l:unline[1] < 0 && l:noindent) ? 0 : indent(l:lnum)
        " uncomment / noindent comment / indent + trimmed comment
        let l:text = (l:unline[1] >= 0) ? l:unline[0] :
            \ l:noindent ? l:line : trim(l:line)
        " set new content
        call setline(l:lnum, printf(l:fmt, l:indent, '', l:text))
    endfor
endfunction
