" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" Show Session & MRU files
function! mru#show(sesdir, max) abort
    set shortmess+=I
    if !empty(bufname()) || line('$') > 1 || !empty(getline(1))
        new
    endif

    if empty(a:sesdir) || !isdirectory(a:sesdir)
        let l:sesdir = expand('~/')
    else
        let l:sesdir = fnamemodify(a:sesdir, ':p')
    endif
    let l:header =<< END
 _    _      _                            _          _   _ _           _
| |  | |    | |                          | |        | | | (_)         | |
| |  | | ___| | ___ ___  _ __ ___   ___  | |_ ___   | | | |_ _ __ ___ | |
| |/\| |/ _ \ |/ __/ _ \| '_ ` _ \ / _ \ | __/ _ \  | | | | | '_ ` _ \| |
\  /\  /  __/ | (_| (_) | | | | | |  __/ | || (_) | \ \_/ / | | | | | |_|
 \/  \/ \___|_|\___\___/|_| |_| |_|\___|  \__\___/   \___/|_|_| |_| |_(_)

END

    call setline(1, l:header)
    call s:add_group('Session', glob(l:sesdir..'*.vim', 1, 1), a:max)
    call s:add_group('MRU', v:oldfiles, a:max)

    setlocal buftype=nofile bufhidden=wipe cursorline matchpairs=
    setlocal nomodifiable nonumber norelativenumber nospell noswapfile nowrap
    syntax match Title /^[^[].*$/
    syntax match Comment /^\[\d\+\] \zs.\+[\/]/
    nnoremap <buffer><expr><silent><CR> <SID>on_enter()
    nnoremap <buffer><expr><silent><2-LeftMouse> <SID>on_enter()
    nnoremap <buffer><silent>q :try\|close\|catch\|enew\|endtry<CR>
endfunction

function s:add_group(title, items, max) abort
    if !empty(a:items)
        call append('$', ['', a:title])
        for l:num in range(a:max)
            let l:item = get(a:items, l:num)
            if empty(l:item)
                break
            endif
            call append('$', printf('[%d] %s', l:num, l:item))
        endfor
    endif
endfunction

function s:on_enter() abort
    let l:file = matchstr(getline('.'), '^\[\d\+\] \zs.\+$')
    if empty(l:file)
        return "\<CR>"
    else
        return printf(":%s %s\<CR>", search('^MRU$', 'bnW') ? 'edit' : 'source',
            \ fnameescape(l:file))
    endif
endfunction
