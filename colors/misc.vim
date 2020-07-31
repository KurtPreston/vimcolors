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

" Switch colorscheme by 'incr' positions
function! misc#switchcolor(incr) abort
    let l:colors = getcompletion('', 'color')
    let l:next = index(l:colors, get(g:, 'colors_name')) + a:incr
    execute 'colorscheme' l:colors[l:next % len(l:colors)]
    setlocal statusline=%!get(g:,'colors_name','n/a')
    redrawstatus | sleep
    setlocal statusline=
endfunction

" misc#complete({pat}, {type} [, {filtered}])
" custom complete function
" inoremap <C-X><C-F> <C-R>=misc#complete('[[:fname:]*?]\+', 'file')<CR>
" :h ins-completion
function! misc#complete(pat, type, ...) abort
    let l:filtered = get(a:, 1)
    let [_, l:lnum, l:col; _] = getcurpos()
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
