" Vim color file
" Name:     Messy
" Date:     Monday, April 23, 2018
" Author:   Jak Wings <jakwings@gmail.com>
" Credits:  Thanks to http://bytefluent.com/vivify/

set background=light

if version > 580
    if exists('syntax_on')
        syntax reset
    endif
endif

let g:colors_name = 'messy'

if exists('g:colorscheme_messy_inverse') && g:colorscheme_messy_inverse
    let [s:bg1, s:bg2, s:fg1, s:fg2] = ['#000000', '0', '#ffffff', '15']
else
    let [s:bg1, s:bg2, s:fg1, s:fg2] = ['#ffffff', '15', '#000000', '0']
endif

function! s:hi(name, guifg, guibg, guisp, gui, ctermfg, ctermbg, cterm)
    exec 'hi ' . a:name
                \ . ' guifg=' . a:guifg . ' guibg=' . a:guibg
                \ . ' guisp=' . a:guisp . ' gui=' . a:gui
                \ . ' ctermfg=' . a:ctermfg . ' ctermbg=' . a:ctermbg
                \ . ' cterm=' . a:cterm
endfunction

call s:hi('Boolean', '#808000', 'NONE', 'NONE', 'NONE', '3', 'NONE', 'NONE')
call s:hi('Character', '#808000', 'NONE', 'NONE', 'NONE', '3', 'NONE', 'NONE')
call s:hi('ColorColumn', s:fg1, '#c0c0c0', s:fg1, 'NONE', s:fg2, '7', 'NONE')
call s:hi('Comment', '#808080', 'NONE', 'NONE', 'NONE', '8', 'NONE', 'NONE')
call s:hi('Conceal', '#ff00ff', 'NONE', 'NONE', 'NONE', '13', 'NONE', 'NONE')
call s:hi('Conditional', '#000080', 'NONE', 'NONE', 'NONE', '4', 'NONE', 'NONE')
call s:hi('Constant', '#808000', 'NONE', 'NONE', 'NONE', '3', 'NONE', 'NONE')
call s:hi('Cursor', s:bg1, '#0000ff', '#0000ff', 'NONE', s:bg2, '12', 'NONE')
call s:hi('CursorColumn', s:bg1, '#008080', s:bg1, 'NONE', s:bg2, '6', 'NONE')
call s:hi('CursorLine', s:bg1, '#008080', s:bg1, 'NONE', s:bg2, '6', 'NONE')
call s:hi('CursorLineNr', s:bg1, '#008080', 'NONE', 'NONE', s:bg2, '6', 'NONE')
call s:hi('Debug', '#800080', 'NONE', 'NONE', 'NONE', '5', 'NONE', 'NONE')
call s:hi('Define', '#800080', 'NONE', 'NONE', 'NONE', '5', 'NONE', 'NONE')
call s:hi('Delimiter', '#800080', 'NONE', 'NONE', 'NONE', '5', 'NONE', 'NONE')
call s:hi('DiffAdd', s:bg1, '#008000', '#008000', 'bold', s:bg2, '2', 'NONE')
call s:hi('DiffChange', s:fg1, '#ffff00', '#ffff00', 'NONE', s:fg2, '11', 'NONE')
call s:hi('DiffDelete', s:bg1, '#ff0000', '#ff0000', 'bold', s:bg2, '9', 'NONE')
call s:hi('DiffText', s:fg1, '#ffff00', '#ffff00', 'bold', s:fg2, '11', 'underline')
call s:hi('Directory', '#000080', 'NONE', 'NONE', 'NONE', '4', 'NONE', 'NONE')
call s:hi('EndOfBuffer', '#c0c0c0', s:bg1, 'NONE', 'NONE', '7', s:bg2, 'NONE')
call s:hi('Error', s:fg1, '#ff0000', 'NONE', 'bold', s:fg2, '9', 'underline')
call s:hi('ErrorMsg', '#ff0000', 'NONE', 'NONE', 'NONE', '9', 'NONE', 'NONE')
call s:hi('Exception', '#000080', 'NONE', 'NONE', 'NONE', '4', 'NONE', 'NONE')
call s:hi('Float', '#808000', 'NONE', 'NONE', 'NONE', '3', 'NONE', 'NONE')
call s:hi('FoldColumn', '#008080', '#808080', 'NONE', 'NONE', '6', '8', 'NONE')
call s:hi('Folded', '#008080', 'NONE', 'NONE', 'NONE', '6', 'NONE', 'NONE')
call s:hi('Function', '#800000', 'NONE', 'NONE', 'NONE', '1', 'NONE', 'NONE')
call s:hi('Identifier', '#800000', 'NONE', 'NONE', 'NONE', '1', 'NONE', 'NONE')
call s:hi('Ignore', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:hi('IncSearch', s:fg1, '#00ff00', '#00ff00', 'NONE', s:fg2, '10', 'NONE')
call s:hi('Include', '#008000', 'NONE', 'NONE', 'NONE', '2', 'NONE', 'NONE')
call s:hi('Keyword', '#000080', 'NONE', 'NONE', 'NONE', '4', 'NONE', 'NONE')
call s:hi('Label', '#000080', 'NONE', 'NONE', 'NONE', '4', 'NONE', 'NONE')
call s:hi('LineNr', '#808080', 'NONE', 'NONE', 'NONE', '8', 'NONE', 'NONE')
call s:hi('Macro', '#008000', 'NONE', 'NONE', 'NONE', '2', 'NONE', 'NONE')
call s:hi('MatchParen', s:bg1, '#ff00ff', '#ff00ff', 'bold', s:bg2, '13', 'bold')
call s:hi('ModeMsg', '#0000ff', 'NONE', 'NONE', 'NONE', '12', 'NONE', 'NONE')
call s:hi('MoreMsg', '#008080', 'NONE', 'NONE', 'NONE', '6', 'NONE', 'NONE')
call s:hi('NonText', '#c0c0c0', 'NONE', 'NONE', 'NONE', '7', 'NONE', 'NONE')
call s:hi('Normal', s:fg1, s:bg1, 'NONE', 'NONE', s:fg2, s:bg2, 'NONE')
call s:hi('Number', '#808000', 'NONE', 'NONE', 'NONE', '3', 'NONE', 'NONE')
call s:hi('Operator', '#000080', 'NONE', 'NONE', 'NONE', '4', 'NONE', 'NONE')
call s:hi('Pmenu', s:bg1, '#800080', 'NONE', 'NONE', s:bg2, '5', 'NONE')
call s:hi('PmenuSbar', 'NONE', '#800080', 'NONE', 'NONE', 'NONE', '5', 'NONE')
call s:hi('PmenuSel', s:bg1, '#ff00ff', 'NONE', 'NONE', s:bg2, '13', 'NONE')
call s:hi('PmenuThumb', 'NONE', '#008080', 'NONE', 'NONE', s:fg2, '6', 'NONE')
call s:hi('PreCondit', '#008000', 'NONE', 'NONE', 'NONE', '2', 'NONE', 'NONE')
call s:hi('PreProc', '#008000', 'NONE', 'NONE', 'NONE', '2', 'NONE', 'NONE')
call s:hi('Question', s:fg1, 'NONE', 'NONE', 'bold', s:fg2, 'NONE', 'bold')
call s:hi('Repeat', '#0000ff', 'NONE', 'NONE', 'NONE', '12', 'NONE', 'NONE')
call s:hi('Search', s:bg1, '#008000', '#008000', 'NONE', s:bg2, '2', 'NONE')
call s:hi('SignColumn', '#008080', '#808080', 'NONE', 'NONE', '6', '8', 'NONE')
call s:hi('Special', '#800080', 'NONE', 'NONE', 'NONE', '5', 'NONE', 'NONE')
call s:hi('SpecialChar', '#800080', 'NONE', 'NONE', 'NONE', '5', 'NONE', 'NONE')
call s:hi('SpecialComment', '#800080', 'NONE', 'NONE', 'NONE', '5', 'NONE', 'NONE')
call s:hi('SpecialKey', '#ff00ff', 'NONE', 'NONE', 'NONE', '13', 'NONE', 'NONE')
call s:hi('SpellBad', 'NONE', 'NONE', '#ff0000', 'undercurl', '1', '7', 'underline')
call s:hi('SpellCap', 'NONE', 'NONE', '#0000ff', 'undercurl', '4', '7', 'underline')
call s:hi('SpellLocal', 'NONE', 'NONE', '#008080', 'undercurl', '6', '7', 'underline')
call s:hi('SpellRare', 'NONE', 'NONE', '#808080', 'undercurl', '8', '7', 'underline')
call s:hi('Statement', '#000080', 'NONE', 'NONE', 'NONE', '4', 'NONE', 'NONE')
call s:hi('StatusLine', s:bg1, '#808080', 'NONE', 'NONE', s:bg2, '8', 'NONE')
call s:hi('StatusLineNC', '#c0c0c0', '#808080', 'NONE', 'NONE', '7', '8', 'NONE')
call s:hi('StorageClass', '#800080', 'NONE', 'NONE', 'NONE', '5', 'NONE', 'NONE')
call s:hi('String', '#808000', 'NONE', 'NONE', 'NONE', '3', 'NONE', 'NONE')
call s:hi('Structure', '#800080', 'NONE', 'NONE', 'NONE', '5', 'NONE', 'NONE')
call s:hi('TabLine', '#c0c0c0', s:fg1, 'NONE', 'NONE', '7', s:fg2, 'NONE')
call s:hi('TabLineFill', 'NONE', s:fg1, 'NONE', 'NONE', 'NONE', s:fg2, 'NONE')
call s:hi('TabLineSel', s:bg1, s:fg1, 'NONE', 'NONE', s:bg2, s:fg2, 'NONE')
call s:hi('Tag', '#800080', 'NONE', 'NONE', 'NONE', '5', 'NONE', 'NONE')
call s:hi('Title', 'NONE', 'NONE', 'NONE', 'bold', 'NONE', 'NONE', 'bold')
call s:hi('Todo', s:fg1, '#ffff00', 'NONE', 'bold', s:fg2, '11', 'underline')
call s:hi('Type', '#800080', 'NONE', 'NONE', 'NONE', '5', 'NONE', 'NONE')
call s:hi('Typedef', '#800080', 'NONE', 'NONE', 'NONE', '5', 'NONE', 'NONE')
call s:hi('Underlined', 'NONE', 'NONE', 'NONE', 'underline', 'NONE', 'NONE', 'underline')
call s:hi('VertSplit', '#c0c0c0', '#808080', 'NONE', 'NONE', '7', '8', 'NONE')
call s:hi('Visual', s:bg1, '#0000ff', '#0000ff', 'NONE', s:bg2, '12', 'NONE')
call s:hi('VisualNOS', '#c0c0c0', '#000080', '#000080', 'NONE', '7', '4', 'NONE')
call s:hi('WarningMsg', '#ff00ff', 'NONE', 'NONE', 'NONE', '13', 'NONE', 'NONE')
call s:hi('WildMenu', '#ffff00', '#808080', 'NONE', 'NONE', '11', '8', 'NONE')

if exists('g:colorscheme_messy_transparent') && g:colorscheme_messy_transparent
    call s:hi('EndOfBuffer', '#808080', 'NONE', 'NONE', 'NONE', '8', 'NONE', 'NONE')
    call s:hi('Normal', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
    call s:hi('Question', 'NONE', 'NONE', 'NONE', 'bold', 'NONE', 'NONE', 'bold')
endif
