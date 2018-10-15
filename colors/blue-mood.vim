" Vim color file
" blue-mood
" Created by lmintmate with the help of ThemeCreator (https://github.com/mswift42/themecreator)

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors
" :highlight

hi clear

if exists("syntax on")
syntax reset
endif

set t_Co=256
let g:colors_name = "blue-mood"


" Define reusable colorvariables.
let s:dodgerblue4="#104e8b"
let s:whitesmoke="#f5f5f5"
let s:fg2="#e1e1e1"
let s:fg3="#cecece"
let s:fg4="#bababa"
let s:bg2="#235c94"
let s:bg3="#366a9e"
let s:bg4="#4978a7"
let s:gold="#ffd700"
let s:wheat="#f5deb3"
let s:cyan= "#00ffff"
let s:gray72="#b8b8b8"
let s:func="#7fff00"
let s:tomato="#ff6347"
let s:type="#7fff00"
let s:cyan3="#00cdcd"
let s:red="#ff0000"
let s:warning2="#ff8800"
let s:yellow="#ffff00"
let s:ffb90f="#ffb90f"
let s:steelblue3="#4f94cd"
let s:black="#000000"
let s:bfbfbf="#bfbfbf"
let s:darkgray="#4d4d4d"
let s:lightgray="#cccccc"
let s:blue4="#00008b"
let s:goldenrod="#daa520"

exe 'hi Normal guifg='s:whitesmoke' guibg='s:dodgerblue4 
exe 'hi Cursor guifg='s:dodgerblue4' guibg='s:ffb90f 
exe 'hi CursorLine  guibg='s:bg2 
exe 'hi CursorColumn  guibg='s:bg2 
exe 'hi ColorColumn  guibg='s:bg2 
exe 'hi LineNr guifg='s:gray72' guibg='s:dodgerblue4 
exe 'hi CursorLineNr guifg='s:gray72' guibg='s:dodgerblue4' gui=bold cterm=bold' 
exe 'hi VertSplit guifg='s:dodgerblue4' guibg='s:gray72 
exe 'hi MatchParen guifg='s:whitesmoke'  guibg='s:steelblue3
exe 'hi StatusLine guifg='s:black' guibg='s:bfbfbf' gui=NONE cterm=NONE'
exe 'hi StatusLineNC guifg='s:lightgray' guibg='s:darkgray' gui=NONE cterm=NONE'
exe 'hi StatusLineTerm guifg='s:blue4' guibg='s:goldenrod' gui=NONE cterm=NONE'
exe 'hi StatusLineTermNC guifg='s:gray72' guibg='s:bg2
exe 'hi Pmenu guifg='s:whitesmoke' guibg='s:bg2
exe 'hi PmenuSel  guibg='s:bg3
exe 'hi PmenuSbar  guibg='s:bg2 
exe 'hi PmenuThumb guibg='s:bg3
exe 'hi IncSearch guifg='s:red' guibg='s:yellow
exe 'hi Visual guifg='s:yellow' guibg='s:red 
exe 'hi Search   guifg='s:red' guibg='s:yellow
exe 'hi Directory guifg='s:cyan  
exe 'hi Folded guifg='s:gray72' guibg='s:dodgerblue4 
exe 'hi FoldColumn guifg='s:gray72' guibg='s:dodgerblue4 
exe 'hi ModeMsg guifg='s:whitesmoke
exe 'hi MoreMsg guifg='s:whitesmoke' cterm=bold'
exe 'hi Question guifg='s:whitesmoke
exe 'hi WildMenu guifg='s:red' guibg='s:yellow' gui=bold cterm=bold'
exe 'hi TabLine      guifg='s:bfbfbf' guibg='s:black' gui=reverse cterm=reverse'
exe 'hi TabLineFill  guifg='s:bfbfbf' guibg='s:lightgray
exe 'hi TabLineSel   guifg='s:black' guibg='s:bfbfbf' gui=bold'
exe 'hi SignColumn guibg='s:dodgerblue4
exe 'hi SpellCap guisp='s:gold

exe 'hi Boolean guifg='s:cyan3' gui=bold cterm=bold'  
exe 'hi Character guifg='s:cyan  
exe 'hi Comment guifg='s:gray72' gui=bold cterm=bold' 
exe 'hi Conditional guifg='s:gold  
exe 'hi Constant guifg='s:cyan 
exe 'hi Debug guifg='s:whitesmoke 
exe 'hi Define guifg='s:gold 
exe 'hi Delimiter guifg='s:whitesmoke 
exe 'hi ErrorMsg guifg='s:whitesmoke' guibg='s:red' gui=bold cterm=bold'
exe 'hi WarningMsg guifg='s:gold' gui=bold cterm=bold' 
exe 'hi Exception guifg='s:gold
exe 'hi Float guifg='s:cyan  
exe 'hi Function guifg='s:func' gui=bold cterm=bold'  
exe 'hi Identifier guifg='s:gold' gui=bold cterm=bold'
exe 'hi Keyword guifg='s:gold'  gui=bold cterm=bold'
exe 'hi Label guifg='s:cyan3
exe 'hi Macro guifg='s:gold' gui=bold cterm=bold'
exe 'hi NonText guifg='s:steelblue3' guibg='s:dodgerblue4 
exe 'hi EndOfBuffer guifg='s:steelblue3' guibg='s:dodgerblue4 
exe 'hi Number guifg='s:cyan  
exe 'hi Operator guifg='s:gold  
exe 'hi PreProc guifg='s:gold
exe 'hi PreCondit guifg='s:gold
exe 'hi Include guifg='s:gold
exe 'hi Repeat guifg='s:gold  
exe 'hi Special guifg='s:whitesmoke 
exe 'hi SpecialChar guifg='s:whitesmoke 
exe 'hi SpecialComment guifg='s:gray72' gui=bold cterm=bold'
exe 'hi SpecialKey guifg='s:steelblue3' guibg='s:dodgerblue4 
exe 'hi Statement guifg='s:gold  
exe 'hi StorageClass guifg='s:type
exe 'hi String guifg='s:tomato 
exe 'hi Structure guifg='s:type 
exe 'hi Tag guifg='s:gold  
exe 'hi Title guifg='s:func'  gui=bold cterm=bold'
exe 'hi Todo guifg='s:wheat'  guibg='s:dodgerblue4' gui=bold cterm=bold'
exe 'hi Type guifg='s:type 
exe 'hi Typedef guifg='s:type
exe 'hi Underlined   gui=underline'

exe 'hi DiffAdd guifg='s:func' guibg='s:dodgerblue4' gui=bold cterm=bold'
exe 'hi DiffDelete guifg='s:tomato' guibg='s:dodgerblue4' gui=NONE cterm=NONE'
exe 'hi DiffChange guifg='s:whitesmoke' guibg='s:cyan3 
exe 'hi DiffText guifg='s:whitesmoke' guibg='s:steelblue3' gui=bold cterm=bold'

" Ruby Highlighting
exe 'hi rubyAttribute guifg='s:wheat
exe 'hi rubyLocalVariableOrMethod guifg='s:cyan3
exe 'hi rubyGlobalVariable guifg='s:cyan3
exe 'hi rubyInstanceVariable guifg='s:cyan3
exe 'hi rubyKeyword guifg='s:gold
exe 'hi rubyKeywordAsMethod guifg='s:gold' gui=bold cterm=bold'
exe 'hi rubyClassDeclaration guifg='s:gold' gui=bold cterm=bold'
exe 'hi rubyClass guifg='s:gold' gui=bold cterm=bold'
exe 'hi rubyNumber guifg='s:cyan

" Python Highlighting
exe 'hi pythonBuiltinFunc guifg='s:wheat

" Go Highlighting
exe 'hi goBuiltins guifg='s:wheat

" Javascript Highlighting
exe 'hi jsBuiltins guifg='s:wheat
exe 'hi jsFunction guifg='s:gold' gui=bold cterm=bold'
exe 'hi jsGlobalObjects guifg='s:type
exe 'hi jsAssignmentExps guifg='s:cyan3

" Html Highlighting
exe 'hi htmlLink guifg='s:cyan' gui=underline'
exe 'hi htmlStatement guifg='s:gold
exe 'hi htmlSpecialTagName guifg='s:gold

" Markdown Highlighting
exe 'hi mkdCode guifg='s:wheat


