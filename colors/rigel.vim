" ===============================================================
" rigel
" 
" URL: https://github.com/Rigellute/rigel
" Author: Alexander Keliris
" License: MIT
" Last Change: 2020/04/21 14:31
" ===============================================================

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="rigel"


let Italic = ""
if exists('g:rigel_italic')
  let Italic = "italic"
endif
let g:rigel_italic = get(g:, 'rigel_italic', 0)

let Bold = ""
if exists('g:rigel_bold')
  let Bold = "bold"
endif

let g:rigel_bold = get(g:, 'rigel_bold', 0)
hi ColorColumn guifg=NONE ctermfg=NONE guibg=#001a25 ctermbg=234 gui=NONE cterm=NONE
hi Cursor guifg=NONE ctermfg=NONE guibg=#f08e48 ctermbg=209 gui=NONE cterm=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#001a25 ctermbg=234 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#001a25 ctermbg=234 gui=NONE cterm=NONE
hi CursorLineNr guifg=#b7cff9 ctermfg=153 guibg=#001a25 ctermbg=234 gui=NONE cterm=NONE
hi LineNr guifg=#77929e ctermfg=246 guibg=#002635 ctermbg=235 gui=NONE cterm=NONE
hi DiffAdd guifg=#9cf087 ctermfg=156 guibg=#002635 ctermbg=235 gui=NONE cterm=NONE
hi DiffChange guifg=#00cccc ctermfg=44 guibg=#002635 ctermbg=235 gui=underline cterm=underline
hi DiffDelete guifg=#c43060 ctermfg=167 guibg=#002635 ctermbg=235 gui=NONE cterm=NONE
hi DiffText guifg=#e6e6dc ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ErrorMsg guifg=#c43060 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#517f8d ctermfg=66 guibg=#002635 ctermbg=235 gui=NONE cterm=NONE
hi Folded guifg=#77929e ctermfg=246 guibg=#00384d ctermbg=23 gui=NONE cterm=NONE
hi SignColumn guifg=#b7cff9 ctermfg=153 guibg=#002635 ctermbg=235 gui=NONE cterm=NONE
hi IncSearch guifg=#002635 ctermfg=235 guibg=#ffcc1b ctermbg=220 gui=NONE cterm=NONE
hi MatchParen guifg=#002635 ctermfg=235 guibg=#00ffff ctermbg=14 gui=NONE cterm=NONE
hi NonText guifg=#517f8d ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Normal guifg=#e6e6dc ctermfg=254 guibg=#002635 ctermbg=235 gui=NONE cterm=NONE
hi PMenu guifg=#e6e6dc ctermfg=254 guibg=#00384d ctermbg=23 gui=NONE cterm=NONE
hi PMenuSel guifg=#00ffff ctermfg=14 guibg=#517f8d ctermbg=66 gui=NONE cterm=NONE
hi Search guifg=#002635 ctermfg=235 guibg=#f08e48 ctermbg=209 gui=NONE cterm=NONE
hi SpellBad guifg=#77929e ctermfg=246 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi link SpellLocal SpellBad
hi link SpellCap SpellBad
hi link SpellRare SpellBad
hi StatusLine guifg=#e6e6dc ctermfg=254 guibg=#00384d ctermbg=23 gui=NONE cterm=NONE
hi StatusLineNC guifg=#e6e6dc ctermfg=254 guibg=#517f8d ctermbg=66 gui=NONE cterm=NONE
hi TabLine guifg=#77929e ctermfg=246 guibg=#00384d ctermbg=23 gui=NONE cterm=NONE
hi TabLineFill guifg=NONE ctermfg=NONE guibg=#00384d ctermbg=23 gui=NONE cterm=NONE
hi TabLineSel guifg=#e6e6dc ctermfg=254 guibg=#1c8db2 ctermbg=31 gui=NONE cterm=NONE
hi Title guifg=#00ffff ctermfg=14 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Visual guifg=NONE ctermfg=NONE guibg=#194b5e ctermbg=23 gui=NONE cterm=NONE
hi WildMenu guifg=#e6e6dc ctermfg=254 guibg=#517f8d ctermbg=66 gui=NONE cterm=NONE
hi Comment guifg=#77929e ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Constant guifg=#f08e48 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#9cf087 ctermfg=156 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#ff5a67 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Number Boolean
hi link Float Boolean
hi Identifier guifg=#f08e48 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=#7eb2dd ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#1c8db2 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Conditional Keyword
hi link Repeat Keyword
hi link Label Keyword
hi link Operator Constant
hi Keyword guifg=#1c8db2 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Exception guifg=#c43060 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link PreProc Constant
hi Include guifg=#00cccc ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Define Include
hi link Macro Include
hi Type guifg=#ff5a67 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link StorageClass Keyword
hi Structure guifg=#1c8db2 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#1c8db2 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Special Keyword
hi Tag guifg=#1c8db2 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpecialComment guifg=#00ffff ctermfg=14 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Debug guifg=#fb94ff ctermfg=213 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Underlined guifg=#b7cff9 ctermfg=153 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi link Ignore Comment
hi Error guifg=#c43060 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Todo guifg=#fb94ff ctermfg=213 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link diffAdded DiffAdd
hi link diffRemoved DiffDelete
hi jsVariableDef guifg=#b7cff9 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsStatement Keyword
hi link jsStorageClass Keyword
hi link jsExtendsKeyword Keyword
hi jsTemplateString guifg=#7fc06e ctermfg=107 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsReturn Keyword
hi link jsTryCatchBlock Boolean
hi link jsAsyncKeyword Boolean
hi link jsForAwait Boolean
hi jsGlobalNodeObjects guifg=#c694ff ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsImport guifg=#1c8db2 ctermfg=31 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi link jsFrom Keyword
hi link jsModuleAs Keyword
hi jsModuleKeyword guifg=#b7cff9 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsModuleAsterisk Keyword
hi jsExport guifg=#1c8db2 ctermfg=31 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi link jsExportDefault Keyword
hi jsFlowDefinition guifg=#f08e48 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFlowArgumentDef guifg=#f08e48 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFlowType guifg=#00cccc ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFlowObject guifg=#b7cff9 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFlowTypeStatement guifg=#f08e48 ctermfg=209 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsFlowMaybe Keyword
hi link jsFlowReturn jsFlowType
hi link jsFlowReturnObject jsFlowType
hi link jsFlowReturnArray jsFlowType
hi link jsFlowReturnParens jsFlowType
hi link jsFlowReturnArrow jsFlowType
hi link jsFlowReturnKeyword jsFlowType
hi link jsFlowReturnMaybe jsFlowType
hi link jsFlowReturnGroup jsFlowType
hi link jsFlowReturnOrOp jsFlowType
hi link jsFlowWildcardReturn jsFlowType
hi link jsFlowTypeofReturn jsFlowType
hi link jsFlowArray jsFlowArgumentDef
hi link jsFlowExactObject jsFlowArgumentDef
hi jsFlowParens guifg=#e6e6dc ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsFlowNoise jsFlowType
hi jsFlowTypeof guifg=#ffcc1b ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsFlowTypeCustom jsFlowType
hi jsFlowGeneric guifg=#ffcc1b ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsFlowObjectGeneric jsFlowGeneric
hi link jsFlowArrow Function
hi link jsFlowObjectKey jsVariableDef
hi link jsFlowOrOperator jsFlowType
hi link jsFlowImportType jsFlowType
hi link jsFlowWildcard jsFlowType
hi link jsFlowParenAnnotation jsFlowType
hi link jsObjectMethodType Function
hi link jsArrowFunction Function
hi link jsObjectProp jsVariableDef
hi jsObjectKey guifg=#c694ff ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsFunctionKey Function
hi link jsRestExpression Keyword
hi link jsGenerator Function
hi link jsFunction Keyword
hi link javaScriptStatement Keyword
hi xmlAttrib guifg=#ff5a67 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link xmlTag Function
hi link xmlTagName xmlTag
hi link xmlEndTag xmlTag
hi htmlH1 guifg=#00cccc ctermfg=44 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi link htmlH2 htmlH1
hi htmlH3 guifg=#00cccc ctermfg=44 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link htmlH4 htmlH3
hi link htmlH5 htmlH3
hi link htmlH6 htmlH3
hi markdownHeadingDelimiter guifg=#517f8d ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownOrderedListMarker guifg=#517f8d ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCodeDelimiter guifg=#517f8d ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCode guifg=#517f8d ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptVariable guifg=#1c8db2 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptValue guifg=#c694ff ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptObjectLabel guifg=#c694ff ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptPrimaryType guifg=#c694ff ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptMember guifg=#c694ff ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptMemberOptionality guifg=#c694ff ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptVariableDeclaration guifg=#b7cff9 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptProp guifg=#1c8db2 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link typescriptStatement Keyword
hi link typescriptStorageClass Keyword
hi link typescriptExtendsKeyword Keyword
hi typescriptTemplateString guifg=#7fc06e ctermfg=107 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptEnum guifg=#fb94ff ctermfg=213 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link typescriptReturn Keyword
hi link typescriptTryCatchBlock Boolean
hi link typescriptTernary Boolean
hi link typescriptAsyncKeyword Boolean
hi link typescriptObjectAsyncKeyword Boolean
hi typescriptObjectColon guifg=#1c8db2 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link typescriptAsyncFor Boolean
hi link typescriptForAwait Boolean
hi typescriptGlobalNodeObjects guifg=#c694ff ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptGlobal guifg=#c694ff ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptImport guifg=#1c8db2 ctermfg=31 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi typescriptExportType guifg=#1c8db2 ctermfg=31 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi link typescriptImportType Keyword
hi link typescriptFrom Keyword
hi link typescriptModuleAs Keyword
hi link typescriptModule Keyword
hi typescriptModuleKeyword guifg=#b7cff9 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link typescriptModuleAsterisk Keyword
hi link typescriptExport Keyword
hi link typescriptExportDefault Keyword
hi link typescriptCastKeyword Function
hi link typescriptGenerator Function
hi link typescriptFunction Keyword
hi link typescriptError Error
hi link typescriptBoolean Boolean

let g:terminal_color_foreground = "#e6e6dc"
let g:terminal_color_background = "#002635"
let g:terminal_color_0 = "#00384d"
let g:terminal_color_1 = "#c43060"
let g:terminal_color_2 = "#7fc06e"
let g:terminal_color_3 = "#f08e48"
let g:terminal_color_4 = "#1c8db2"
let g:terminal_color_5 = "#c694ff"
let g:terminal_color_6 = "#00cccc"
let g:terminal_color_7 = "#77929e"
let g:terminal_color_8 = "#517f8d"
let g:terminal_color_9 = "#ff5a67"
let g:terminal_color_10 = "#9cf087"
let g:terminal_color_11 = "#ffcc1b"
let g:terminal_color_12 = "#7eb2dd"
let g:terminal_color_13 = "#fb94ff"
let g:terminal_color_14 = "#00ffff"
let g:terminal_color_15 = "#b7cff9"

" ===================================
" Generated by Estilo 1.4.1
" https://github.com/jacoborus/estilo
" ===================================
