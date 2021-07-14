" Initialisation: {{{

if exists("g:boa_colors")
  finish
endif
let g:boa_colors = 1
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name ='boa'

" }}}
" Syntax Highlighting: {{{
hi BoaRed      guifg=#d35b4b guibg=NONE gui=NONE
hi BoaGreen    guifg=#8f9e44 guibg=NONE gui=NONE
hi BoaYellow   guifg=#caa247 guibg=NONE gui=NONE
hi BoaBlue     guifg=#919697 guibg=NONE gui=NONE
hi BoaDarkBlue guifg=#898fac guibg=NONE gui=NONE
hi BoaPurple   guifg=#b2809f guibg=NONE gui=NONE
hi BoaAqua     guifg=#70a17c guibg=NONE gui=NONE
hi BoaOrange   guifg=#c57c41 guibg=NONE gui=NONE
hi BoaGray     guifg=#817466 guibg=NONE gui=NONE
hi BoaBrown    guifg=#826a33 guibg=NONE gui=NONE

hi Normal      guifg=#b8af96 guibg=NONE gui=NONE
" see :help group-name
hi! link Comment BoaGray
hi! link Constant BoaPurple
" Character Number Boolean Float
hi! link String BoaGreen
hi! link Identifier BoaBlue
hi! link Function BoaDarkBlue
hi! link Statement BoaRed
" Conditional Repeat Label Operator Keyword Exception
hi! link PreProc BoaAqua
" Include Define Macro PreCondit
hi! link Type BoaYellow
" Typedef
hi! link StorageClass BoaOrange
hi! link Structure BoaAqua
hi! link Special BoaOrange
" SpecialChar Tag Delimiter SpecialComment Debug
hi Underlined guifg=#919697 guibg=NONE gui=underline
" Ignore
hi Error guifg=#d35b4b guibg=bg gui=bold,inverse
hi Todo guifg=fg guibg=NONE gui=bold,underline

" see :help highlight-default
hi CursorLine guifg=NONE guibg=#292523 gui=NONE
hi! link CursorColumn CursorLine
hi! link ColorColumn CursorLine
hi! link Conceal BoaBlue
hi Cursor guifg=NONE guibg=NONE gui=inverse
" CursorIM
hi CursorLineNr   guifg=#caa247 guibg=#292523    gui=NONE
hi Directory  guifg=#8f9e44 guibg=NONE gui=bold
hi DiffAdd    guifg=NONE guibg=#2b4018 gui=NONE
hi DiffChange guifg=NONE guibg=#263840 gui=NONE
hi DiffDelete guifg=#1a1a1a guibg=#4d2f2b gui=NONE
hi DiffText   guifg=NONE guibg=#453b24 gui=NONE
" EndOfBuffer
" TermCursor
" TermCursorNC
hi ErrorMsg guifg=#d35b4b guibg=NONE gui=bold
hi VertSplit guifg=#0a0707 guibg=NONE gui=NONE
hi Folded     guifg=#817466 guibg=#2b2927    gui=NONE
hi! link FoldColumn Folded
hi SignColumn guifg=NONE guibg=NONE
hi IncSearch guifg=#1f1a17 guibg=#518233 gui=bold
" Substitute
hi NonText guifg=#47423d guibg=NONE gui=NONE
hi! link LineNr NonText
hi MatchParen   guifg=#eb3a75 guibg=NONE gui=bold
hi ModeMsg      guifg=#93b329 guibg=NONE gui=bold
" MsgArea
hi MsgSeparator    guifg=NONE guibg=#263815 gui=NONE
hi MoreMsg   guifg=#caa247 guibg=NONE    gui=bold
hi NormalFloat guifg=NONE guibg=#21261d gui=NONE
hi NormalNC guifg=#b0a78f guibg=#111314 gui=NONE
hi! link Question BoaGreen
hi QuickFixLine guifg=NONE guibg=#37322d gui=NONE
hi Search guifg=#1f1a17 guibg=#826a33 gui=bold
hi! link SpecialKey NonText
hi SpellBad guifg=NONE guibg=NONE gui=underline guisp=#e62922
hi SpellCap guifg=NONE guibg=NONE gui=underline guisp=#a0b82e
hi! link SpellLocal SpellCap
hi! link SpellRare SpellCap
hi StatusLine guifg=#70655c guibg=#0a0707 gui=NONE
hi StatusLineNC guifg=#403832 guibg=#0a0707 gui=NONE
hi TabLine    guifg=#7c6f64 guibg=#0a0707    gui=NONE
hi TabLineSel    guifg=#74853c guibg=#0a0707    gui=bold
hi! link TabLineFill Tabline
hi Title    guifg=#855c79 guibg=NONE    gui=bold
hi Visual guifg=NONE guibg=#3d3834 gui=NONE
hi! link VisualNOS Visual
hi! link WarningMsg BoaOrange
" Whitespace
hi WildMenu     guifg=#919697 guibg=#3d3834    gui=bold
hi Pmenu guifg=#b8af96 guibg=#3d3834 gui=NONE
hi PmenuSel guifg=#3d3834 guibg=#919697 gui=bold
hi! link  PmenuSbar Visual
hi PmenuThumb guifg=NONE guibg=#7c6f64 gui=NONE

hi User1 guifg=#628c4c guibg=#0a0707
hi User2 guifg=#70655c guibg=#0a0707 gui=underline guisp=#e62922
hi User3 guifg=#998539 guibg=#0a0707
hi User4 guifg=#466d87 guibg=#0a0707
hi User5 guifg=#87517f guibg=#0a0707
hi User6 guifg=#964b44 guibg=#0a0707
hi User7 guifg=#ca4141 guibg=#0a0707 gui=bold
hi YankedText guifg=NONE guibg=#2F3829 gui=NONE

hi! link qfLineNr BoaOrange
" qfError
" qfFileName"

" }}}
" NeovimLSP: {{{

hi LspDiagnosticsUnderlineError guifg=NONE guibg=NONE gui=underline guisp=#d33e2a
hi LspDiagnosticsUnderlineWarning guifg=NONE guibg=NONE gui=underline guisp=#dea91d
hi LspDiagnosticsUnderlineInformation guifg=NONE guibg=NONE gui=underline guisp=#6ec62f
hi LspDiagnosticsUnderlineHint guifg=NONE guibg=NONE gui=underline guisp=#40af92

hi LspDiagnosticsDefaultError guifg=#ed4e3a guibg=NONE gui=NONE
hi LspDiagnosticsDefaultWarning guifg=#dea91d guibg=NONE gui=NONE
hi LspDiagnosticsDefaultInformation guifg=#6ec62f guibg=NONE gui=NONE
hi LspDiagnosticsDefaultHint guifg=#40af92 guibg=NONE gui=NONE

hi LspDiagnosticsVirtualTextError guifg=#ed4e3a guibg=#342220 gui=NONE
hi LspDiagnosticsVirtualTextWarning guifg=#dea91d guibg=#2c2c1e gui=NONE
hi LspDiagnosticsVirtualTextInformation guifg=#6ec62f guibg=#202b20 gui=NONE
hi LspDiagnosticsVirtualTextHint guifg=#40af92 guibg=#20282b gui=NONE

" }}}

" Plugin specific -------------------------------------------------------------
" Netrw: {{{

hi! link netrwDir BoaAqua
hi! link netrwClassify BoaAqua
hi! link netrwLink BoaGray
hi! link netrwSymLink Normal
hi! link netrwExe BoaYellow
hi! link netrwComment BoaGray
hi! link netrwList BoaBlue
hi! link netrwHelpCmd BoaAqua
hi! link netrwCmdSep Normal
hi! link netrwVersion BoaGreen

" }}}
" GitGutter: {{{

hi! link GitGutterAdd BoaGreen
hi! link GitGutterChange BoaAqua
hi! link GitGutterDelete BoaRed
hi! link GitGutterChangeDelete BoaAqua

" }}}
" Hop: {{{

hi HopNextKey guifg=#f2119c guibg=NONE gui=bold
hi HopNextKey1 guifg=#11eb9c guibg=NONE gui=bold
hi HopNextKey2 guifg=#1b8da3 guibg=NONE gui=NONE
hi HopUnmatched guifg=#49423f guibg=NONE gui=NONE

" }}}

" Filetype specific -----------------------------------------------------------
" Diff: {{{

hi! link diffAdded BoaGreen
hi! link diffRemoved BoaRed
hi! link diffChanged BoaAqua

hi! link diffFile BoaOrange
hi! link diffNewFile BoaYellow

hi! link diffLine BoaBlue

" }}}
" Html: {{{

hi! link htmlTag BoaBlue
hi! link htmlEndTag BoaBlue

" hi htmlTagName guifg=#70a17c guibg=none gui=bold
hi! link htmlArg BoaAqua

hi! link htmlScriptTag BoaPurple
hi! link htmlTagN Normal
hi! link htmlSpecialTagName htmlTagName

hi htmlLink guifg=#a89984 guibg=none gui=underline

hi! link htmlSpecialChar BoaOrange

hi htmlBold guifg=fg guibg=none gui=bold
hi htmlBoldUnderline guifg=fg guibg=none gui=bold,underline
hi htmlBoldItalic guifg=fg guibg=none gui=bold,italic
hi htmlBoldUnderlineItalic guifg=fg guibg=none gui=bold,underline,italic
hi htmlUnderline guifg=fg guibg=none gui=underline
hi htmlUnderlineItalic guifg=fg guibg=none gui=underline,italic
hi htmlItalic guifg=fg guibg=none gui=italic

" }}}
" Xml: {{{

hi! link xmlTag BoaBlue
hi! link xmlEndTag BoaBlue
hi! link xmlTagName BoaBlue
hi! link xmlEqual BoaBlue
hi! link docbkKeyword htmlTagName

hi! link xmlDocTypeDecl BoaGray
hi! link xmlDocTypeKeyword BoaPurple
hi! link xmlCdataStart BoaGray
hi! link xmlCdataCdata BoaPurple
hi! link dtdFunction BoaGray
hi! link dtdTagName BoaPurple

hi! link xmlAttrib BoaAqua
hi! link xmlProcessingDelim BoaGray
hi! link dtdParamEntityPunct BoaGray
hi! link dtdParamEntityDPunct BoaGray
hi! link xmlAttribPunct BoaGray

hi! link xmlEntity BoaOrange
hi! link xmlEntityPunct BoaOrange
" }}}
" Vim: {{{

hi vimCommentTitle guifg=#a89984 guibg=none gui=bold

hi! link vimNotation BoaOrange
hi! link vimBracket BoaOrange
hi! link vimMapModKey BoaOrange
hi! link vimFuncSID Normal
hi! link vimSetSep Normal
hi! link vimSep Normal
hi! link vimContinue Normal
hi! link vimVar Normal
hi! link vimNotFunc BoaRed
hi! link vimCommand BoaYellow
hi! link vimFunction BoaRed
hi! link vimSubst vimFuncName
hi! link vimCommentString vimComment

" }}}
" C: {{{

hi! link cOperator BoaPurple
hi! link cStructure BoaOrange

" }}}
" Fennel: {{{

hi link FennelSpecialForm BoaRed
hi link FennelSymbol Normal
hi link FennelParen BoaDarkBlue
hi link FennelKeyword BoaYellow
hi link FennelStringEscape BoaOrange
hi link FennelError Error

" }}}
" Python: {{{

hi! link pythonBuiltin BoaOrange
hi! link pythonBuiltinObj BoaOrange
hi! link pythonBuiltinFunc BoaOrange
hi! link pythonFunction BoaAqua
hi! link pythonDecorator BoaRed
hi! link pythonInclude BoaBlue
hi! link pythonImport BoaBlue
hi! link pythonRun BoaBlue
hi! link pythonCoding BoaBlue
hi! link pythonOperator BoaRed
hi! link pythonException BoaRed
hi! link pythonExceptions BoaPurple
hi! link pythonBoolean BoaPurple
hi! link pythonDot Normal
hi! link pythonConditional BoaRed
hi! link pythonRepeat BoaRed
hi! link pythonDottedName BoaDarkBlue

" }}}
" CSS: {{{

hi! link cssBraces BoaBlue
hi! link cssFunctionName BoaYellow
hi! link cssIdentifier BoaOrange
hi! link cssClassName BoaGreen
hi! link cssColor BoaBlue
hi! link cssSelectorOp BoaBlue
hi! link cssSelectorOp2 BoaBlue
hi! link cssImportant BoaGreen
hi! link cssVendor Normal

hi! link cssTextProp BoaAqua
hi! link cssAnimationProp BoaAqua
hi! link cssUIProp BoaYellow
hi! link cssTransformProp BoaAqua
hi! link cssTransitionProp BoaAqua
hi! link cssPrintProp BoaAqua
hi! link cssPositioningProp BoaYellow
hi! link cssBoxProp BoaAqua
hi! link cssFontDescriptorProp BoaAqua
hi! link cssFlexibleBoxProp BoaAqua
hi! link cssBorderOutlineProp BoaAqua
hi! link cssBackgroundProp BoaAqua
hi! link cssMarginProp BoaAqua
hi! link cssListProp BoaAqua
hi! link cssTableProp BoaAqua
hi! link cssFontProp BoaAqua
hi! link cssPaddingProp BoaAqua
hi! link cssDimensionProp BoaAqua
hi! link cssRenderProp BoaAqua
hi! link cssColorProp BoaAqua
hi! link cssGeneratedContentProp BoaAqua

" }}}
" JavaScript: {{{

hi! link javaScriptBraces Normal
hi! link javaScriptFunction BoaAqua
hi! link javaScriptIdentifier BoaRed
hi! link javaScriptMember BoaBlue
hi! link javaScriptNumber BoaPurple
hi! link javaScriptNull BoaPurple
hi! link javaScriptParens Normal

" }}}
" PanglossJS: {{{

hi! link jsClassKeyword BoaAqua
hi! link jsExtendsKeyword BoaAqua
hi! link jsExportDefault BoaAqua
hi! link jsTemplateBraces BoaAqua
hi! link jsGlobalNodeObjects Normal
hi! link jsGlobalObjects Normal
hi! link jsFunction BoaAqua
hi! link jsFuncParens Normal
hi! link jsParens Normal
hi! link jsNull BoaPurple
hi! link jsUndefined BoaPurple
hi! link jsClassDefinition BoaYellow

" }}}
" TypeScript: {{{

hi! link typeScriptReserved BoaAqua
hi! link typeScriptLabel BoaAqua
hi! link typeScriptFuncKeyword BoaAqua
hi! link typeScriptIdentifier BoaOrange
hi! link typeScriptBraces Normal
hi! link typeScriptEndColons Normal
hi! link typeScriptDOMObjects Normal
hi! link typeScriptAjaxMethods Normal
hi! link typeScriptLogicSymbols Normal
hi! link typeScriptDocSeeTag Comment
hi! link typeScriptDocParam Comment
hi! link typeScriptDocTags vimCommentTitle
hi! link typeScriptGlobalObjects Normal
hi! link typeScriptParens Normal
hi! link typeScriptOpSymbols Normal
hi! link typeScriptHtmlElemProperties Normal
hi! link typeScriptNull BoaPurple
hi! link typeScriptInterpolationDelimiter BoaAqua

" }}}
" Go: {{{

hi! link goDirective BoaAqua
hi! link goConstants BoaPurple
hi! link goDeclaration BoaRed
hi! link goDeclType BoaBlue
hi! link goBuiltins BoaOrange

" }}}
" Lua: {{{

hi! link luaIn BoaRed
hi! link luaFunction BoaAqua
hi! link luaFunction BoaAqua
hi! link luaFuncCall BoaDarkBlue
hi! link luaTable BoaOrange

" }}}
" Markdown: {{{

hi markdownItalic guifg=#b8af96 guibg=none gui=italic

hi! link markdownH1 Directory
hi! link markdownH2 Directory
hi markdownH3 guifg=#caa247 guibg=none gui=bold
hi! link markdownH4 markdownH3
hi! link markdownH5 BoaYellow
hi! link markdownH6 BoaYellow

hi! link markdownCode BoaAqua
hi! link markdownCodeBlock BoaAqua
hi! link markdownCodeDelimiter BoaAqua

hi! link markdownBlockquote BoaGray
hi! link markdownListMarker BoaGray
hi! link markdownOrderedListMarker BoaGray
hi! link markdownRule BoaGray
hi! link markdownHeadingRule BoaGray

hi! link markdownUrlDelimiter Normal
hi! link markdownLinkDelimiter Normal
hi! link markdownLinkTextDelimiter Normal

hi! link markdownHeadingDelimiter BoaOrange
hi! link markdownUrl BoaPurple
hi! link markdownUrlTitleDelimiter BoaGreen

hi markdownLinkText guifg=#817466 guibg=none gui=underline
hi! link markdownIdDeclaration markdownLinkText

" }}}
" Haskell: {{{

hi! link haskellType BoaYellow
hi! link haskellIdentifier Normal
hi! link haskellSeparator Normal
hi! link haskellDelimiter Normal
hi! link haskellOperators BoaDarkBlue
"
hi! link haskellBacktick BoaOrange
hi! link haskellStatement BoaOrange
hi! link haskellConditional BoaOrange

hi! link haskellLet BoaAqua
hi! link haskellDefault BoaAqua
hi! link haskellWhere BoaAqua
hi! link haskellBottom BoaAqua
hi! link haskellBlockKeywords BoaAqua
hi! link haskellImportKeywords BoaAqua
hi! link haskellDeclKeyword BoaAqua
hi! link haskellDeriving BoaAqua
hi! link haskellAssocType BoaAqua

hi! link haskellNumber BoaPurple
hi! link haskellPragma BoaPurple

hi! link haskellString BoaGreen
hi! link haskellChar BoaGreen

" }}}
" Json: {{{

hi! link jsonKeyword BoaGreen
hi! link jsonQuote BoaGreen
hi! link jsonBraces Normal
hi! link jsonString Normal

" }}}
" TOML: {{{

hi! link tomlTable BoaRed
hi! link tomlTableArray BoaYellow

" }}}
" Svelte: {{{

hi! svelteRepeat guifg=#caa247 guibg=NONE gui=bold
hi! link svelteConditional svelteRepeat
hi! link svelteKeyword BoaPurple

" }}}
" Terminal Colors: {{{

let g:terminal_color_0 = '#1f1a17'
let g:terminal_color_8 = '#6e685a'

let g:terminal_color_1 = '#d35b4b'
let g:terminal_color_9 = '#d35b4b'

let g:terminal_color_2 = '#8f9e44'
let g:terminal_color_10 = '#8f9e44'

let g:terminal_color_3 = '#c57c41'
let g:terminal_color_11 = '#caa247'

let g:terminal_color_4 = '#7680ac'
let g:terminal_color_12 = '#7680ac'

let g:terminal_color_5 = '#b2809f'
let g:terminal_color_13 = '#b2809f'

let g:terminal_color_6 = '#70a195'
let g:terminal_color_14 = '#70a195'

let g:terminal_color_7 = '#8c8572'
let g:terminal_color_15 = '#b8af96'

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
