" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" popup#menu({what}, {options})
" popup_menu() compatibility wrapper
" Options supported:
"   line, col, pos, {max,min}{height,width}, title, wrap, highlight, padding, border,
"   borderchars, time, cursorline, callback
function! popup#menu(what, options) abort
    " do we have :h popupwin?
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

    " :h api-floatwin
    if has('nvim')
        return s:floatwin(l:lines, s:default_options(a:options))
    endif

    " fallback implementation using :h inputlist()
    call insert(map(l:lines, {k, v -> printf('%d) %s', k + 1, v)}),
        \ get(a:options, 'title', 'Choose item:'))
    let l:choice = inputlist(l:lines)
    if has_key(a:options, 'callback')
        return call(a:options.callback, [0, l:choice])
    endif
endfunction

" the rest for Neovim only
if !has('nvim')
    finish
endif

function s:default_options(options) abort
    let l:opts = extend(copy(a:options), #{
        \ line: 0, col: 0, pos: 'center', maxheight: 999, minheight: 1, maxwidth: 999,
        \ minwidth: 1, title: '', wrap: v:false, highlight: '', padding: [0, 1, 0, 1],
        \ border: [], borderchars: [], time: 0, cursorline: v:true, callback: '',
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

function s:floatwin(lines, opts) abort
    let l:extraV = a:opts.border[0] + a:opts.padding[0] +
        \ a:opts.padding[2] + a:opts.border[2]
    let l:extraH = a:opts.border[3] + a:opts.padding[3] +
        \ a:opts.padding[1] + a:opts.border[1]
    let l:winhl = 'EndOfBuffer:,CursorLine:PMenuSel'
    if !empty(a:opts.highlight)
        let l:winhl .= ',NormalFloat:' . a:opts.highlight
    endif

    " calc height and width
    let l:height = max([len(a:lines), a:opts.minheight])
    let l:height = min([l:height, a:opts.maxheight, &lines - &cmdheight - l:extraV])
    let l:height += l:extraV
    let l:width = max(extend(map(a:lines[:], 'strwidth(v:val)'), [a:opts.minwidth,
        \ strwidth(a:opts.title) - a:opts.padding[3] - a:opts.padding[1]]))
    let l:width = min([l:width, a:opts.maxwidth, &columns - l:extraH])
    let l:width += l:extraH

    " floatwin config
    let l:config = {'anchor': get({'topright': 'NE', 'botleft': 'SW', 'botright': 'SE'},
        \ a:opts.pos, 'NW'), 'height': l:height, 'width': l:width, 'relative': 'editor',
        \ 'focusable': v:false, 'style': 'minimal'}
    let l:config.row = a:opts.line ? a:opts.line - 1 : s:centered(l:height,
        \ &lines - &cmdheight, l:config.anchor[0] is# 'S')
    let l:config.col = a:opts.col ? a:opts.col - 1 : s:centered(l:width, &columns,
        \ l:config.anchor[1] is# 'E')

    " show menu box
    let l:box = s:get_buffer('popup_box', v:true)
    call s:set_lines(l:box, s:draw_box(l:config.height, l:config.width, a:opts))
    call nvim_open_win(l:box, 0, l:config)
    call s:set_winopts(bufwinid(l:box), {'winhighlight': l:winhl})

    " shift menu items inside the box
    let l:config.focusable = v:true
    let [l:config.height, l:config.width] -= [l:extraV, l:extraH]
    let [l:config.row, l:config.col] += s:shift_inside(l:config.anchor, a:opts)

    " show menu items
    let l:items = s:get_buffer('popup_items',
        \ {'box': l:box, 'callback': a:opts.callback, 'result': 0})
    call s:set_lines(l:items, a:lines)
    call nvim_open_win(l:items, 1, l:config)
    call s:set_winopts(0, {'cursorline': a:opts.cursorline, 'scrolloff': 0,
        \ 'sidescrolloff': 0, 'winhighlight': l:winhl, 'wrap': a:opts.wrap})
    call s:set_keymaps(0, {'<CR>': 'end_dialog()', '<Space>': 'end_dialog()',
        \ '<2-LeftMouse>': 'end_dialog()', 'x': 'end_dialog(-1)',
        \ '<Esc>': 'end_dialog(-1)', '<C-C>': 'end_dialog(-1)'})
    autocmd! BufLeave <buffer> call s:bufleave(str2nr(expand('<abuf>')))

    " start timer
    if a:opts.time > 0
        call timer_start(a:opts.time,
            \ {-> bufnr() == l:items && nvim_win_close(0, v:true)})
    endif
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
    else "NW
        return [a:opts.border[0] + a:opts.padding[0],
            \ a:opts.border[3] + a:opts.padding[3]]
    endif
endfunction

" find hidden buffer by looking up variable
" create new if not found
function s:get_buffer(varname, value) abort
    let l:match = filter(getbufinfo({'bufloaded': 1}),
        \ {_, v -> empty(v.windows) && has_key(v.variables, a:varname) &&
        \ type(v.variables[a:varname]) == type(a:value)})
    let l:buf = empty(l:match) ? nvim_create_buf(v:false, v:true) : l:match[0].bufnr
    call setbufvar(l:buf, a:varname, a:value)
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

function s:centered(part, total, far) abort
    return (a:far ? a:total + a:part : a:total - a:part) / 2
endfunction

function s:set_winopts(window, winopts) abort
    for [l:name, l:value] in items(a:winopts)
        call nvim_win_set_option(a:window, l:name, l:value)
    endfor
endfunction

function s:set_keymaps(buffer, keymaps) abort
    for [l:lhs, l:rhs] in items(a:keymaps)
        call nvim_buf_set_keymap(a:buffer, 'n', l:lhs, '<SID>'..l:rhs,
            \ {'noremap': v:true, 'expr': v:true})
    endfor
endfunction

function s:bufleave(buf) abort
    let l:state = getbufvar(a:buf, 'popup_items')
    execute bufwinnr(a:buf) 'hide'
    execute bufwinnr(l:state.box) 'hide'
    if !empty(l:state.callback)
        " delay callback until another buffer entered
        let s:callback = function(l:state.callback, [0, l:state.result])
        autocmd BufEnter * ++once ++nested call call(remove(s:, 'callback'), [])
    endif
endfunction

function s:end_dialog(result = line('.')) abort
    let b:popup_items.result = a:result
    return "\<C-W>c"
endfunction
