" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" popup#menu({what}, {options})
" popup_menu() compatibility wrapper
" Options supported:
"   line, col, pos, {max,min}{height,width}, title, wrap, highlight, padding, border,
"   borderchars, time, cursorline, callback
function! popup#menu(what, options) abort
    " do we have popupwin?
    if has('popupwin')
        return popup_menu(a:what, a:options)
    endif

    " get lines as List
    if type(a:what) == v:t_number
        let l:lines = getbufline(a:what, 1, '$')
    elseif type(a:what) == v:t_list
        let l:lines = copy(a:what)
    else
        let l:lines = [a:what]
    endif

    " fallback implementation using inputlist()
    if !has('nvim')
        call insert(map(l:lines, {k, v -> printf('%d) %s', k + 1, v)}),
            \ get(a:options, 'title', 'Choose item:'))
        let l:choice = inputlist(l:lines)
        if has_key(a:options, 'callback')
            call call(a:options.callback, [0, l:choice])
        endif
        return
    endif

    " setup default options
    let l:opts = s:init_options(a:options)
    let l:extraV = l:opts.border[0] + l:opts.padding[0] +
        \ l:opts.padding[2] + l:opts.border[2]
    let l:extraH = l:opts.border[3] + l:opts.padding[3] +
        \ l:opts.padding[1] + l:opts.border[1]
    let l:winhl = 'EndOfBuffer:,CursorLine:PMenuSel'
    if !empty(l:opts.highlight)
        let l:winhl .= ',NormalFloat:' . l:opts.highlight
    endif

    " calc height and width
    let l:height = max([len(l:lines), l:opts.minheight])
    let l:height = min([l:height, l:opts.maxheight, &lines - l:extraV])
    let l:width = max(extend(map(l:lines[:], 'strwidth(v:val)'),
        \ [strwidth(l:opts.title) - l:opts.padding[3] - l:opts.padding[1],
        \ l:opts.minwidth]))
    let l:width = min([l:width, l:opts.maxwidth, &columns - l:extraH])

    " floatwin config
    let l:config = { 'style': 'minimal', 'relative': 'editor', 'focusable': v:false}
    let l:config.anchor = get({'topright': 'NE', 'botleft': 'SW', 'botright': 'SE'},
        \ l:opts.pos, 'NW')
    let [l:config.height, l:config.width] = [l:height + l:extraV, l:width + l:extraH]
    if l:opts.line
        let l:config.row = l:opts.line - 1
    elseif l:config.anchor is# 'SW' || l:config.anchor is# 'SE'
        let l:config.row = (&lines + l:config.height) / 2
    else
        let l:config.row = (&lines - l:config.height) / 2
    endif
    if l:opts.col
        let l:config.col = l:opts.col - 1
    elseif l:config.anchor is# 'NE' || l:config.anchor is# 'SE'
        let l:config.col = (&columns + l:config.width) / 2
    else
        let l:config.col = (&columns - l:config.width) / 2
    endif

    " show menu box
    let l:box = s:get_buffer('popup_box', v:true)
    call s:set_lines(l:box, s:draw_box(l:config.height, l:config.width, l:opts))
    call nvim_open_win(l:box, 0, l:config)

    " shift menu items inside the box
    let l:config.focusable = v:true
    let [l:config.height, l:config.width] = [l:height, l:width]
    let [l:config.row, l:config.col] += s:shift_inside(l:config.anchor, l:opts)

    " show menu items
    let l:items = s:get_buffer('popup_state', {})
    call s:set_lines(l:items, l:lines)
    call nvim_open_win(l:items, 1, l:config)

    " set window highlight
    call setwinvar(bufwinnr(l:box), '&winhighlight', l:winhl)
    call setwinvar(bufwinnr(l:items), '&winhighlight', l:winhl)

    " setup items buffer
    let b:popup_state.box = l:box
    let b:popup_state.callback = l:opts.callback
    let b:popup_state.result = -1
    let &l:cursorline = l:opts.cursorline
    let &l:wrap = l:opts.wrap
    setlocal scrolloff=0 sidescrolloff=0
    autocmd! BufLeave <buffer> call s:bufleave(str2nr(expand('<abuf>')))
    nnoremap <buffer><expr><CR> <SID>end_dialog(1)
    nnoremap <buffer><expr><Space> <SID>end_dialog(1)
    nnoremap <buffer><expr><2-LeftMouse> <SID>end_dialog(1)
    nnoremap <buffer><expr>x <SID>end_dialog(0)
    nnoremap <buffer><expr><Esc> <SID>end_dialog(0)
    nnoremap <buffer><expr><C-C> <SID>end_dialog(0)

    " start timer
    if l:opts.time > 0
        call timer_start(l:opts.time,
            \ {-> bufnr() == l:items && nvim_win_close(0, v:true)})
    endif
endfunction

" the rest for Neovim only
if !has('nvim')
    finish
endif

function s:init_options(options) abort
    let l:opts = extend(copy(a:options), #{
        \ line: 0, col: 0, pos: 'center', maxheight: 999, minheight: 1, maxwidth: 999,
        \ minwidth: 1, title: '', wrap: 0, highlight: '', padding: [0, 1, 0, 1],
        \ border: [], borderchars: [], time: 0, cursorline: 1, callback: '',
        \ }, 'keep')
    if l:opts.pos is# 'center'
        let l:opts.line = 0
        let l:opts.col = 0
    endif
    let l:opts.padding += [1, 1, 1, 1]
    let l:opts.border += [1, 1, 1, 1]
    if len(l:opts.borderchars) == 1
        let l:opts.borderchars = repeat(l:opts.borderchars, 8)
    elseif len(l:opts.borderchars) == 2
        let l:opts.borderchars = repeat(l:opts.borderchars[0:0], 4) +
            \ repeat(l:opts.borderchars[1:1], 4)
    elseif len(l:opts.borderchars) < 8
        let l:opts.borderchars += [nr2char(0x2550), nr2char(0x2551), nr2char(0x2550),
            \ nr2char(0x2551), nr2char(0x2554), nr2char(0x2557), nr2char(0x255D),
            \ nr2char(0x255A)][len(l:opts.borderchars) : ]
    endif
    return l:opts
endfunction

function s:shift_inside(anchor, opts) abort
    if a:anchor is# 'NE'
        return [a:opts.border[0] + a:opts.padding[0],
            \ -a:opts.border[1] - a:opts.padding[1]]
    elseif a:anchor is# 'SE'
        return [-a:opts.border[2] - a:opts.padding[2],
            \ -a:opts.border[1] - a:opts.padding[1]]
    elseif a:anchor is# 'SW'
        return [-a:opts.border[2] - a:opts.padding[2],
            \ a:opts.border[3] + a:opts.padding[3]]
    else
        return [a:opts.border[0] + a:opts.padding[0],
            \ a:opts.border[3] + a:opts.padding[3]]
    endif
endfunction

" find hidden buffer by looking up variable name
" create new if not found
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

function s:draw_box(height, width, opts) abort
    let l:border31 = a:opts.border[3] + a:opts.border[1]
    let l:contents = repeat([printf('%.*S%*S%.*S',
        \ a:opts.border[3], a:opts.borderchars[3], a:width - l:border31, '',
        \ a:opts.border[1], a:opts.borderchars[1])],
        \ a:height - a:opts.border[0] - a:opts.border[2])
    if a:opts.border[0]
        call insert(l:contents, printf('%.*S%S%S%.*S',
            \ a:opts.border[3], a:opts.borderchars[4], a:opts.title,
            \ repeat(a:opts.borderchars[0],
            \   a:width - l:border31 - strwidth(a:opts.title)),
            \ a:opts.border[1], a:opts.borderchars[5]))
    endif
    if a:opts.border[2]
        call add(l:contents, printf('%.*S%S%.*S',
            \ a:opts.border[3], a:opts.borderchars[7],
            \ repeat(a:opts.borderchars[2], a:width - l:border31),
            \ a:opts.border[1], a:opts.borderchars[6]))
    endif
    return l:contents
endfunction

function s:bufleave(buf) abort
    let l:state = getbufvar(a:buf, 'popup_state')
    execute bufwinnr(a:buf) 'hide'
    execute bufwinnr(l:state.box) 'hide'
    if !empty(l:state.callback)
        " delay callback until another buffer entered
        let s:popup_callback = function(l:state.callback, [0, l:state.result])
        autocmd BufEnter * ++once ++nested call call(remove(s:, 'popup_callback'), [])
    endif
endfunction

function s:end_dialog(ok) abort
    let b:popup_state.result = a:ok ? line('.') : -1
    return "\<C-W>c"
endfunction
