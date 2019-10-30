" Vim color file
" Name:     Messy
" Date:     Saturday, July 6, 2019
" Author:   Jak Wings <jakwings@gmail.com>
" Credits:  Thanks to http://bytefluent.com/vivify/

set background=light

if version > 580
    if exists('syntax_on')
        syntax reset
    endif
endif

let g:colors_name = 'messy'

let [s:g0, s:t0] = ['#000000', '0']
let [s:g1, s:t1] = ['#800000', '1']
let [s:g2, s:t2] = ['#008000', '2']
let [s:g3, s:t3] = ['#808000', '3']
let [s:g4, s:t4] = ['#000080', '4']
let [s:g5, s:t5] = ['#800080', '5']
let [s:g6, s:t6] = ['#008080', '6']
let [s:g7, s:t7] = ['#c0c0c0', '7']
let [s:g8, s:t8] = ['#808080', '8']
let [s:g9, s:t9] = ['#ff0000', '9']
let [s:g10, s:t10] = ['#00ff00', '10']
let [s:g11, s:t11] = ['#ffff00', '11']
let [s:g12, s:t12] = ['#0000ff', '12']
let [s:g13, s:t13] = ['#ff00ff', '13']
let [s:g14, s:t14] = ['#00ffff', '14']
let [s:g15, s:t15] = ['#ffffff', '15']

if exists('g:colorscheme_messy_inverse') && g:colorscheme_messy_inverse
    let [s:g0, s:t0] = ['#ffffff', '15']
    "let [s:g1, s:t1] = ['#ff0000', '9']
    "let [s:g2, s:t2] = ['#00ff00', '10']
    "let [s:g3, s:t3] = ['#ffff00', '11']
    "let [s:g4, s:t4] = ['#0000ff', '12']
    "let [s:g5, s:t5] = ['#ff00ff', '13']
    "let [s:g6, s:t6] = ['#00ffff', '14']
    let [s:g7, s:t7] = ['#808080', '8']
    let [s:g8, s:t8] = ['#c0c0c0', '7']
    "let [s:g9, s:t9] = ['#800000', '1']
    "let [s:g10, s:t10] = ['#008000', '2']
    "let [s:g11, s:t11] = ['#808000', '3']
    "let [s:g12, s:t12] = ['#000080', '4']
    "let [s:g13, s:t13] = ['#800080', '5']
    "let [s:g14, s:t14] = ['#008080', '6']
    let [s:g15, s:t15] = ['#000000', '0']
endif

function! s:hi(name, guifg, guibg, guisp, gui, ctermfg, ctermbg, cterm)
    exec 'hi ' . a:name
                \ . ' guifg=' . a:guifg . ' guibg=' . a:guibg
                \ . ' guisp=' . a:guisp . ' gui=' . a:gui
                \ . ' ctermfg=' . a:ctermfg . ' ctermbg=' . a:ctermbg
                \ . ' cterm=' . a:cterm
endfunction

call s:hi('Boolean', s:g3, 'NONE', 'NONE', 'NONE', s:t3, 'NONE', 'NONE')
call s:hi('Character', s:g3, 'NONE', 'NONE', 'NONE', s:t3, 'NONE', 'NONE')
call s:hi('ColorColumn', s:g0, s:g7, s:g0, 'NONE', s:t0, s:t7, 'NONE')
call s:hi('Comment', s:g8, 'NONE', 'NONE', 'NONE', s:t8, 'NONE', 'NONE')
call s:hi('Conceal', s:g13, 'NONE', 'NONE', 'NONE', s:t13, 'NONE', 'NONE')
call s:hi('Conditional', s:g4, 'NONE', 'NONE', 'NONE', s:t4, 'NONE', 'NONE')
call s:hi('Constant', s:g3, 'NONE', 'NONE', 'NONE', s:t3, 'NONE', 'NONE')
call s:hi('Cursor', s:g15, s:g12, s:g12, 'NONE', s:t15, s:t12, 'NONE')
call s:hi('CursorColumn', s:g15, s:g6, s:g15, 'NONE', s:t15, s:t6, 'NONE')
call s:hi('CursorLine', s:g15, s:g6, s:g15, 'NONE', s:t15, s:t6, 'NONE')
call s:hi('CursorLineNr', s:g15, s:g6, 'NONE', 'NONE', s:t15, s:t6, 'NONE')
call s:hi('Debug', s:g5, 'NONE', 'NONE', 'NONE', s:t5, 'NONE', 'NONE')
call s:hi('Define', s:g5, 'NONE', 'NONE', 'NONE', s:t5, 'NONE', 'NONE')
call s:hi('Delimiter', s:g5, 'NONE', 'NONE', 'NONE', s:t5, 'NONE', 'NONE')
call s:hi('DiffAdd', s:g15, s:g2, s:g2, 'bold', s:t15, s:t2, 'NONE')
call s:hi('DiffChange', s:g0, s:g11, s:g11, 'NONE', s:t0, s:t11, 'NONE')
call s:hi('DiffDelete', s:g15, s:g9, s:g9, 'bold', s:t15, s:t9, 'NONE')
call s:hi('DiffText', s:g0, s:g11, s:g11, 'bold', s:t0, s:t11, 'underline')
call s:hi('Directory', s:g4, 'NONE', 'NONE', 'NONE', s:t4, 'NONE', 'NONE')
call s:hi('EndOfBuffer', s:g7, s:g15, 'NONE', 'NONE', s:t7, s:t15, 'NONE')
call s:hi('Error', s:g0, s:g9, 'NONE', 'bold', s:t0, s:t9, 'underline')
call s:hi('ErrorMsg', s:g9, 'NONE', 'NONE', 'NONE', s:t9, 'NONE', 'NONE')
call s:hi('Exception', s:g4, 'NONE', 'NONE', 'NONE', s:t4, 'NONE', 'NONE')
call s:hi('Float', s:g3, 'NONE', 'NONE', 'NONE', s:t3, 'NONE', 'NONE')
call s:hi('FoldColumn', s:g6, s:g8, 'NONE', 'NONE', s:t6, s:t8, 'NONE')
call s:hi('Folded', s:g6, 'NONE', 'NONE', 'NONE', s:t6, 'NONE', 'NONE')
call s:hi('Function', s:g1, 'NONE', 'NONE', 'NONE', s:t1, 'NONE', 'NONE')
call s:hi('Identifier', s:g1, 'NONE', 'NONE', 'NONE', s:t1, 'NONE', 'NONE')
call s:hi('Ignore', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('IncSearch', s:g0, s:g10, s:g10, 'NONE', s:t0, s:t10, 'NONE')
call s:hi('Include', s:g2, 'NONE', 'NONE', 'NONE', s:t2, 'NONE', 'NONE')
call s:hi('Keyword', s:g4, 'NONE', 'NONE', 'NONE', s:t4, 'NONE', 'NONE')
call s:hi('Label', s:g4, 'NONE', 'NONE', 'NONE', s:t4, 'NONE', 'NONE')
call s:hi('LineNr', s:g8, 'NONE', 'NONE', 'NONE', s:t8, 'NONE', 'NONE')
call s:hi('Macro', s:g2, 'NONE', 'NONE', 'NONE', s:t2, 'NONE', 'NONE')
call s:hi('MatchParen', s:g15, s:g13, s:g13, 'bold', s:t15, s:t13, 'bold')
call s:hi('ModeMsg', s:g12, 'NONE', 'NONE', 'NONE', s:t12, 'NONE', 'NONE')
call s:hi('MoreMsg', s:g6, 'NONE', 'NONE', 'NONE', s:t6, 'NONE', 'NONE')
call s:hi('NonText', s:g7, 'NONE', 'NONE', 'NONE', s:t7, 'NONE', 'NONE')
call s:hi('Normal', s:g0, s:g15, 'NONE', 'NONE', s:t0, s:t15, 'NONE')
call s:hi('Number', s:g3, 'NONE', 'NONE', 'NONE', s:t3, 'NONE', 'NONE')
call s:hi('Operator', s:g4, 'NONE', 'NONE', 'NONE', s:t4, 'NONE', 'NONE')
call s:hi('Pmenu', s:g15, s:g5, 'NONE', 'NONE', s:t15, s:t5, 'NONE')
call s:hi('PmenuSbar', 'NONE', s:g5, 'NONE', 'NONE', 'NONE', s:t5, 'NONE')
call s:hi('PmenuSel', s:g15, s:g13, 'NONE', 'NONE', s:t15, s:t13, 'NONE')
call s:hi('PmenuThumb', 'NONE', s:g6, 'NONE', 'NONE', s:t0, s:t6, 'NONE')
call s:hi('PreCondit', s:g2, 'NONE', 'NONE', 'NONE', s:t2, 'NONE', 'NONE')
call s:hi('PreProc', s:g2, 'NONE', 'NONE', 'NONE', s:t2, 'NONE', 'NONE')
call s:hi('Question', s:g0, 'NONE', 'NONE', 'bold', s:t0, 'NONE', 'bold')
call s:hi('Repeat', s:g12, 'NONE', 'NONE', 'NONE', s:t12, 'NONE', 'NONE')
call s:hi('Search', s:g15, s:g2, s:g2, 'NONE', s:t15, s:t2, 'NONE')
call s:hi('SignColumn', s:g6, s:g8, 'NONE', 'NONE', s:t6, s:t8, 'NONE')
call s:hi('Special', s:g5, 'NONE', 'NONE', 'NONE', s:t5, 'NONE', 'NONE')
call s:hi('SpecialChar', s:g5, 'NONE', 'NONE', 'NONE', s:t5, 'NONE', 'NONE')
call s:hi('SpecialComment', s:g5, 'NONE', 'NONE', 'NONE', s:t5, 'NONE', 'NONE')
call s:hi('SpecialKey', s:g13, 'NONE', 'NONE', 'NONE', s:t13, 'NONE', 'NONE')
call s:hi('SpellBad', 'NONE', 'NONE', s:g9, 'undercurl', s:t1, s:t7, 'underline')
call s:hi('SpellCap', 'NONE', 'NONE', s:g12, 'undercurl', s:t4, s:t7, 'underline')
call s:hi('SpellLocal', 'NONE', 'NONE', s:g6, 'undercurl', s:t6, s:t7, 'underline')
call s:hi('SpellRare', 'NONE', 'NONE', s:g8, 'undercurl', s:t8, s:t7, 'underline')
call s:hi('Statement', s:g4, 'NONE', 'NONE', 'NONE', s:t4, 'NONE', 'NONE')
call s:hi('StatusLine', s:g15, s:g8, 'NONE', 'NONE', s:t15, s:t8, 'NONE')
call s:hi('StatusLineNC', s:g7, s:g8, 'NONE', 'NONE', s:t7, s:t8, 'NONE')
call s:hi('StorageClass', s:g5, 'NONE', 'NONE', 'NONE', s:t5, 'NONE', 'NONE')
call s:hi('String', s:g3, 'NONE', 'NONE', 'NONE', s:t3, 'NONE', 'NONE')
call s:hi('Structure', s:g5, 'NONE', 'NONE', 'NONE', s:t5, 'NONE', 'NONE')
call s:hi('TabLine', s:g7, s:g0, 'NONE', 'NONE', s:t7, s:t0, 'NONE')
call s:hi('TabLineFill', 'NONE', s:g0, 'NONE', 'NONE', 'NONE', s:t0, 'NONE')
call s:hi('TabLineSel', s:g15, s:g0, 'NONE', 'NONE', s:t15, s:t0, 'NONE')
call s:hi('Tag', s:g5, 'NONE', 'NONE', 'NONE', s:t5, 'NONE', 'NONE')
call s:hi('Title', 'NONE', 'NONE', 'NONE', 'bold', 'NONE', 'NONE', 'bold')
call s:hi('Todo', s:g0, s:g11, 'NONE', 'bold', s:t0, s:t11, 'underline')
call s:hi('Type', s:g5, 'NONE', 'NONE', 'NONE', s:t5, 'NONE', 'NONE')
call s:hi('Typedef', s:g5, 'NONE', 'NONE', 'NONE', s:t5, 'NONE', 'NONE')
call s:hi('Underlined', 'NONE', 'NONE', 'NONE', 'underline', 'NONE', 'NONE', 'underline')
call s:hi('VertSplit', s:g7, s:g8, 'NONE', 'NONE', s:t7, s:t8, 'NONE')
call s:hi('Visual', s:g15, s:g12, s:g12, 'NONE', s:t15, s:t12, 'NONE')
call s:hi('VisualNOS', s:g7, s:g4, s:g4, 'NONE', s:t7, s:t4, 'NONE')
call s:hi('WarningMsg', s:g13, 'NONE', 'NONE', 'NONE', s:t13, 'NONE', 'NONE')
call s:hi('WildMenu', s:g11, s:g8, 'NONE', 'NONE', s:t11, s:t8, 'NONE')

if exists('g:colorscheme_messy_transparent') && g:colorscheme_messy_transparent
    call s:hi('EndOfBuffer', s:g8, 'NONE', 'NONE', 'NONE', s:t8, 'NONE', 'NONE')
    call s:hi('Normal', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
    call s:hi('Question', 'NONE', 'NONE', 'NONE', 'bold', 'NONE', 'NONE', 'bold')
endif
