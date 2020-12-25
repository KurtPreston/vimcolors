" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" Show Session, Marks & MRU files
function! mru#show(sesdir, max) abort
    if !better#is_blank_buffer()
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
    call s:add_group('Session', glob(l:sesdir..'*.vim', 0, 1))
    if exists('*getmarklist')
        call s:add_group('Mark', getmarklist())
    endif
    let l:vimhelp = glob2regpat($VIMRUNTIME..'/doc/*.txt')
    call s:add_group('MRU', filter(v:oldfiles[:],
        \ {_, v -> match(v, l:vimhelp) < 0})[0 : a:max - 1])

    setlocal bufhidden=wipe buftype=nofile cursorline matchpairs=
    setlocal nomodifiable nonumber norelativenumber nospell noswapfile nowrap
    syntax match Title /^[^[].*$/
    syntax match Comment /^\[[0-9A-Z]\+\] \zs.\+[\/]/
    nnoremap <buffer><expr><silent><CR> <SID>on_enter()
    nnoremap <buffer><expr><silent><2-LeftMouse> <SID>on_enter()
    nnoremap <buffer><expr><silent>q <SID>on_quit()
endfunction

function s:add_group(title, items) abort
    if !empty(a:items)
        call append('$', ['', a:title])
        let l:num = 0
        for l:item in a:items
            if type(l:item) == v:t_string
                call append('$', printf('[%d] %s', l:num, l:item))
            else
                call append('$', printf('[%s] %s:%d', l:item.mark[1:],
                    \ l:item.file, l:item.pos[1]))
            endif
            let l:num += 1
        endfor
    endif
endfunction

function s:on_enter() abort
    let l:group = getline(search('^\a\+$', 'bnW'))
    let l:item = matchlist(getline('.'), '^\[\([0-9A-Z]\+\)\] \(\f\+\)')
    if empty(l:group) || empty(l:item)
        return "\<CR>"
    elseif l:group is# 'Mark'
        return '`' . l:item[1]
    else
        return printf(":%s %s\<CR>", l:group is# 'Session' ? 'source' : 'edit',
            \ fnameescape(l:item[2]))
    endif
endfunction

function s:on_quit() abort
    return printf(":%s\<CR>", tabpagenr('$') > 1 || winnr('$') > 1 ? 'close' : 'enew')
endfunction
