" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" misc#autocomplete({chars})
" show completion menu after {chars} or more symbols typed
function! misc#autocomplete(chars) abort
    let l:cch = 0
    let l:tid = -1

    function! s:trigger(key) abort closure
        if l:tid != -1
            call timer_stop(l:tid)
            let l:tid = -1
        endif
        let l:cch = a:key ? l:cch + 1 : 0
        if l:cch >= a:chars && !pumvisible()
            let l:tid = timer_start(&tm, {-> feedkeys("\<C-N>", 'n')})
        endif
    endfunction

    augroup autocomplete | au!
        if a:chars > 0
            set completeopt+=menuone,noinsert
            autocmd InsertCharPre * call s:trigger(v:char =~ '\k')
            autocmd InsertLeave * call s:trigger(0)
        endif
    augroup end
endfunction

" misc#bwipeout({listed})
" wipe all deleted (unloaded & unlisted) or all unloaded buffers
function! misc#bwipeout(listed = 0) abort
    let l:buffers = filter(getbufinfo(), {_, v -> !v.loaded && (!v.listed || a:listed)})
    if !empty(l:buffers)
        execute 'bwipeout' join(map(l:buffers, {_, v -> v.bufnr}))
    endif
endfunction

" misc#change({line1}, {line2} [, {reg} [, {autoindent}]])
" non-interactive :change
" Note: the replaced text is put in the unnamed register as in :h put-Visual-mode
function! misc#change(line1, line2, reg = v:register, ai = &autoindent) abort
    " split {reg} to deal with ={expr}
    let [l:reg, l:expr] = [strcharpart(a:reg, 0, 1), strcharpart(a:reg, 1)]
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
        \ printf('%dnormal! "9%s', a:line1, a:ai ? '[P' : 'P'),
        \ printf('keepjumps '']+,'']++%d delete', a:line2 - a:line1),
        \ -1])
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
" (Un)Comment line range
function! misc#comment(line1, line2, pi = &preserveindent) abort
    let l:pat = printf('^\(\s*\)\(%s\)$', printf(escape(&cms, '^$.*~[]\'), '\(.*\)'))
    let l:sub = '\=empty(submatch(2)) ? submatch(0) : submatch(1)..submatch(3)'
    if getline(a:line1) !~ l:pat
        let l:pat = a:pi ? '^\s*\zs.*' : '.*'
        let l:sub = printf(escape(&cms, '&\'), '&')
    endif
    call setline(a:line1, map(getline(a:line1, a:line2),
        \ {_, v -> substitute(v, l:pat, l:sub, '')}))
endfunction

" misc#copy({line1}, {line2} [, {address1} ...])
" :copy to multiple destinations
" Note: all :h {address} formats are supported
function! misc#copy(line1, line2, ...) abort
    " get text to copy
    let l:text = getline(a:line1, a:line2)
    " evaluate line numbers
    let l:lines = filter(map(a:000[:], 'trim(execute(v:val.."="))'), '!empty(v:val)')
    " reverse line numbers to prevent overlapping
    for l:lnum in reverse(sort(l:lines, 'N'))
        call append(l:lnum, l:text)
    endfor
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
    if a:force || !has_key(s:, 'gcc_include_' . a:ft)
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

" misc#guifont({typeface}, {height})
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

" misc#wget({url}, {destdir}, {files})
" wget some files
function! misc#wget(url, destdir, files) abort
    echomsg system(printf('wget -bqNP %s %s/%s', shellescape(a:destdir), a:url,
        \ join(a:files, printf(' %s/', a:url))))
endfunction
