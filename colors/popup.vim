" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" popup#menu({what}, {options})
" popup_menu() compatibility wrapper
function! popup#menu(what, options) abort
    " do we have popupwin?
    if has('popupwin')
        return popup_menu(a:what, a:options)
    endif

    " get lines as List
    if type(a:what) == v:t_list
        let l:lines = copy(a:what)
    elseif type(a:what) == v:t_string && stridx(a:what, "\n") >= 0
        let l:lines = split(a:what, "\n")
    else
        let l:lines = getbufline(a:what, 1, '$')
    endif

    " fallback implementation using inputlist()
    if !has('nvim')
        call insert(map(l:lines, {k, v -> printf('%d) %s', k + 1, v)}),
            \ get(a:options, 'title', 'Choose item:'))
        return call(a:options.callback, [0, inputlist(l:lines)])
    endif

    " calc width and height
    let l:width = max(map(l:lines[:], 'nvim_strwidth(v:val)'))
    let l:height = len(l:lines)
    let l:width = max([l:width, get(a:options, 'minwidth', 6)])
    let l:height = max([l:height, get(a:options, 'minheight', 1)])
    let l:width = min([l:width, get(a:options, 'maxwidth', &co - 4)])
    let l:height = min([l:height, get(a:options, 'maxheight', &lines - 2 - &ch)])
    " floatwin config
    let l:config = { 'style': 'minimal', 'relative': 'editor', 'focusable': v:false,
        \ 'width': l:width + 4, 'height': l:height + 2, 'col': (&co - 4 - l:width) / 2,
        \ 'row': (&lines - 2 - &ch - l:height) / 2 }

    " show menu box
    let l:box = s:get_buffer('popup_box', v:true)
    call s:set_lines(l:box, s:draw_box(l:config.width, l:config.height, a:options))
    call nvim_open_win(l:box, 0, l:config)

    " shift menu items inside the box
    let l:config.focusable = v:true
    let l:config.width -= 4
    let l:config.height -= 2
    let l:config.col += 2
    let l:config.row += 1

    " show menu items
    let l:items = s:get_buffer('popup_state', {})
    call s:set_lines(l:items, l:lines)
    call nvim_open_win(l:items, 1, l:config)

    " setup menu items buffer
    let b:popup_state.box = l:box
    let b:popup_state.callback = a:options.callback
    let b:popup_state.result = -1
    setlocal cursorline scrolloff=0 winhighlight=CursorLine:PMenuSel nowrap
    autocmd! BufLeave <buffer> call s:bufleave(str2nr(expand('<abuf>')))
    nnoremap <buffer><expr><CR> <SID>end_dialog(1)
    nnoremap <buffer><expr><Space> <SID>end_dialog(1)
    nnoremap <buffer><expr><2-LeftMouse> <SID>end_dialog(1)
    nnoremap <buffer><expr>x <SID>end_dialog(0)
    nnoremap <buffer><expr><Esc> <SID>end_dialog(0)
    nnoremap <buffer><expr><C-C> <SID>end_dialog(0)
endfunction

" the rest for Neovim only
if !has('nvim')
    finish
endif

" double-width box
const s:default_border = [
    \ nr2char(0x2550), nr2char(0x2551), nr2char(0x2550), nr2char(0x2551),
    \ nr2char(0x2554), nr2char(0x2557), nr2char(0x255D), nr2char(0x255A),
    \ ]

" find hidden buffer by looking up variable name
" create one if not found
function s:get_buffer(varname, value) abort
    let l:match = filter(getbufinfo({'bufloaded': 1}),
        \ {_, v -> empty(v.windows) && has_key(v.variables, a:varname) &&
        \ type(v.variables[a:varname]) == type(a:value)})
    if empty(l:match)
        let l:buf = nvim_create_buf(v:false, v:true)
        call setbufvar(l:buf, a:varname, a:value)
    else
        let l:buf = l:match[0].bufnr
    endif
    return l:buf
endfunction

function s:set_lines(buf, lines) abort
    call nvim_buf_set_option(a:buf, 'modifiable', v:true)
    call nvim_buf_set_lines(a:buf, 0, -1, 1, a:lines)
    call nvim_buf_set_option(a:buf, 'modifiable', v:false)
endfunction

function s:draw_box(width, height, options) abort
    " get options
    let l:title = get(a:options, 'title', '')
    let l:bch = get(a:options, 'borderchars', s:default_border)

    " expand border chars
    if len(l:bch) == 1
        let l:bch = repeat(l:bch, 8)
    elseif len(l:bch) == 2
        let l:bch = repeat(l:bch[0:0], 4) + repeat(l:bch[1:1], 4)
    endif

    " draw empty box
    let l:contents = repeat([printf('%s%*s%s', l:bch[3], a:width - 2, '', l:bch[1])],
        \ a:height - 2)
    call insert(l:contents, printf('%s%s%s%s', l:bch[4], l:title,
        \ repeat(l:bch[0], a:width - 2 - strlen(l:title)), l:bch[5]))
    call add(l:contents, printf('%s%s%s', l:bch[7], repeat(l:bch[2], a:width - 2),
        \ l:bch[6]))

    return l:contents
endfunction

function s:bufleave(buf) abort
    let l:state = getbufvar(a:buf, 'popup_state')
    execute bufwinnr(a:buf) 'hide'
    execute bufwinnr(l:state.box) 'hide'
    " delay callback until another buffer entered
    let s:popup_callback = function(l:state.callback, [0, l:state.result])
    autocmd BufEnter * ++once ++nested call call(remove(s:, 'popup_callback'), [])
endfunction

function s:end_dialog(ok) abort
    let b:popup_state.result = a:ok ? line('.') : -1
    return "\<C-W>c"
endfunction
