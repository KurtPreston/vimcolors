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
let g:colors_name='boa'

" }}}
" Syntax Highlighting: {{{
hi Normal      guifg=#b8af96 guibg=#26201c gui=NONE
hi BoaRed      guifg=#d35b4b guibg=NONE    gui=NONE
hi BoaGreen    guifg=#8f9e44 guibg=NONE    gui=NONE
hi BoaYellow   guifg=#caa247 guibg=NONE    gui=NONE
hi BoaBlue     guifg=#919697 guibg=NONE    gui=NONE
hi BoaDarkBlue guifg=#898fac guibg=NONE    gui=NONE
hi BoaPurple   guifg=#b2809f guibg=NONE    gui=NONE
hi BoaAqua     guifg=#70a17c guibg=NONE    gui=NONE
hi BoaOrange   guifg=#c57c41 guibg=NONE    gui=NONE
hi BoaGray     guifg=#817466 guibg=NONE    gui=NONE
hi BoaBrown    guifg=#826a33 guibg=NONE    gui=NONE
hi BoaLight1   guifg=#b8af96 guibg=NONE    gui=NONE

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
hi CursorLine guifg=NONE guibg=#2b2927 gui=NONE
hi! link CursorColumn CursorLine
hi! link ColorColumn CursorLine
hi! link Conceal BoaBlue
hi Cursor guifg=NONE guibg=NONE gui=inverse
" CursorIM
hi CursorLineNr   guifg=#caa247 guibg=#2b2927    gui=NONE
hi Directory  guifg=#8f9e44 guibg=NONE gui=bold
hi DiffAdd    guifg=#8f9e44 guibg=NONE gui=inverse
hi DiffChange guifg=#70a17c guibg=NONE gui=inverse
hi DiffDelete guifg=#d35b4b guibg=NONE gui=inverse
hi DiffText   guifg=#826a33 guibg=NONE gui=inverse
" EndOfBuffer
" TermCursor
" TermCursorNC
hi ErrorMsg guifg=#d35b4b guibg=NONE gui=bold
hi VertSplit guifg=#48382f guibg=NONE gui=NONE
hi Folded     guifg=#817466 guibg=#2b2927    gui=NONE
hi! link FoldColumn Folded
hi SignColumn guifg=NONE guibg=NONE
hi IncSearch guifg=#518233 guibg=bg gui=inverse
" Substitute
hi NonText guifg=#453f3b guibg=NONE gui=NONE
hi! link LineNr NonText
hi MatchParen   guifg=#cc752f guibg=NONE    gui=bold
hi ModeMsg   guifg=#26201c guibg=#7c7e1d gui=bold
" MsgArea
" MsgSeparator
hi! link MoreMsg ModeMsg
hi NormalFloat guifg=NONE guibg=#272E22 gui=NONE
hi NormalNC guifg=#A8A089 guibg=#1C1815 gui=NONE
hi! link Question BoaGreen
hi QuickFixLine guifg=NONE guibg=#453f3b gui=NONE
hi Search    guifg=#26201c guibg=#826a33 gui=NONE
hi! link SpecialKey VertSplit
hi SpellBad guifg=NONE guibg=NONE gui=undercurl guisp=#d33e2a
hi SpellCap guifg=NONE guibg=NONE gui=undercurl guisp=#a0b82e
hi! link SpellLocal SpellCap
hi! link SpellRare SpellCap
hi StatusLine guifg=#b8af96 guibg=#48382f gui=NONE
hi StatusLineNC guifg=#948774 guibg=#48382f gui=NONE
hi TabLine    guifg=#7c6f64 guibg=#2b2927    gui=NONE
hi TabLineSel    guifg=#8f9e44 guibg=#2b2927    gui=NONE
hi! link TabLineFill Tabline
hi Title    guifg=#8f9e44 guibg=NONE    gui=bold
hi Visual guifg=NONE guibg=#453f3b gui=NONE
hi! link VisualNOS Visual
hi! link WarningMsg BoaOrange
" Whitespace
hi WildMenu     guifg=#919697 guibg=#453f3b    gui=bold
hi Pmenu guifg=#b8af96 guibg=#453f3b gui=NONE
hi PmenuSel guifg=#453f3b guibg=#919697 gui=bold
hi! link  PmenuSbar Visual
hi PmenuThumb guifg=NONE guibg=#7c6f64 gui=NONE

hi User1 guifg=#221111 guibg=#7c7e1d
hi User2 guifg=#d35b4b guibg=#48382f gui=bold
" qfLineNr
" qfError
" qfFileName"

" }}}

" Plugin specific -------------------------------------------------------------
" EasyMotion: {{{

" hi! link EasyMotionTarget Search
hi EasyMotionTarget guifg=#d35b4b guibg=NONE gui=bold
hi! link EasyMotionTarget2First EasyMotionTarget
hi EasyMotionTarget2Second guifg=#c57c41 guibg=NONE gui=bold
hi! link EasyMotionShade Comment

" }}}
" Netrw: {{{

hi! link netrwDir BoaAqua
hi! link netrwClassify BoaAqua
hi! link netrwLink BoaGray
hi! link netrwSymLink BoaLight1
hi! link netrwExe BoaYellow
hi! link netrwComment BoaGray
hi! link netrwList BoaBlue
hi! link netrwHelpCmd BoaAqua
hi! link netrwCmdSep BoaLight1
hi! link netrwVersion BoaGreen

" }}}
" NERDTree: {{{

hi! link NERDTreeDir BoaAqua
hi! link NERDTreeDirSlash BoaAqua

hi! link NERDTreeOpenable BoaOrange
hi! link NERDTreeClosable BoaOrange

hi! link NERDTreeFile BoaLight1
hi! link NERDTreeExecFile BoaYellow

hi! link NERDTreeUp BoaGray
hi! link NERDTreeCWD BoaGreen
hi! link NERDTreeHelp BoaLight1

hi! link NERDTreeToggleOn BoaGreen
hi! link NERDTreeToggleOff BoaRed

" }}}
" Coc: {{{

hi! link CocErrorSign BoaRed
hi! link CocWarningSign BoaYellow
hi! link CocInfoSign BoaGreen
hi! link CocHintSign BoaAqua
hi! CocHighlightText guifg=NONE guibg=#363D45 gui=NONE
hi! CocHoverRange guifg=NONE guibg=#2F3829 gui=NONE
hi! link CocCursorRange CocHoverRange
hi! link HighlightedyankRegion CocHoverRange
hi! link CocFloating NormalFloat
hi! link CocOutlineName BoaLight1
hi! link CocListPath StatusLineNC
" hi CocListMode  guifg=#8f9e44 guibg=#48382f gui=bold
hi CocErrorHighlight guifg=NONE guibg=NONE gui=undercurl guisp=#d33e2a
hi CocWarningHighlight guifg=NONE guibg=NONE gui=undercurl guisp=#dac230
hi CocInfoHighlight guifg=NONE guibg=NONE gui=undercurl guisp=#a0b82e
hi CocHintHighlight guifg=NONE guibg=NONE gui=undercurl guisp=#70a17c
hi CocGitRemovedSign guifg=#d35b4b guibg=NONE gui=bold
hi CocGitTopRemovedSign guifg=#d35b4b guibg=NONE gui=bold
hi CocGitChangedSign guifg=#70a17c guibg=NONE gui=bold
hi CocGitChangeRemovedSign guifg=#70a17c guibg=NONE gui=bold
hi CocGitAddedSign guifg=#8f9e44 guibg=NONE gui=bold

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

hi htmlTagName guifg=#70a17c guibg=none gui=bold
hi! link htmlArg BoaAqua

hi! link htmlScriptTag BoaPurple
hi! link htmlTagN BoaLight1
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
hi! link vimFuncSID BoaLight1
hi! link vimSetSep BoaLight1
hi! link vimSep BoaLight1
hi! link vimContinue BoaLight1
hi! link vimCommentString vimComment

" }}}
" C: {{{

hi! link cOperator BoaPurple
hi! link cStructure BoaOrange

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
hi! link pythonDot BoaLight1
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
hi! link cssVendor BoaLight1

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

hi! link javaScriptBraces BoaLight1
hi! link javaScriptFunction BoaAqua
hi! link javaScriptIdentifier BoaRed
hi! link javaScriptMember BoaBlue
hi! link javaScriptNumber BoaPurple
hi! link javaScriptNull BoaPurple
hi! link javaScriptParens BoaLight1

" }}}
" PanglossJS: {{{

hi! link jsClassKeyword BoaAqua
hi! link jsExtendsKeyword BoaAqua
hi! link jsExportDefault BoaAqua
hi! link jsTemplateBraces BoaAqua
hi! link jsGlobalNodeObjects BoaLight1
hi! link jsGlobalObjects BoaLight1
hi! link jsFunction BoaAqua
hi! link jsFuncParens BoaLight1
hi! link jsParens BoaLight1
hi! link jsNull BoaPurple
hi! link jsUndefined BoaPurple
hi! link jsClassDefinition BoaYellow

" }}}
" TypeScript: {{{

hi! link typeScriptReserved BoaAqua
hi! link typeScriptLabel BoaAqua
hi! link typeScriptFuncKeyword BoaAqua
hi! link typeScriptIdentifier BoaOrange
hi! link typeScriptBraces BoaLight1
hi! link typeScriptEndColons BoaLight1
hi! link typeScriptDOMObjects BoaLight1
hi! link typeScriptAjaxMethods BoaLight1
hi! link typeScriptLogicSymbols BoaLight1
hi! link typeScriptDocSeeTag Comment
hi! link typeScriptDocParam Comment
hi! link typeScriptDocTags vimCommentTitle
hi! link typeScriptGlobalObjects BoaLight1
hi! link typeScriptParens BoaLight1
hi! link typeScriptOpSymbols BoaLight1
hi! link typeScriptHtmlElemProperties BoaLight1
hi! link typeScriptNull BoaPurple
hi! link typeScriptInterpolationDelimiter BoaAqua

" }}}
" PureScript: {{{

hi! link purescriptModuleKeyword BoaAqua
hi! link purescriptModuleName BoaLight1
hi! link purescriptWhere BoaAqua
hi! link purescriptDelimiter BoaLight1
hi! link purescriptType BoaLight1
hi! link purescriptImportKeyword BoaAqua
hi! link purescriptHidingKeyword BoaAqua
hi! link purescriptAsKeyword BoaAqua
hi! link purescriptStructure BoaAqua
hi! link purescriptOperator BoaBlue

hi! link purescriptTypeVar BoaLight1
hi! link purescriptConstructor BoaLight1
hi! link purescriptFunction BoaLight1
hi! link purescriptConditional BoaOrange
hi! link purescriptBacktick BoaOrange

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

hi! link markdownUrlDelimiter BoaLight1
hi! link markdownLinkDelimiter BoaLight1
hi! link markdownLinkTextDelimiter BoaLight1

hi! link markdownHeadingDelimiter BoaOrange
hi! link markdownUrl BoaPurple
hi! link markdownUrlTitleDelimiter BoaGreen

hi markdownLinkText guifg=#817466 guibg=none gui=underline
hi! link markdownIdDeclaration markdownLinkText

" }}}
" Haskell: {{{

hi! link haskellType BoaYellow
hi! link haskellIdentifier BoaLight1
hi! link haskellSeparator BoaLight1
hi! link haskellDelimiter BoaLight1
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
hi! link jsonBraces BoaLight1
hi! link jsonString BoaLight1

" }}}
" Terminal Colors: {{{

let g:terminal_color_0 = '#26201c'
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
