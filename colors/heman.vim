" --------------------------------------------------------
" File:             heman
" Maintainer:       devnul1 <d3v000@outlook.com>
" Source:           https://github.com/devnul1/heman
" Last Modified:    7 Feb 2018
" License:          MIT-License https://choosealicense.com/licenses/mit/
" --------------------------------------------------------
" For more personal customization there is a color palette
" that shows the ":highlight" groups which are linked to each color.
" --------------------------------------------------------
" PALETTE:
" RED(BG)       LINKS: ErrorMsg          TO: fg:[NONE] , bg:[#ff5e5e, 203]
" ORANGE        LINKS: PreProc           TO: fg:[#f95a00, 202]
" SALMON        LINKS: Identifier        TO: fg:[#cf8551, 173]
" YELLOW        LINKS: Statement         TO: fg:[#fccf2b, 220]
" ORCHID        LINKS: Type              TO: fg:[#e79df2, 207]
" PURPLE        LINKS: Underlined        TO: fg:[#b767fa, 135]
" GREEN         LINKS: MoreMsg           TO: fg:[#84fba2, 120]
" LIGHTBLUE     LINKS: Constant          TO: fg:[#638ffa, 69]
" DARKBLUE      LINKS: Special           TO: fg:[#2f5bc4, 26]
" BG/FG0        LINKS: Normal            TO: fg:[#babe6e8, 147] , bg:[#322f42, 236]
" FG1           LINKS: LineNr            TO: fg:[#575675, 60]
" FG2           LINKS: Conditional       TO: fg:[#dadada, 253]
"
" VERYLIGHTCYAN LINKS: Function          TO: fg:[#56b6c2, 73]
" --------------------------------------------------------
" TODO: Make everything bold ..., initialize own color palette more precise
"
" init: {{{

if !has('gui_running') && &t_Co != 256
    finish
endif

set background=dark
highlight clear

if exists ("syntax_on")
    syntax reset
endif

let g:colors_name="heman"

" }}}
" General UI: {{{

" Normal text + background
hi! Normal guifg=#bab6e8 guibg=#322f42 gui=NONE ctermfg=147 ctermbg=236 cterm=NONE

hi! NonText guifg=#575675 gui=NONE ctermfg=60 cterm=NONE
hi! link SpecialKey NonText

" Directory names, special names in listing
hi! Directory guifg=#638ffa gui=NONE ctermfg=75 cterm=NONE

" Error messages on the command line
hi! ErrorMsg guifg=#ff5e5e guibg=NONE gui=reverse ctermfg=203 ctermbg=NONE cterm=reverse

hi! Search guifg=#fccf2d guibg=NONE gui=reverse ctermfg=220 ctermbg=NONE cterm=reverse

" More prompt: -- More --
hi! MoreMsg guifg=#84fba2 gui=NONE ctermfg=120 cterm=NONE " maybe change to 41 ?!?!
" Current mode message: -- INSERT --
hi! link ModeMsg MoreMsg
" 'Press enter' prompt and yes/no questions
hi! link Question MoreMsg

" Warning messages
hi! link WarningMsg ErrorMsg

" Current match in wildmenu completion
hi! link WildMenu Search

" Titles for output from :set all, :autocmd, etc.
hi! Title guifg=#f95a00 gui=NONE ctermfg=202 cterm=NONE
hi! link Visual Title

" Match paired bracket under the cursor
hi! MatchParen guibg=#638ffa gui=NONE ctermbg=69 cterm=NONE

hi! link DiffAdd Folded
hi! link DiffChange FoldColumn
hi! DiffDelete guifg=#1a4299 guibg=#ff5e5e gui=NONE ctermfg=26 ctermbg=203 cterm=NONE
hi! link DiffText ErrorMsg
hi! SpellBad guifg=#ff5e5e gui=underline ctermfg=167 ctermbg=NONE cterm=underline
hi! SpellCap guifg=#2f5bc4 gui=underline ctermfg=26 ctermbg=NONE cterm=underline
hi! SpellRare guifg=#b767fa gui=underline ctermfg=135 ctermbg=NONE cterm=underline
hi! SpellLocal guifg=#638ffa gui=underline ctermfg=69 ctermbg=NONE cterm=underline
hi! Pmenu guifg=#322f42 guibg=#e79df2 gui=NONE ctermfg=236 ctermbg=207 cterm=NONE
hi! link PmenuSbar Pmenu
hi! link PmenuSel Pmenu
hi! link PmenuThumb Pmenu

hi! ColorColumn guibg=#ff5e5e gui=NONE ctermbg=167 cterm=NONE

" Line number of CursorLine
hi! CursorLineNr guifg=#bab6e8 guibg=NONE gui=reverse ctermfg=147 ctermbg=NONE cterm=reverse
" Screen line that the cursor is in (OFF)
hi! CursorLine guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

" }}}
" Gutter: {{{

" Line number for :number and :# commands
hi! LineNr guifg=#575675 gui=NONE ctermfg=60 cterm=NONE " LineNr heman old 244 - #808080

" Column where signs are displayed
hi! SignColumn guifg=#fb9265 gui=NONE ctermfg=209 cterm=NONE

" Line used for closed folds
hi! Folded guifg=#322f42 guibg=#638ffa gui=NONE ctermfg=236 ctermbg=69 cterm=NONE
" Column where folds are displayed
hi! FoldColumn guifg=#322f42 guibg=#2f5bc4 gui=NONE ctermfg=236 ctermbg=26 cterm=NONE

" }}}
" Cursor: {{{

" Character under cursor
hi! Cursor guibg=#ffffff ctermbg=15
" Visual mode cursor, selection
hi! link vCursor Cursor
" Input moder cursor
hi! link iCursor Cursor
" Language mapping cursor
hi! link lCursor Cursor

" }}}
" Syntax highlighting: {{{

hi! Special guifg=#2f5bc4 gui=NONE ctermfg=26 cterm=NONE
hi! link Comment LineNr
hi! link Todo Search
hi! link Error ErrorMsg

" Generic Statement
hi! Statement guifg=#fccf2b gui=NONE ctermfg=220 cterm=NONE
" if, then, else, endif, switch, etc
hi! Conditional guifg=#dadada gui=NONE ctermfg=253 cterm=NONE
" for, do, while, etc.
hi! link Repeat Conditional
" case, default, etc.
hi! link Label Identifier
" try, catch, throw
" hi! link Excetpion
" sizeof, "+", "*", etc.
hi! link Operator MoreMsg
" Variable name
hi! Identifier guifg=#cf8551 gui=NONE ctermfg=173 cterm=NONE " 167 ctermfg
" Function name
" very light cyan
hi! Function guifg=#56b6c2 gui=NONE ctermfg=73 cterm=NONE

" Generic preprocessor
hi! PreProc guifg=#f95a00 gui=NONE ctermfg=202 cterm=NONE
" Preprocessor #Include
hi! link Include PreProc
" Preprocessor #define
hi! link Define PreProc
" Same as Define
hi! link Macro PreProc
" Preprocessor #if, #else, #endif, etc
hi! link PreCondit PreProc

" Generic Constant
hi! Constant guifg=#638ffa gui=NONE ctermfg=69 cterm=NONE
" Character constant: 'a', '/n'
hi! link Character MoreMsg
" String constant: "this is a string"
hi! link String Underlined

hi! EndOfBuffer guifg=#575675 guibg=#322f42 gui=NONE ctermfg=60 ctermbg=236 cterm=NONE

" Generic Type
hi! Type guifg=#e79df2 gui=NONE ctermfg=207 cterm=NONE
" Underlined text (make it have NO UNDERLINE AT ALL)
hi! Underlined guifg=#b767fa gui=NONE ctermfg=135 cterm=NONE

" }}}
" vim: {{{

hi! link vimCommentTitle Conditional
hi! link vimHighlight Include
hi! link vimHiBang Statement
hi! link vimString MoreMsg
hi! link vimNumber Statement
hi! link vimCommand String
hi! link vimLet String
hi! link vimOption Statement
hi! link vimOper Constant
hi! link vimOperParen String
hi! link vimFunction Function
hi! link vimUserFunc vimFunction
hi! link vimContinue Constant

" }}}
" C: {{{

hi! link cStructure Identifier

" https://github.com/justinmk/vim-syntax-extra
hi! link cAnsiFunction Constant

" }}}
" CSS: {{{

hi! link cssBraces Conditional
hi! link cssPseudoClassFn MoreMsg
hi! link cssAttrRegion MoreMsg
hi! link cssDimensionProp String
hi! link cssUnitDecorators Special
hi! link cssPositioningProp String
hi! link cssFunctionComma MoreMsg
"hi! link cssTagName Identifier

" }}}
" javascript: {{{

hi! link javaScriptIdentifier PreProc
hi! link javaScriptBraces Conditional
hi! link javaScriptNumber Constant
hi! link javaScriptRegexpString MoreMsg

" https://github.com/pangloss/vim-javascript
hi! link jsImport Constant
hi! link jsFrom Constant
hi! link jsClassDefinition Constant
hi! link jsClassKeyword Include
hi! link jsSuper MoreMsg
hi! link jsOperator MoreMsg
hi! link jsThis Include
hi! link jsFuncCall Constant
hi! link jsBrackets MoreMsg
hi! link jsParen String
hi! link jsNumber Identifier
hi! link jsClassFuncName Constant
hi! link jsFuncBraces Conditional

" }}}
" ruby: {{{

hi! link rubySharpBang Statement
hi! link rubyStringDelimiter MoreMsg

" }}}
" html: {{{

hi! link htmlTag Conditional
hi! link htmlEndTag htmlTag
hi! link htmlTagName Identifier

" }}}
