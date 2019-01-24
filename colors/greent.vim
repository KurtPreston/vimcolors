" -------------------------------------
" Name: greent.vim
" Description: A colorscheme for vim
" Author: Aaron Moser


" Clear highlights
highlight clear

" Clear old syntax definitions
if exists('syntax_on')
    syntax reset
endif

" Set theme name
let g:colors_name = 'greent'

function! s:set() abort
    let deepskyblue     = {'gui': "#005f5f" ,'cterm':        '23'}
    let darkseagreen    = {'gui': "#d7ffaf" ,'cterm':        '193'}
    let honeydew        = {'gui': "#d7ffd7" ,'cterm':        '194'}
    let lightseagreen   = {'gui': "#00afaf" ,'cterm':        '37'}
    let hotpink         = {'gui': "#d75f5f" ,'cterm':        '168'}
    let deeppink        = {'gui': "#d7005f" ,'cterm':        '161'}
    let lightcoral      = {'gui': "#ff8787" ,'cterm':        '210'}
    let cadetblue       = {'gui': "#5fafaf" ,'cterm':        '73'}
    let chartreuse      = {'gui': "#5faf00" ,'cterm':        '70'}
    let lightgoldenrod  = {'gui': "#d7af5f" ,'cterm':        '179'}
    let steelblue       = {'gui': "#5fafff" ,'cterm':        '75'}
    let cornflowerblue  = {'gui': "#5f87ff" ,'cterm':        '69'}
    let khaki           = {'gui': "#d7d75f" ,'cterm':        '185'}
    let salmon          = {'gui': "#FFA98C" ,'cterm':        '209'}
    let darkerseagreen  = {'gui': "#afd787" ,'cterm':        '150'}
    let lightpink       = {'gui': "#d7d7af" ,'cterm':        '187'}
    let lightsalmon     = {'gui': "#ffaf87" ,'cterm':        '175'}
    let darkestseagreen = {'gui': "#5faf5f" ,'cterm':        '71'}

    let none            = {'gui': "NONE",      "cterm":      "NONE"}
    let bold            = {'gui': "bold",      "cterm":      "bold"}
    let italic          = {'gui': "italic",    "cterm":      "italic"}
    let underline       = {'gui': "underline", "cterm":      "underline"}
    let undercurl       = {'gui': "undercurl", "cterm":      "underline"}
    let boldcurl        = {'gui': "bold,undercurl", "cterm": "bold,underline"}
    let boldunderline   = {'gui': "bold,underline", "cterm": "bold,underline"}
    let bolditalic      = {'gui': "bold,italic", "cterm":    "bold,italic"}

    let highlight_group = {}

    " General
    let highlight_group.Normal       = [deepskyblue, darkseagreen, none, none]
    let highlight_group.Visual       = [honeydew, darkestseagreen, bold, none]
    let highlight_group.ColorColumn  = [none, honeydew, none, none]
    let highlight_group.SignColumn   = [deeppink, none, none, none]
    let highlight_group.IncSearch    = [deepskyblue, hotpink, none, none]
    let highlight_group.Search       = [deepskyblue, lightpink, none, none]
    let highlight_group.ModeMsg      = [lightcoral, none, bold, none]
    let highlight_group.SpecialKey   = [darkerseagreen, lightpink, none, none]
    let highlight_group.Directory    = [cadetblue, none, none, none]
    let highlight_group.Title        = [none, none, bold, none]
    let highlight_group.WarningMsg   = [lightgoldenrod, lightpink, bold, none]
    let highlight_group.ErrorMsg     = [honeydew, hotpink, bold, none]
    let highlight_group.EndOfBuffer  = [lightpink, none, bold, none]

    " Cursor
    let highlight_group.Cursor       = [lightcoral, none, none, none]
    let highlight_group.CursorColumn = [none, honeydew, none, none]
    let highlight_group.CursorLine   = [none, honeydew, none, none]
    let highlight_group.CursorLineNr = [lightgoldenrod, none, bold, none]

    " Sidebar
    let highlight_group.LineNr       = [honeydew, darkerseagreen, none, none]

    " Folds
    let highlight_group.Folded       = [cadetblue, honeydew, none, none]
    let highlight_group.MatchParen   = [hotpink, lightpink, none, none]

    " Syntax groups
    let highlight_group.Comment      = [lightseagreen, none, none, none]
    let highlight_group.Identifier   = [lightgoldenrod, none, none, none]
    let highlight_group.Statement    = [cadetblue, none, bold, none]
    let highlight_group.Function     = [lightcoral, none, bold, none]
    let highlight_group.Constant     = [steelblue, none, none, none]
    let highlight_group.String       = [cornflowerblue, none, none, none]
    let highlight_group.Number       = [chartreuse, none, none, none]
    let highlight_group.Type         = [cornflowerblue, none, bold, none]
    let highlight_group.Special      = [hotpink, none, none, none]
    let highlight_group.PreProc      = [salmon, none, bold, none]
    let highlight_group.Todo         = [cadetblue, honeydew, bold, none]
    let highlight_group.Error        = [honeydew, deeppink, bold, none]
    let highlight_group.Underlined   = [lightcoral, none, underline, none]

    " Tabs
    let highlight_group.TabLineSel   = [deepskyblue, honeydew, bold, none]
    let highlight_group.TabLineFill  = [deepskyblue, darkerseagreen, none, none]
    let highlight_group.TabLine      = [deepskyblue, darkseagreen, none, none]
 
    " Diff
    let highlight_group.DiffAdd     = [deepskyblue, chartreuse, none, none]
    let highlight_group.DiffChange  = [deepskyblue, lightgoldenrod, none, none]
    let highlight_group.DiffDelte   = [deepskyblue, hotpink, none, none]
    let highlight_group.DiffText    = [deepskyblue, darkerseagreen, none, none]

    " Spelling
    let highlight_group.SpellBad     = [hotpink, none, underline, none]
    let highlight_group.SpellCap     = [lightpink, none, underline, none]
    let highlight_group.SpellLocal   = [chartreuse, none, underline, none]
    let highlight_group.SpellRare    = [cadetblue, none, underline, none]

    for [group, colors] in items(highlight_group)
        execute printf('highlight %s guifg=%s guibg=%s gui=%s, guisp=%s ctermfg=%s ctermbg=%s cterm=%s',
                        \ group,
                        \ colors[0]['gui'],
                        \ colors[1]['gui'],
                        \ colors[2]['gui'],
                        \ colors[3]['gui'],
                        \ colors[0]['cterm'],
                        \ colors[1]['cterm'],
                        \ colors[2]['cterm']
                        \ )
    endfor
endfunction
call s:set()

" NERDTree
hi link NerdTreeCWD         Character
hi link NerdTreeHelpKey     Character
hi link NerdTreeHelpTitle   Statement
hi link NerdTreeOpenable    Comment
hi link NerdTreeClosable    Special
hi link NerdTreeDir         Statement
hi link NerdTreeDirSlash    Identifier
