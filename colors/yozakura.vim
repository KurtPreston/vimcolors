" ------------------------------------------------------------------------------
" yozakura.vim
" ------------------------------------------------------------------------------

scriptencoding utf-8

highlight clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'yozakura'
set background=dark


" Color palette.
let s:black     = {'cterm':   '0', 'gui': '#000000'}
let s:red       = {'cterm': '173', 'gui': '#D7875F'}
let s:green     = {'cterm': '106', 'gui': '#87AF00'}
let s:yellow    = {'cterm': '226', 'gui': '#FFFF00'}
let s:blue      = {'cterm':  '75', 'gui': '#5FAFFF'}
let s:magenta   = {'cterm': '218', 'gui': '#FFAFDF'}
let s:cyan      = {'cterm':  '86', 'gui': '#5FFFD7'}
let s:lightgray = {'cterm': '242', 'gui': '#6C6C6C'}
let s:darkgray  = {'cterm': '238', 'gui': '#444444'}
let s:white     = {'cterm': '254', 'gui': '#E4E4E4'}
let s:status    = {'cterm':  '27', 'gui': '#005FFF'}

" Options.
let s:bold      = 'bold'
let s:underline = 'underline'
let s:none      = 'NONE'


function! s:def_hl(group, fg, bg, opt, ...) abort
    let l:color_settings = []
    if type(a:fg) == type({})
        let l:color_settings += ['ctermfg=' . a:fg.cterm]
        let l:color_settings += ['guifg='   . a:fg.gui]
    endif
    if type(a:bg) == type({})
        let l:color_settings += ['ctermbg=' . a:bg.cterm]
        let l:color_settings += ['guibg='   . a:bg.gui]
    endif
    if type(a:opt) == type('')
        let l:color_settings += ['cterm=' . a:opt]
        let l:color_settings += ['gui='   . a:opt]
    endif
    if a:0 > 0 && type(a:1) == type('')
        let l:color_settings += ['guisp=' . a:1]
    endif 
    execute 'highlight' a:group join(l:color_settings)
endfunction


" Syntax highlight.
call s:def_hl('Comment',      s:lightgray, -1,         -1)
call s:def_hl('Constant',     s:magenta,   -1,         -1)
call s:def_hl('Identifier',   s:cyan,      -1,         s:bold)
call s:def_hl('Function',     s:blue,      -1,         -1)
call s:def_hl('Statement',    s:blue,      -1,         s:bold)
call s:def_hl('Operator',     s:white,     -1,         s:bold)
call s:def_hl('PreProc',      s:green,     -1,         -1)
call s:def_hl('Type',         s:cyan,      -1,         s:none)
call s:def_hl('Special',      s:red,       -1,         -1)
call s:def_hl('Delimiter',    s:white,     -1,         -1)
call s:def_hl('Underlined',   s:magenta,   -1,         s:underline)
call s:def_hl('Ignore',       s:black,     -1,         -1)
call s:def_hl('Error',        s:yellow,    s:none,     s:bold)
call s:def_hl('Todo',         s:lightgray, s:yellow,   s:bold)

" Other highlight groups.
call s:def_hl('ColorColumn',  -1,          s:darkgray,  -1)
call s:def_hl('Conceal',      s:blue,      s:bold,      -1)
call s:def_hl('Cursor',       s:black,     s:white,     -1)
call s:def_hl('CursorColumn', -1,          s:darkgray,  -1)
call s:def_hl('CursorLine',   -1,          s:darkgray,  s:none)
call s:def_hl('Directory',    s:magenta,   -1,          -1)
call s:def_hl('DiffAdd',      s:white,     s:blue,      s:bold)
call s:def_hl('DiffChange',   s:lightgray, s:magenta,   s:bold)
call s:def_hl('DiffDelete',   s:white,     s:red,       s:bold)
call s:def_hl('DiffText',     s:lightgray, s:yellow,    s:bold)
call s:def_hl('EndOfBuffer',  s:lightgray, -1,          -1)
call s:def_hl('ErrorMsg',     s:black,     s:yellow,    s:bold)
call s:def_hl('VertSplit',    s:black,     s:lightgray, s:none)
call s:def_hl('Folded',       s:cyan,      s:lightgray, -1)
call s:def_hl('FoldColumn',   s:white,     s:none,      -1)
call s:def_hl('SignColumn',   s:yellow,    s:none,      -1)
call s:def_hl('IncSearch',    s:black,     s:yellow,    s:bold)
call s:def_hl('LineNr',       s:lightgray, -1,          -1)
call s:def_hl('CursorLineNr', s:lightgray, -1,          s:none)
call s:def_hl('MatchParen',   s:yellow,    s:black,     s:bold)
call s:def_hl('ModeMsg',      s:white,     -1,          s:bold)
call s:def_hl('MoreMsg',      s:cyan,      -1,          s:none)
call s:def_hl('NonText',      s:lightgray, -1,          s:none)
call s:def_hl('Normal',       s:white,     s:black,     -1)
call s:def_hl('Pmenu',        s:black,     s:lightgray, -1)
call s:def_hl('PmenuSel',     s:black,     s:yellow,    -1)
call s:def_hl('PmenuSbar',    -1,          s:white,     -1)
call s:def_hl('PmenuThumb',   -1,          s:darkgray,  -1)
call s:def_hl('Question',     s:cyan,      -1,          s:bold)
call s:def_hl('Search',       s:black,     s:yellow,    s:bold)
call s:def_hl('SpecialKey',   s:magenta,   -1,          -1)
call s:def_hl('SpellBad',     s:lightgray, s:yellow,    s:bold, s:none)
call s:def_hl('StatusLine',   s:white,     s:status,    s:bold)
call s:def_hl('StatusLineNC', s:blue,      s:darkgray,  s:bold)
call s:def_hl('TabLine',      s:white,     s:lightgray, s:none)
call s:def_hl('TabLineFill',  s:black,     s:white,     s:none)
call s:def_hl('TabLineSel',   s:white,     s:black,     s:bold)
call s:def_hl('Title',        s:blue,      -1,          s:bold)
call s:def_hl('Visual',       s:white,     s:lightgray, s:bold)
call s:def_hl('WarningMsg',   s:yellow,    -1,          s:bold)
call s:def_hl('WildMenu',     s:black,     s:yellow,    s:bold)

if !has('gui_running') && &t_Co < 256
    call s:def_hl('ColorColumn',  s:white, -1,     -1)
    call s:def_hl('CursorColumn', s:white, -1,     -1)
    call s:def_hl('CursorLine',   -1,      s:none, s:underline)
    call s:def_hl('CursorLineNr', -1,      s:none, s:underline)
endif

highlight link SpellCap   SpellBad
highlight link SpellLocal SpellBad
highlight link SpellRare  SpellBad
highlight link VisualNOS  Visual

if hlexists('StatusLineTerm') && hlexists('StatusLineTermNC')
    highlight! link StatusLineTerm StatusLine
    highlight! link StatusLineTermNC StatusLineNC
endif
