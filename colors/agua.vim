if exists('syntax on')
    syntax reset
endif

set fillchars=vert:│

let g:colors_name='agua'

function! s:create_color(guicolor, ctermcolor)
    let l:obj = { 'gui': a:guicolor, 'cterm': a:ctermcolor}
    return obj
endfunction


let s:BLACK       = s:create_color('#1c1c1c', 234)
let s:BLUE        = s:create_color('#87d7ff', '117')
let s:GREEN       = s:create_color('green',   'green')
let s:GREY        = s:create_color('#b2b2b2', 240)
let s:LIGHT_GREEN = s:create_color('#87d7af', 115)
let s:PURPLE      = s:create_color('#af00ff', 1)
let s:LIGHT_GREY  = s:create_color('#262626', 235)
let s:ORANGE      = s:create_color('#fe8019', 208)
let s:PINK        = s:create_color('#fb007a', 9)
let s:RED         = s:create_color('#ff2222', 196)
let s:WHITE       = s:create_color('#e4e4e4', 254)
let s:YELLOW      = s:create_color('yellow',  'yellow')

function! s:highlight(group, style)
    execute 'highlight' a:group
                \ 'cterm=' (has_key(a:style, 'cterm') ? a:style.cterm    : 'NONE')
                \ 'ctermbg=' (has_key(a:style, 'bg')  ? a:style.bg.cterm : 'NONE')
                \ 'ctermfg=' (has_key(a:style, 'fg')  ? a:style.fg.cterm : 'NONE')
                \ 'gui=' (has_key(a:style, 'gui')     ? a:style.gui      : 'NONE')
                \ 'guibg=' (has_key(a:style, 'bg')    ? a:style.bg.gui   : 'NONE')
                \ 'guifg=' (has_key(a:style, 'fg')    ? a:style.fg.gui   : 'NONE')
                \ 'guisp=' (has_key(a:style, 'sp')    ? a:style.sp.gui   : 'NONE')
endfunction

function! s:link(new, original)
    execute 'highlight! link '. a:new . ' ' . a:original
endfunction

if has('gui_running')
    call s:highlight('SpellBad', {'gui': 'underline', 'sp': s:RED})
    call s:highlight('SpellCap', {'gui': 'underline', 'sp': s:LIGHT_GREEN})
    call s:highlight('SpellRare',{'gui': 'underline', 'sp': s:PINK})
    call s:highlight('SpellLocal', {'gui': 'underline', 'sp': s:GREEN})
else
    call s:highlight('SpellBad', {'cterm': 'underline', 'fg': s:RED})
    call s:highlight('SpellCap', {'cterm': 'underline', 'fg': s:LIGHT_GREEN})
    call s:highlight('SpellRare', {'cterm': 'underline', 'fg': s:PINK})
    call s:highlight('SpellLocal', {'cterm': 'underline', 'fg': s:GREEN})
endif

call s:highlight('Normal', {'bg': s:BLACK, 'fg': s:WHITE})
call s:highlight('Question', {'fg': s:PURPLE})
call s:highlight('Directory', {'fg': s:LIGHT_GREEN})

call s:highlight('Error', {'fg': s:WHITE, 'bg': s:RED, 'cterm': 'bold'})
call s:highlight('ErrorMsg', {'fg': s:PINK})
call s:highlight('WarningMsg', {'fg': s:PURPLE})
call s:highlight('ModeMsg', {'fg': s:ORANGE, 'cterm': 'bold', 'gui': 'bold'})
call s:link('MoreMsg', 'ModeMsg')

call s:highlight('TODO', {'fg': s:WHITE, 'bg': s:PINK, 'cterm': 'bold', 'gui': 'bold'})

call s:highlight('Comment', {'fg': s:GREY, 'bg': s:BLACK, 'gui': 'italic'})

call s:highlight('ColorColumn', {'bg': s:LIGHT_GREY })
call s:highlight('LineNr', {'fg': s:GREY })

call s:highlight('MatchParen', {'fg': s:ORANGE, 'bg': s:BLACK})

call s:highlight('Visual', {'fg': s:LIGHT_GREEN, 'bg': s:LIGHT_GREY})

call s:highlight('Cursor', {'bg': s:LIGHT_GREEN, 'fg': s:GREEN})
call s:highlight('CursorLine', {'fg': s:WHITE, 'bg': s:LIGHT_GREY })
call s:highlight('CursorColumn', {'fg': s:WHITE, 'bg': s:LIGHT_GREY })
call s:highlight('CursorLineNr', {'fg': s:LIGHT_GREEN })

call s:highlight('StatusLine', {'bg': s:BLACK, 'fg': s:LIGHT_GREEN})
call s:highlight('StatusLineNC', {'bg': s:BLACK, 'fg': s:GREY})

call s:highlight('VerticalSplit', {'bg': s:BLACK, 'fg': s:BLACK})
call s:highlight('VertSplit', {'bg': s:BLACK, 'fg': s:WHITE})

call s:highlight('NonText', {'bg': s:BLACK, 'fg': s:BLACK})

call s:highlight('Search', {'bg': s:GREY, 'fg': s:BLACK})
call s:highlight('IncSearch', {'bg': s:LIGHT_GREEN, 'fg': s:BLACK})

call s:highlight('Title', {'fg': s:LIGHT_GREEN})

call s:highlight('Folded', {'fg': s:GREEN})
call s:highlight('FoldColumn', {'bg': s:BLACK, 'fg': s:BLACK})

call s:highlight('SignColumn', {'fg': s:GREEN})

call s:highlight('TabLine', {'fg': s:GREY, 'bg': s:BLACK})
call s:highlight('TabLineSel', {'fg': s:LIGHT_GREEN, 'bg': s:BLACK})
call s:highlight('TabLineFill', {'fg': s:BLACK, 'bg': s:BLACK})


call s:highlight('DiffAdd', {'fg': s:GREEN})
call s:highlight('DiffChange', {'fg': s:YELLOW})
call s:highlight('DiffDelete', {'fg': s:RED})
call s:highlight('DiffText', {'fg': s:BLUE})
call s:link('diffAdded', 'DiffAdd')
call s:link('diffRemoved', 'DiffDelete')

call s:highlight('Pmenu', {'fg': s:WHITE, 'bg': s:BLACK})
call s:highlight('PmenuSel', {'fg': s:LIGHT_GREEN, 'bg': s:LIGHT_GREY})
call s:highlight('PmenuSbar', {'fg': s:BLACK, 'bg': s:BLACK})
call s:highlight('PmenuThumb', {'fg': s:BLACK, 'bg': s:WHITE})

call s:highlight('WildMenu', {'fg': s:ORANGE})

call s:link('Constant', 'Normal')
call s:link('Character', 'Constant')
call s:link('Number', 'Constant')
call s:link('Boolean', 'Constant')
call s:link('Float', 'Constant')
call s:link('String', 'Constant')

call s:link('Identifier', 'Normal')
call s:link('Function', 'Identifier')

call s:link('PreProc', 'Normal')
call s:link('Include', 'PreProc')
call s:link('Define', 'PreProc')
call s:link('Macro', 'PreProc')
call s:link('PreCondit', 'PreProc')

call s:link('Special', 'Normal')
call s:highlight('SpecialKey', {'fg': s:GREY})
call s:link('SpecialChar', 'Special')
call s:link('Tag', 'Special')
call s:link('Delimiter', 'Special')
call s:link('SpecialComment', 'Special')
call s:link('Debug', 'Special')

call s:link('Statement', 'Normal')
call s:link('Conditonal', 'Statement')
call s:link('Repeat', 'Statement')
call s:link('Label', 'Statement')
call s:link('Operator', 'Statement')
call s:link('Keyword', 'Statement')
call s:link('Exception', 'Statement')

call s:link('Type', 'Normal')
call s:link('StorageClass', 'Type')
call s:link('Structure', 'Type')
call s:link('Typedef', 'Type')


" Pluggins
call s:highlight('ALEErrorSign', {'fg': s:RED, 'bg': s:BLACK})
call s:highlight('ALEWarningSign', {'fg': s:ORANGE, 'bg': s:BLACK})


" FZF
call s:highlight('fzfBg', {'bg': s:BLACK})
call s:highlight('fzfWhite', {'fg': s:WHITE})
call s:highlight('fzfGrey', {'fg': s:LIGHT_GREY})
call s:highlight('fzfGreen', {'fg': s:LIGHT_GREEN})
call s:highlight('fzfOrange', {'fg': s:ORANGE})
call s:highlight('fzfBlue', {'fg': s:BLUE})
let g:fzf_colors = {
            \ 'bg': ['bg', 'fzfBg'],
            \ 'fg': ['fg', 'fzfWhite'],
            \ 'hl': ['fg', 'fzfWhite'],
            \ 'bg+': ['fg', 'fzfGrey'],
            \ 'fg+': ['fg', 'fzfGreen'],
            \ 'hl+': ['fg', 'fzfGreen'],
            \ 'info': ['fg', 'fzfGreen'],
            \ 'marker': ['fg', 'fzfMarker'],
            \ 'spinner': ['fg', 'fzfOrange'],
            \ 'prompt': ['fg', 'fzfOrange'],
            \ 'pointer': ['fg', 'fzfOrange'],
            \ 'header': ['fg', 'fzfBlue']
            \}


let g:indentLine_char = '▏'
let g:indentLine_color_term = s:LIGHT_GREY.cterm
let g:indentLine_color_gui = s:LIGHT_GREY.gui
