" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" Wipe all deleted (unloaded & unlisted) or all unloaded buffers
function! misc#bwipeout(listed) abort
    let l:buffers = filter(getbufinfo(), {_, v -> !v.loaded && (!v.listed || a:listed)})
    if !empty(l:buffers)
        execute 'bwipeout' join(map(l:buffers, {_, v -> v.bufnr}))
    endif
endfunction

" change({line1}, {line2} [, {reg} [, {autoindent}]])
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
    call better#inputlist(a:cmd, sort(l:values), {v -> execute(a:cmd..' '..v, '')})
endfunction

" misc#comment({line1}, {line2} [, {preserveindent}])
" (Un)Comment line range
function! misc#comment(line1, line2, ...) abort
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

" misc#putregv({put})
" put v:register while flipping charwise/linewise type
function! misc#putregv(put) abort
    let [l:reg, l:body, l:type] = [v:register, getreg(), getregtype()]
    call setreg(l:reg, trim(l:body, "\r\n"), l:type is# 'v' ? 'V' : 'v')
    execute printf('normal! "%s%d%s', l:reg, v:count1, a:put)
    call setreg(l:reg, l:body, l:type)
endfunction

" misc#urltags({pat}, {flags}, {info})
" custom 'tagfunc' to open URLs as tags
" set tagfunc=misc#urltags
" :h tag-function
if exists('+tagfunc')
function! misc#urltags(pat, flags, info) abort
    " may I use cursor context?
    if stridx(a:flags, 'c') >= 0
        " support :h g:netrw_gx
        let l:url = expand(get(g:, 'netrw_gx', '<cfile>'))
        if l:url =~# '^[[:alpha:]][-+.[:alnum:]]*://'
            " found it
            if has('win32') || has('win32unix')
                let l:cmd = ['rundll32', 'url.dll,FileProtocolHandler']
            elseif executable('kfmclient')
                let l:cmd = ['kfmclient', 'openURL']
            elseif executable('xdg-open')
                let l:cmd = ['xdg-open']
            endif
            " trying to open...
            if exists('l:cmd')
                if has('job')
                    silent! call job_start(add(l:cmd, l:url))
                elseif has('nvim')
                    silent! call jobstart(add(l:cmd, l:url))
                else
                    silent! call system(join(l:cmd)..' '..shellescape(l:url))
                endif
                " disable standard tag search
                return []
            endif
        endif
    endif
    " fallback to default
    " Note: Neovim doesn't like v:null
    return taglist(a:pat, get(a:info, 'buf_ffname', ''))
endfunction
endif
