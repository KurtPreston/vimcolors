" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" misc#bwipeout({listed})
" wipe all deleted (unloaded & unlisted) or all unloaded buffers
function! misc#bwipeout(listed) abort
    let l:buffers = filter(getbufinfo(), {_, v -> !v.loaded && (!v.listed || a:listed)})
    if !empty(l:buffers)
        execute 'bwipeout' join(map(l:buffers, {_, v -> v.bufnr}))
    endif
endfunction

" misc#change({line1}, {line2} [, {reg} [, {autoindent}]])
" non-interactive :change
" Note: the replaced text is put in the unnamed register as in :h put-Visual-mode
function! misc#change(line1, line2, ...) abort
    " parse args
    let l:reg = get(a:, 1, v:register)
    let l:how = get(a:, 2, &autoindent) ? '[P' : 'P'
    " split {reg} to deal with ={expr}
    let [l:reg, l:expr] = [strcharpart(l:reg, 0, 1), strcharpart(l:reg, 1)]
    if !empty(l:expr)
        if l:reg isnot# '='
            " {expr} is allowed only for expression register
            throw 'Trailing characters' "E488
        endif
        call setreg(l:reg, l:expr)
    endif
    if !empty(l:reg) && l:reg !~# '[-"[:alnum:]:.%#=*+~_/]'
        " invalid register specified
        throw 'Trailing characters' "E488
    endif
    " force linewise mode
    " Note: @9 will be lost after :delete anyway
    call setreg(9, getreg(l:reg), 'l')
    " put & delete & move to the last edited line
    call execute([
        \ printf('%dnormal! "9%s', a:line1, l:how),
        \ printf('keepjumps '']+,'']++%d delete', a:line2 - a:line1),
        \ -1])
endfunction

" misc#command(cmd [, {values}])
" complete and execute {cmd}
function! misc#command(cmd, ...) abort
    let l:values = a:0 ? copy(a:1) : getcompletion(a:cmd..' ', 'cmdline')
    call better#inputlist(a:cmd, sort(l:values), {_, v -> execute(a:cmd..' '..v, '')})
endfunction

" misc#comment({line1}, {line2} [, {preserveindent}])
" (Un)Comment line range
function! misc#comment(line1, line2, ...) abort
    let l:pat = printf('^\(\s*\)\(%s\)$', printf(escape(&cms, '^$.*~[]\'), '\(.*\)'))
    let l:sub = '\=empty(submatch(2)) ? submatch(0) : submatch(1)..submatch(3)'
    if getline(a:line1) !~ l:pat
        let l:pat = get(a:, 1, &pi) ? '^\s*\zs.*' : '.*'
        let l:sub = printf(escape(&cms, '&\'), '&')
    endif
    call setline(a:line1, map(getline(a:line1, a:line2),
        \ {_, v -> substitute(v, l:pat, l:sub, '')}))
endfunction

" misc#complete({pat}, {type} [, {filtered}])
" custom complete function
" inoremap <C-X><C-F> <C-R>=misc#complete('[[:fname:]*?]\+', 'file')<CR>
" :h ins-completion
function! misc#complete(pat, type, ...) abort
    let l:filtered = get(a:, 1)
    let [l:lnum, l:col] = getcurpos()[1:2]
    " find 'word' preceding cursor position
    " Note: respect multibyte!
    let l:start = searchpos(a:pat..'\v%#', 'bn', l:lnum)[1]
    let l:end = searchpos('\v.%#', 'bn', l:lnum)[1]
    if 1 <= l:start && l:start <= l:end
        " complete [l:start .. l:end]
        let l:word = getline(l:lnum)[l:start - 1 : l:end - 1]
        call complete(l:start, getcompletion(l:word, a:type, l:filtered))
    else
        " complete empty string just before cursor
        call complete(l:col, getcompletion('', a:type, l:filtered))
    endif
    " must return empty string to show popup menu
    return ''
endfunction

" misc#copy({line1}, {line2} [, {address1} ...])
" :copy to multiple destinations
" Note: all :h {address} formats are supported
function! misc#copy(line1, line2, ...) abort
    " save the text to be copied
    let l:text = getline(a:line1, a:line2)
    " reverse sort line numbers to prevent overlapping
    let l:lines = reverse(sort(filter(map(copy(a:000),
        \ 'trim(execute(v:val.."="))'), '!empty(v:val)'), 'N'))
    " now make all copies
    for l:lnum in l:lines
        call append(l:lnum, l:text)
    endfor
endfunction

" misc#gcc_include(gcc, ft [, force])
" get GCC include dirs
function! misc#gcc_include(gcc, ft, ...) abort
    if !exists('s:gcc_include_'..a:ft) || get(a:, 1)
        " $INCLUDE
        let s:gcc_include_{a:ft} = split($INCLUDE, has('win32') ? ';' : ':')
        " builtin dirs
        let l:cmd = printf('%s -x%s -v -E -', a:gcc, a:ft is# 'cpp' ? 'c++' : a:ft)
        let l:include = map(systemlist(l:cmd, []), 'trim(v:val)')
        let l:ix1 = match(l:include, '#include <\.\.\.>') + 1
        let l:ix2 = match(l:include, '\.$', l:ix1) - 1
        if l:ix1 <= l:ix2
            let s:gcc_include_{a:ft} += map(l:include[l:ix1 : l:ix2], 'simplify(v:val)')
        endif
    endif
    return s:gcc_include_{a:ft}
endfunction

" misc#guifont(typeface, height)
" set &guifont
function! misc#guifont(typeface, height) abort
    let l:fonts = split(better#or(a:typeface, &guifont), ',')
    let l:height = (a:height >= 10) ? a:height : get(g:, 'fontheight', 10) + a:height
    let l:prefix = has('gui_gtk') ? ' ' : ':h'
    call map(l:fonts, {_, v -> substitute(trim(v), '\v('..l:prefix..'(\d+))?$',
        \ printf('\=%s..%d', string(l:prefix), l:height), '')})
    silent! let &guifont = join(l:fonts, ',')
    let g:fontheight = l:height
endfunction
