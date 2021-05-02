" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" misc#bwipeout({listed})
" wipe all deleted (unloaded & unlisted) or all unloaded buffers
function! misc#bwipeout(listed = 0) abort
    let l:buffers = filter(getbufinfo(), {_, v -> !v.loaded && (!v.listed || a:listed)})
    if !empty(l:buffers)
        execute 'bwipeout' join(map(l:buffers, {_, v -> v.bufnr}))
    endif
endfunction

" misc#command({cmd} [, {items} [, {fmt}]])
" complete and execute {cmd}
function! misc#command(cmd, ...) abort
    function! s:callback(id, result) abort closure
        if a:result >= 1 && a:result <= len(l:items)
            let [l:cmd, l:id, l:result] = [a:cmd, a:id, a:result]
            execute substitute(l:fmt, '${\([^}]\+\)}', '\=eval(submatch(1))', 'g')
        endif
    endfunction
    let l:items = a:0 ? a:1 : getcompletion(a:cmd..' ', 'cmdline')
    let l:fmt = get(a:, 2, '${cmd} ${items[result - 1]}')
    call popup#menu(l:items, {'title': printf('[%s]', a:cmd),
        \ 'maxheight': &pumheight ? &pumheight : &lines / 2, 'minwidth': &pumwidth,
        \ 'callback': funcref('s:callback')})
endfunction

" misc#comment({line1}, {line2} [, {preserveindent}])
" (un)comment line range
function! misc#comment(line1, line2, pi = &preserveindent) abort
    let l:lnum = nextnonblank(a:line1)
    if l:lnum == 0 || l:lnum > a:line2
        return
    endif
    let l:pat = printf('^\(\s*\)\(%s\)$', printf(escape(&cms, '^$.*~[]\'), '\(.*\)'))
    let l:sub = '\=empty(submatch(2)) ? submatch(0) : submatch(1)..submatch(3)'
    if getline(l:lnum) !~# l:pat
        let l:pat = a:pi ? '^\s*\zs.*' : '.*'
        let l:sub = printf(escape(&cms, '&\'), '&')
    endif
    call setline(l:lnum, map(getline(l:lnum, a:line2),
        \ {_, v -> empty(v) ? v : substitute(v, l:pat, l:sub, '')}))
endfunction

" misc#diff({orig})
" improved implementation of :DiffOrig
function! misc#diff(orig) abort
    execute matchstr(&diffopt, 'vertical') 'new'
    setlocal bufhidden=wipe buftype=nofile noswapfile
    let &l:filetype = getbufvar(0, '&filetype')
    nnoremap <buffer>q <C-W>q
    execute printf('silent file (%s)', a:orig ? 'ORIG' : 'HEAD')
    execute 'silent read ++edit' a:orig ? '#' : printf('!git -C %s show @:./%s',
        \ expand('#:p:h:S'), expand('#:t:S'))
    1delete_
    diffthis
    wincmd p
    diffthis
endfunction

" misc#gcc_include([{gcc} [, {force} [, {ft}]]])
" get GCC include dirs
function! misc#gcc_include(gcc = 'gcc', force = 0, ft = &filetype) abort
    let l:var = printf('%s_include_%s', fnamemodify(a:gcc, ':t:gs?[-.]?_?'), a:ft)
    if a:force || !has_key(s:, l:var)
        " $INCLUDE
        let s:[l:var] = split($INCLUDE, has('win32') ? ';' : ':')
        " builtin dirs
        let l:cmd = printf('%s -x%s -v -E -', a:gcc, a:ft is# 'cpp' ? 'c++' : a:ft)
        let l:include = map(systemlist(l:cmd, []), 'trim(v:val)')
        let l:ix1 = match(l:include, '#include <\.\.\.>') + 1
        let l:ix2 = match(l:include, '\.$', l:ix1) - 1
        if l:ix1 <= l:ix2
            let s:[l:var] += map(l:include[l:ix1 : l:ix2], 'simplify(v:val)')
        endif
    endif
    return s:[l:var]
endfunction

" misc#guifont({typeface}, {height})
" set &guifont
function! misc#guifont(typeface, height) abort
    let l:fonts = split(better#or(a:typeface, &guifont), ',')
    let l:height = (a:height >= 10) ? a:height : get(s:, 'fontheight', 10) + a:height
    let l:prefix = has('gui_gtk') ? ' ' : ':h'
    call map(l:fonts, {_, v -> substitute(trim(v), '\v('..l:prefix..'(\d+))?$',
        \ printf('\=%s..%d', string(l:prefix), l:height), '')})
    silent! let &guifont = join(l:fonts, ',')
    let s:fontheight = l:height
endfunction

" misc#wget({url}, {files} [, {destdir}])
" wget some files
function! misc#wget(url, files, destdir = '.') abort
    echomsg system(printf('wget -bqNP %s %s/%s', shellescape(a:destdir), a:url,
        \ join(a:files, printf(' %s/', a:url))))
endfunction
