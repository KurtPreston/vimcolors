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
    let turquoise = {'gui': '#008787', 'cterm': '30'}
    let lightcyan = {'gui': '#d7ffff', 'cterm': '195'}
    let indianred = {'gui': '#d75f5f', 'cterm': '167'}
    let palegreen = {'gui': '#5fd75f', 'cterm': '77'}
    let deepskyblue = {'gui': '#005f5f', 'cterm': '23'}
    let lightgreen = {'gui': '#87ff87' , 'cterm': '120'}
    let darkseagreen = {'gui': '#d7ffaf', 'cterm': '193'}
    let honeydew = {'gui': '#d7ffd7', 'cterm': '194'}
    let lightseagreen = {'gui': '#00afaf', 'cterm': '37'}
    let hotpink = {'gui': '#d75f5f', 'cterm': '168'}
    let deeppink = {'gui': '#d7005f', 'cterm': '161'}
    let lightcoral = {'gui': '#ff8787', 'cterm': '210'}
    let magenta = {'gui': '#af00af', 'cterm': '127'}
    let orangered = {'gui': '#ff5f00', 'cterm': '202'}
    let sandybrown = {'gui': '#ffaf5f', 'cterm': '215'}
    let mistyrose = {'gui': '#d7afaf', 'cterm': '181'}
    let lightcyan = {'gui': '#afd7d7', 'cterm': '152'}
    let cadetblue = {'gui': '#5fafaf', 'cterm': '73'}
    let chartreuse = {'gui': '#5faf00', 'cterm': '70'}
    let cyan = {'gui': '#00d7af', 'cterm': '43'}
    let lightgoldenrod = {'gui': '#d7af5f', 'cterm': '179'}
    let plum = {'gui': '#d787d7', 'cterm': '176'}
    let steelblue = {'gui': '#5fafff', 'cterm': '75'}
    let rosybrown = {'gui': '#af8787', 'cterm': '138'}
    let mediumturquoise = {'gui': '#5fd7d7', 'cterm': '80'}
    let cornflowerblue = {'gui': '#5f87ff', 'cterm': '69'}
    let khaki = {'gui': '#d7d75f', 'cterm': '185'}
    let salmon = {'gui': '#ff875f', 'cterm': '209'}
    let darkerseagreen = {'gui': '#afd787', 'cterm': '150'}
    let springgreen = {'gui': '#00af5f', 'cterm': '35'}
    let lightyellow = {'gui': '#d7d7af', 'cterm': '187'}
    let lightsalmon = {'gui': '#ffaf87', 'cterm': '175'}

    let none           = {'gui': 'NONE',      'cterm': 'NONE'}
    let bold           = {'gui': 'bold',      'cterm': 'bold'}
    let italic         = {'gui': 'italic',    'cterm': 'italic'}
    let underline      = {'gui': 'underline', 'cterm': 'underline'}
    let undercurl      = {'gui': 'undercurl', 'cterm': 'underline'}
    let boldcurl       = {'gui': 'bold,undercurl', 'cterm': 'bold,underline'}
    let boldunderline  = {'gui': 'bold,underline', 'cterm': 'bold,underline'}
    let bolditalic = {'gui': 'bold,italic', 'cterm':'bold,italic'}

    let highlight_group = {}

    let highlight_group.Normal = [deepskyblue, darkseagreen, none, none]
    let highlight_group.Visual = [none, palegreen, none, none]
    " Cursor
    let highlight_group.Cursor = [deepskyblue, lightcoral, none, none]
    if &cursorline
        let highlight_group.CursorLine = [none, lightyellow, none, none]
        let highlight_group.CursorLineNr = [lightcoral, lightyellow, bolditalic, none]
    else
        let highlight_group.CursorLineNr = [lightcoral, none, bolditalic, none]
    endif

    " Sidebar
    let highlight_group.LineNr = [salmon, darkerseagreen, bold, none]

    " Folds
    let highlight_group.Folded = [cadetblue, honeydew, none, none]

    let highlight_group.MatchParen = [lightcoral, cyan, none, none]

    " Syntax groups
    let highlight_group.Comment = [lightseagreen, none, italic, none]
    let highlight_group.Identifier = [lightgoldenrod, none, none, none]
    let highlight_group.Statement = [cadetblue, none, bold, none]
    let highlight_group.Function = [lightcoral, none, bold, none]
    let highlight_group.Constant = [steelblue, none, none, none]
    let highlight_group.String = [cornflowerblue, none, italic, none]
    let highlight_group.Number = [chartreuse, none, none, none]
    let highlight_group.Type = [lightsalmon, none, none, none]
    let highlight_group.Special = [hotpink, none, none, none]
    let highlight_group.PreProc = [salmon, none, bold, none]
    let highlight_group.Todo = [cadetblue, honeydew, bold, none]
    let highlight_group.Error = [honeydew, deeppink, bold, none]
    let highlight_group.Underlined = [khaki, none, underline, none]
 

    let highlight_group.ModeMsg = [lightcoral, none, bold, none]
    let highlight_group.SpecialKey = [deepskyblue, none, none, none]

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
