" Name:       synthetic.vim
" Version:    1.0.0
" Maintainer: github.com/semibran
" License:    The MIT License (MIT)

highlight clear

if exists("syntax on")
  syntax reset
endif

let g:colors_name = "synthetic"

function! s:h(group, style)
  execute "highlight" a:group
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
endfunction

" color definitions
let s:black  = { "cterm": "0",   "gui": "#000000" }
let s:jet    = { "cterm": "233", "gui": "#121212" }
let s:onyx   = { "cterm": "235", "gui": "#262626" }
let s:gray   = { "cterm": "59",  "gui": "#5f5f5f" }
let s:silver = { "cterm": "188", "gui": "#d7d7d7" }
let s:white  = { "cterm": "15",  "gui": "#ffffff" }
let s:red    = { "cterm": "203", "gui": "#ff5f5f" }
let s:green  = { "cterm": "156", "gui": "#afff87" }
let s:yellow = { "cterm": "222", "gui": "#ffd787" }
let s:purple = { "cterm": "141", "gui": "#af87ff" }
let s:cyan   = { "cterm": "123", "gui": "#87ffff" }

" style definitions
let s:normal     = { "fg": s:silver, "bg": s:black }
let s:italic     = { "fg": s:cyan, "cterm": "italic", "gui": "italic" }
let s:bold       = { "fg": s:cyan, "cterm": "bold", "gui": "bold" }
let s:subtle     = { "fg": s:gray }
let s:hidden     = { "fg": s:black }
let s:statement  = { "fg": s:purple }
let s:identifier = { "fg": s:yellow }
let s:constant   = { "fg": s:green }
let s:special    = { "fg": s:cyan }
let s:warning    = { "fg": s:black, "bg": s:yellow }
let s:error      = { "fg": s:white, "bg": s:red }
let s:cursor     = { "fg": s:black, "bg": s:white }
let s:highlight  = { "fg": s:silver, "bg": s:onyx }
let s:select     = { "bg": s:jet }
let s:none       = {}

" basic syntax highlighting declarations
call s:h("Statement", s:statement)
call s:h("Identifier", s:identifier)
call s:h("Constant", s:constant)
call s:h("Function", s:special)
call s:h("Special", s:special)
call s:h("Title", s:special)
call s:h("Comment", s:subtle)
call s:h("Normal", s:normal)
call s:h("Italic", s:italic)
call s:h("Bold", s:bold)
call s:h("Visual", s:select)
call s:h("Cursor", s:cursor)
call s:h("CursorLine", s:select)
call s:h("CursorLineNr", s:highlight)
call s:h("LineNr", s:subtle)
call s:h("NonText", s:subtle)
call s:h("SpecialKey", s:subtle)
call s:h("MatchParen", s:special)
call s:h("MoreMsg", s:special)
call s:h("WarningMsg", s:warning)
call s:h("Error", s:error)
call s:h("EndOfBuffer", s:hidden)

" derivative links
hi! link Keyword Statement
hi! link PreProc Statement
hi! link StorageClass Statement
hi! link Type Identifier
hi! link Number Constant
hi! link Float Number
hi! link String Constant
hi! link Character String
hi! link Operator Function

" vim links
hi! link vimSep Normal
hi! link vimParenSep Normal
hi! link vimFunction Function
hi! link vimUserFunc Function
hi! link vimOper Function
hi! link vimCommentTitle Identifier
hi! link vimOption Identifier

" shell script links
hi! link shRange Normal
hi! link shLoop Statement
hi! link shFor Identifier
hi! link shDerefSimple Identifier
hi! link shStatement Constant
hi! link shTestOpr Operator

" zsh links
hi! link zshPreProc Comment
hi! link zshDeref Identifier
hi! link zshDollarVar Identifier
hi! link zshVariableDef Identifier
hi! link zshSubst Identifier
hi! link zshSubstDelim Operator

" javascript links
hi! link jsFunction Statement
hi! link jsArrowFunction Statement
hi! link jsObjectKey Identifier
hi! link jsObjectProp Identifier
hi! link jsVariableDef Identifier
hi! link jsDestructuringBlock Identifier
hi! link jsModuleKeyword Identifier
hi! link jsFuncArgs Identifier
hi! link jsNull Constant
hi! link jsUndefined Constant
hi! link jsFuncCall Function
hi! link jsOperator Operator
hi! link jsSpreadOperator Operator
hi! link jsTemplateBraces Special
hi! link jsEnvComment Comment

" json links
hi! link jsonBraces Normal
hi! link jsonKeyword Identifier

" html links
hi! link htmlTagName Keyword
hi! link htmlSpecialTagName Keyword

" css links
hi! link cssBraces Normal
hi! link cssPseudoClass Special
hi! link cssUIProp Identifier
hi! link cssBoxProp Identifier
hi! link cssPageProp Identifier
hi! link cssMediaProp Identifier
hi! link cssDimensionProp Identifier
hi! link cssBackgroundProp Identifier
hi! link cssPositioningProp Identifier

" sass links
hi! link sassId Keyword
hi! link sassClass Keyword
hi! link sassProperty Identifier
hi! link sassCssAttribute Constant

" markdown links
hi! link markdownH1 Statement
hi! link markdownH2 Statement
hi! link markdownH3 Statement
hi! link markdownH4 Statement
hi! link markdownH5 Statement
hi! link markdownH6 Statement
hi! link markdownHeadingDelimiter Statement
hi! link markdownLinkText Identifier
hi! link markdownUrlTitle Title
hi! link markdownCode String
hi! link markdownItalic Italic
hi! link markdownBold Bold
