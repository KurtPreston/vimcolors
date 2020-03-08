" Name:         Xcode Light High Contrast
" Description:  A Vim port of the high contrast light Xcode 11 colourscheme
" Author:       Aramis Razzaghipour <aramisnoah@gmail.com>
" Maintainer:   Aramis Razzaghipour <aramisnoah@gmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Sun  8 Mar 12:46:37 2020

" Generated by Colortemplate v2.0.0

set background=light

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'xcodelighthc'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['#e5e5e5', '#ad1805', '#355d61', '#78492a',
        \ '#0058a1', '#9c2191', '#703daa', '#000000', '#8a99a6', '#ad1805',
        \ '#174145', '#78492a', '#003f73', '#9c2191', '#441ea1', '#000000']
  if has('nvim')
    let g:terminal_color_0 = '#e5e5e5'
    let g:terminal_color_1 = '#ad1805'
    let g:terminal_color_2 = '#355d61'
    let g:terminal_color_3 = '#78492a'
    let g:terminal_color_4 = '#0058a1'
    let g:terminal_color_5 = '#9c2191'
    let g:terminal_color_6 = '#703daa'
    let g:terminal_color_7 = '#000000'
    let g:terminal_color_8 = '#8a99a6'
    let g:terminal_color_9 = '#ad1805'
    let g:terminal_color_10 = '#174145'
    let g:terminal_color_11 = '#78492a'
    let g:terminal_color_12 = '#003f73'
    let g:terminal_color_13 = '#9c2191'
    let g:terminal_color_14 = '#441ea1'
    let g:terminal_color_15 = '#000000'
  endif
  if !exists('g:xcodelighthc_green_comments')
    let g:xcodelighthc_green_comments = 0
  endif
  if !exists('g:xcodelighthc_emph_types')
    let g:xcodelighthc_emph_types = 1
  endif
  if !exists('g:xcodelighthc_emph_funcs')
    let g:xcodelighthc_emph_funcs = 0
  endif
  if !exists('g:xcodelighthc_emph_idents')
    let g:xcodelighthc_emph_idents = 0
  endif
  if !exists('g:xcodelighthc_match_paren_style')
    let g:xcodelighthc_match_paren_style = 0
  endif
  if !exists('g:xcodelighthc_dim_punctuation')
    let g:xcodelighthc_dim_punctuation = 1
  endif
  hi Normal guifg=#000000 guibg=#ffffff guisp=NONE gui=NONE cterm=NONE
  hi Cursor guifg=#ffffff guibg=#000000 guisp=NONE gui=NONE cterm=NONE
  hi None guifg=#000000 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi CursorLineNr guifg=#000000 guibg=#ecf5ff guisp=NONE gui=NONE cterm=NONE
  hi EndOfBuffer guifg=#ffffff guibg=#ffffff guisp=NONE gui=NONE cterm=NONE
  hi FoldColumn guifg=#cdcdcd guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Folded guifg=#8a99a6 guibg=#e5e5e5 guisp=NONE gui=NONE cterm=NONE
  hi LineNr guifg=#cdcdcd guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi MatchParen guifg=#000000 guibg=#fef869 guisp=NONE gui=NONE cterm=NONE
  hi MatchWord guifg=#ffffff guibg=#156adf guisp=NONE gui=NONE cterm=NONE
  hi SignColumn guifg=#cdcdcd guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Signify guifg=#69a7fc guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Ignore guifg=#cdcdcd guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Pmenu guifg=#000000 guibg=#f4f4f4 guisp=NONE gui=NONE cterm=NONE
  hi PmenuSbar guifg=#f4f4f4 guibg=#f4f4f4 guisp=NONE gui=NONE cterm=NONE
  hi PmenuSel guifg=#ffffff guibg=#156adf guisp=NONE gui=NONE cterm=NONE
  hi PmenuThumb guifg=#e5e5e5 guibg=#e5e5e5 guisp=NONE gui=NONE cterm=NONE
  hi ErrorMsg guifg=#ad1805 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi ModeMsg guifg=#8a99a6 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi MoreMsg guifg=#9c2191 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Question guifg=#9c2191 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi WarningMsg guifg=#ad1805 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi ColorColumn guifg=NONE guibg=#f4f4f4 guisp=NONE gui=NONE cterm=NONE
  hi CursorColumn guifg=NONE guibg=#ecf5ff guisp=NONE gui=NONE cterm=NONE
  hi CursorLine guifg=NONE guibg=#ecf5ff guisp=NONE gui=NONE cterm=NONE
  hi QuickFixLine guifg=#ffffff guibg=#156adf guisp=NONE gui=NONE cterm=NONE
  hi StatusLine guifg=#000000 guibg=#e5e5e5 guisp=NONE gui=NONE cterm=NONE
  hi StatusLineNC guifg=#000000 guibg=#f4f4f4 guisp=NONE gui=NONE cterm=NONE
  hi VertSplit guifg=#f4f4f4 guibg=#f4f4f4 guisp=NONE gui=NONE cterm=NONE
  hi WildMenu guifg=#ffffff guibg=#156adf guisp=NONE gui=NONE cterm=NONE
  hi IncSearch guifg=#000000 guibg=#fef869 guisp=NONE gui=NONE cterm=NONE
  hi Search guifg=#000000 guibg=#e5e5e5 guisp=NONE gui=NONE cterm=NONE
  hi Visual guifg=NONE guibg=#b4d8fd guisp=NONE gui=NONE cterm=NONE
  hi DiffAdd guifg=NONE guibg=#edfff0 guisp=NONE gui=NONE cterm=NONE
  hi DiffChange guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi DiffDelete guifg=NONE guibg=#fef0f1 guisp=NONE gui=NONE cterm=NONE
  hi DiffText guifg=NONE guibg=#fdfae6 guisp=NONE gui=NONE cterm=NONE
  hi Comment guifg=#8a99a6 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Error guifg=#ffffff guibg=#ad1805 guisp=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#78492a guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Special guifg=#174145 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Statement guifg=#9c2191 guibg=NONE guisp=NONE gui=bold cterm=bold
  hi Character guifg=#272ad8 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Directory guifg=#0058a1 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Number guifg=#272ad8 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi SpecialComment guifg=#5c6873 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi String guifg=#ad1805 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Title guifg=#000000 guibg=NONE guisp=NONE gui=bold cterm=bold
  hi Todo guifg=#5c6873 guibg=NONE guisp=NONE gui=bold cterm=bold
  hi Underlined guifg=#0058a1 guibg=NONE guisp=NONE gui=underline cterm=underline
  hi SpellBad guifg=NONE guibg=NONE guisp=NONE gui=undercurl ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi SpellCap guifg=NONE guibg=NONE guisp=NONE gui=undercurl ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi SpellLocal guifg=NONE guibg=NONE guisp=NONE gui=undercurl ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi SpellRare guifg=NONE guibg=NONE guisp=NONE gui=undercurl ctermfg=NONE ctermbg=NONE cterm=undercurl
  let g:indentLine_color_gui  = '#cdcdcd'
  let g:indentLine_color_term = 252
  let g:limelight_conceal_guifg = '#8a99a6'
  let g:limelight_conceal_ctermfg = 246
  hi! link Terminal Normal
  hi! link TabLine StatusLineNC
  hi! link TabLineFill StatusLineNC
  hi! link TabLineSel StatusLine
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link VisualNOS Visual
  hi! link diffAdded DiffAdd
  hi! link diffBDiffer WarningMsg
  hi! link diffChanged DiffChange
  hi! link diffCommon WarningMsg
  hi! link diffDiffer WarningMsg
  hi! link diffFile Directory
  hi! link diffIdentical WarningMsg
  hi! link diffIndexLine Number
  hi! link diffIsA WarningMsg
  hi! link diffNoEOL WarningMsg
  hi! link diffOnly WarningMsg
  hi! link diffRemoved DiffDelete
  hi! link Constant LibraryIdent
  hi! link Float Number
  hi! link StringDelimiter String
  hi! link Identifier LocalIdent
  hi! link Function LibraryFunc
  hi! link Boolean Statement
  hi! link Conditional Statement
  hi! link Exception Statement
  hi! link Include Statement
  hi! link Keyword Statement
  hi! link Label Statement
  hi! link Repeat Statement
  hi! link StorageClass Statement
  hi! link Structure Statement
  hi! link Define PreProc
  hi! link Macro PreProc
  hi! link PreCondit PreProc
  hi! link Type LibraryType
  hi! link Debug Special
  hi! link SpecialChar Special
  hi! link Tag Special
  hi! link Noise Delimiter
  hi! link Quote StringDelimiter
  hi! link Conceal Ignore
  hi! link NonText Ignore
  hi! link SpecialKey Ignore
  hi! link Whitespace Ignore
  hi! link Searchlight IncSearch
  hi! link SignifySignAdd Signify
  hi! link SignifySignChange Signify
  hi! link SignifySignDelete Signify
  hi! link bibEntryKw LibraryIdent
  hi! link bibKey IdentifierDef
  hi! link bibType LibraryType
  hi! link cssAtRule Keyword
  hi! link cssAttr Keyword
  hi! link cssBraces cssNoise
  hi! link cssClassName LocalIdent
  hi! link cssColor cssAttr
  hi! link cssFunction None
  hi! link cssIdentifier LocalIdent
  hi! link cssProp LibraryType
  hi! link cssPseudoClassId LibraryIdent
  hi! link cssSelectorOp Operator
  hi! link gitcommitHeader Todo
  hi! link gitcommitOverflow Error
  hi! link gitcommitSummary Title
  hi! link goField LocalIdent
  hi! link goFunction FunctionDef
  hi! link goFunctionCall LibraryFunc
  hi! link goVarAssign LocalIdent
  hi! link goVarDefs IdentifierDef
  hi! link helpCommand helpExample
  hi! link helpExample markdownCode
  hi! link helpHeadline Title
  hi! link helpHyperTextEntry Comment
  hi! link helpHyperTextJump Underlined
  hi! link helpSectionDelim Ignore
  hi! link helpURL helpHyperTextJump
  hi! link helpVim Title
  hi! link htmlArg Special
  hi! link htmlEndTag Delimiter
  hi! link htmlLink Underlined
  hi! link htmlSpecialTagName htmlTagName
  hi! link htmlTag Delimiter
  hi! link htmlTagName Statement
  hi! link jsBuiltins LibraryFunc
  hi! link jsClassDefinition Typedef
  hi! link jsDomErrNo LibraryIdent
  hi! link jsDomNodeConsts LibraryIdent
  hi! link jsExceptions LibraryType
  hi! link jsFuncArgCommas jsNoise
  hi! link jsFuncName FunctionDef
  hi! link jsFunction jsStatement
  hi! link jsGlobalNodeObjects jsGlobalObjects
  hi! link jsGlobalObjects LibraryType
  hi! link jsObjectProp LocalIdent
  hi! link jsOperatorKeyword jsStatement
  hi! link jsThis jsStatement
  hi! link jsVariableDef IdentifierDef
  hi! link jsonKeyword jsonString
  hi! link jsonKeywordMatch Operator
  hi! link jsonQuote StringDelimiter
  hi! link rsForeignConst LibraryIdent
  hi! link rsForeignFunc LibraryFunc
  hi! link rsForeignType LibraryType
  hi! link rsFuncDef FunctionDef
  hi! link rsIdentDef IdentifierDef
  hi! link rsLibraryConst LibraryIdent
  hi! link rsLibraryFunc LibraryFunc
  hi! link rsLibraryType LibraryType
  hi! link rsUserConst LocalIdent
  hi! link rsUserFunc LocalFunc
  hi! link rsUserMethod LibraryFunc
  hi! link rsUserType LocalType
  hi! link scssAttribute cssNoise
  hi! link scssInclude Keyword
  hi! link scssMixin Keyword
  hi! link scssMixinName LocalFunc
  hi! link scssMixinParams cssNoise
  hi! link scssSelectorName cssClassName
  hi! link scssVariableAssignment Operator
  hi! link scssVariableValue Operator
  hi! link swiftFuncDef FunctionDef
  hi! link swiftIdentDef IdentifierDef
  hi! link swiftLibraryFunc LibraryFunc
  hi! link swiftLibraryProp LibraryIdent
  hi! link swiftLibraryType LibraryType
  hi! link swiftUserFunc LocalFunc
  hi! link swiftUserProp LocalIdent
  hi! link swiftUserType LocalType
  hi! link typescriptArrayMethod LibraryFunc
  hi! link typescriptArrowFunc Operator
  hi! link typescriptAssign Operator
  hi! link typescriptBOM LibraryType
  hi! link typescriptBOMWindowCons LibraryType
  hi! link typescriptBOMWindowMethod LibraryFunc
  hi! link typescriptBOMWindowProp LibraryType
  hi! link typescriptBinaryOp Operator
  hi! link typescriptBraces Delimiter
  hi! link typescriptCall None
  hi! link typescriptClassHeritage Type
  hi! link typescriptClassName TypeDef
  hi! link typescriptDOMDocMethod LibraryFunc
  hi! link typescriptDOMDocProp LibraryIdent
  hi! link typescriptDOMEventCons LibraryType
  hi! link typescriptDOMEventMethod LibraryFunc
  hi! link typescriptDOMEventMethod LibraryFunc
  hi! link typescriptDOMEventProp LibraryIdent
  hi! link typescriptDOMEventTargetMethod LibraryFunc
  hi! link typescriptDOMNodeMethod LibraryFunc
  hi! link typescriptDOMStorageMethod LibraryIdent
  hi! link typescriptEndColons Delimiter
  hi! link typescriptExport Keyword
  hi! link typescriptFuncName FunctionDef
  hi! link typescriptFuncTypeArrow typescriptArrowFunc
  hi! link typescriptGlobal typescriptPredefinedType
  hi! link typescriptIdentifier Keyword
  hi! link typescriptInterfaceName Typedef
  hi! link typescriptMember LocalFunc
  hi! link typescriptObjectLabel LocalIdent
  hi! link typescriptOperator Keyword
  hi! link typescriptParens Delimiter
  hi! link typescriptPredefinedType LibraryType
  hi! link typescriptTypeAnnotation Delimiter
  hi! link typescriptTypeReference typescriptUserDefinedType
  hi! link typescriptUserDefinedType LocalType
  hi! link typescriptVariable Keyword
  hi! link typescriptVariableDeclaration IdentifierDef
  hi! link vimAutoCmdSfxList LibraryType
  hi! link vimAutoEventList LocalIdent
  hi! link vimCmdSep Special
  hi! link vimCommentTitle SpecialComment
  hi! link vimContinue Delimiter
  hi! link vimFuncName LibraryFunc
  hi! link vimFunction FunctionDef
  hi! link vimHighlight Statement
  hi! link vimMapModKey vimNotation
  hi! link vimNotation LibraryType
  hi! link vimOption LibraryIdent
  hi! link vimUserFunc LocalFunc
  hi! link markdownBoldDelimiter markdownDelimiter
  hi! link markdownBoldItalicDelimiter markdownDelimiter
  hi! link markdownCodeBlock markdownCode
  hi! link markdownCodeDelimiter markdownDelimiter
  hi! link markdownHeadingDelimiter markdownDelimiter
  hi! link markdownItalicDelimiter markdownDelimiter
  hi! link markdownLinkDelimiter markdownDelimiter
  hi! link markdownLinkText None
  hi! link markdownLinkTextDelimiter markdownDelimiter
  hi! link markdownListMarker markdownDelimiter
  hi! link markdownRule markdownDelimiter
  hi! link markdownUrl Underlined
  hi markdownDelimiter guifg=#355d61 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi markdownCode guifg=#703daa guibg=#f4f4f4 guisp=NONE gui=NONE cterm=NONE
  if g:xcodelighthc_green_comments
    hi Comment guifg=#1f6300 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi SpecialComment guifg=#1f6300 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Todo guifg=#1f6300 guibg=NONE guisp=NONE gui=bold cterm=bold
  endif
  if g:xcodelighthc_emph_types
    hi Typedef guifg=#003f73 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi LocalType guifg=#174145 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi LibraryType guifg=#441ea1 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  else
    hi Typedef guifg=#0058a1 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi LocalType guifg=#355d61 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi LibraryType guifg=#703daa guibg=NONE guisp=NONE gui=NONE cterm=NONE
  endif
  if g:xcodelighthc_emph_funcs
    hi FunctionDef guifg=#003f73 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi LocalFunc guifg=#174145 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi LibraryFunc guifg=#441ea1 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  else
    hi FunctionDef guifg=#0058a1 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi LocalFunc guifg=#355d61 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi LibraryFunc guifg=#703daa guibg=NONE guisp=NONE gui=NONE cterm=NONE
  endif
  if g:xcodelighthc_emph_idents
    hi IdentifierDef guifg=#003f73 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi LocalIdent guifg=#174145 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi LibraryIdent guifg=#441ea1 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  else
    hi IdentifierDef guifg=#0058a1 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi LocalIdent guifg=#355d61 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi LibraryIdent guifg=#703daa guibg=NONE guisp=NONE gui=NONE cterm=NONE
  endif
  if g:xcodelighthc_match_paren_style
    hi MatchParen guifg=#000000 guibg=#fef869 guisp=NONE gui=NONE cterm=NONE
  else
    hi MatchParen guifg=#ffffff guibg=#156adf guisp=NONE gui=NONE cterm=NONE
  endif
  if g:xcodelighthc_dim_punctuation
    hi Delimiter guifg=#5c6873 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Operator guifg=#5c6873 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  else
    hi Delimiter guifg=#000000 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Operator guifg=#000000 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  endif
  unlet s:t_Co
  finish
endif

if s:t_Co >= 256
  if !exists('g:xcodelighthc_green_comments')
    let g:xcodelighthc_green_comments = 0
  endif
  if !exists('g:xcodelighthc_emph_types')
    let g:xcodelighthc_emph_types = 1
  endif
  if !exists('g:xcodelighthc_emph_funcs')
    let g:xcodelighthc_emph_funcs = 0
  endif
  if !exists('g:xcodelighthc_emph_idents')
    let g:xcodelighthc_emph_idents = 0
  endif
  if !exists('g:xcodelighthc_match_paren_style')
    let g:xcodelighthc_match_paren_style = 0
  endif
  if !exists('g:xcodelighthc_dim_punctuation')
    let g:xcodelighthc_dim_punctuation = 1
  endif
  hi Normal ctermfg=16 ctermbg=231 cterm=NONE
  hi Cursor ctermfg=231 ctermbg=16 cterm=NONE
  hi None ctermfg=16 ctermbg=NONE cterm=NONE
  hi CursorLineNr ctermfg=16 ctermbg=255 cterm=NONE
  hi EndOfBuffer ctermfg=231 ctermbg=231 cterm=NONE
  hi FoldColumn ctermfg=252 ctermbg=NONE cterm=NONE
  hi Folded ctermfg=246 ctermbg=254 cterm=NONE
  hi LineNr ctermfg=252 ctermbg=NONE cterm=NONE
  hi MatchParen ctermfg=16 ctermbg=227 cterm=NONE
  hi MatchWord ctermfg=231 ctermbg=26 cterm=NONE
  hi SignColumn ctermfg=252 ctermbg=NONE cterm=NONE
  hi Signify ctermfg=111 ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=252 ctermbg=NONE cterm=NONE
  hi Pmenu ctermfg=16 ctermbg=255 cterm=NONE
  hi PmenuSbar ctermfg=255 ctermbg=255 cterm=NONE
  hi PmenuSel ctermfg=231 ctermbg=26 cterm=NONE
  hi PmenuThumb ctermfg=254 ctermbg=254 cterm=NONE
  hi ErrorMsg ctermfg=124 ctermbg=NONE cterm=NONE
  hi ModeMsg ctermfg=246 ctermbg=NONE cterm=NONE
  hi MoreMsg ctermfg=126 ctermbg=NONE cterm=NONE
  hi Question ctermfg=126 ctermbg=NONE cterm=NONE
  hi WarningMsg ctermfg=124 ctermbg=NONE cterm=NONE
  hi ColorColumn ctermfg=NONE ctermbg=255 cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=255 cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=255 cterm=NONE
  hi QuickFixLine ctermfg=231 ctermbg=26 cterm=NONE
  hi StatusLine ctermfg=16 ctermbg=254 cterm=NONE
  hi StatusLineNC ctermfg=16 ctermbg=255 cterm=NONE
  hi VertSplit ctermfg=255 ctermbg=255 cterm=NONE
  hi WildMenu ctermfg=231 ctermbg=26 cterm=NONE
  hi IncSearch ctermfg=16 ctermbg=227 cterm=NONE
  hi Search ctermfg=16 ctermbg=254 cterm=NONE
  hi Visual ctermfg=NONE ctermbg=153 cterm=NONE
  hi DiffAdd ctermfg=NONE ctermbg=195 cterm=NONE
  hi DiffChange ctermfg=NONE ctermbg=NONE cterm=NONE
  hi DiffDelete ctermfg=NONE ctermbg=255 cterm=NONE
  hi DiffText ctermfg=NONE ctermbg=230 cterm=NONE
  hi Comment ctermfg=246 ctermbg=NONE cterm=NONE
  hi Error ctermfg=231 ctermbg=124 cterm=NONE
  hi PreProc ctermfg=94 ctermbg=NONE cterm=NONE
  hi Special ctermfg=23 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=126 ctermbg=NONE cterm=bold
  hi Character ctermfg=56 ctermbg=NONE cterm=NONE
  hi Directory ctermfg=25 ctermbg=NONE cterm=NONE
  hi Number ctermfg=56 ctermbg=NONE cterm=NONE
  hi SpecialComment ctermfg=241 ctermbg=NONE cterm=NONE
  hi String ctermfg=124 ctermbg=NONE cterm=NONE
  hi Title ctermfg=16 ctermbg=NONE cterm=bold
  hi Todo ctermfg=241 ctermbg=NONE cterm=bold
  hi Underlined ctermfg=25 ctermbg=NONE cterm=underline
  hi SpellBad ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi SpellCap ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi SpellLocal ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi SpellRare ctermfg=NONE ctermbg=NONE cterm=undercurl
  let g:indentLine_color_gui  = '#cdcdcd'
  let g:indentLine_color_term = 252
  let g:limelight_conceal_guifg = '#8a99a6'
  let g:limelight_conceal_ctermfg = 246
  hi! link Terminal Normal
  hi! link TabLine StatusLineNC
  hi! link TabLineFill StatusLineNC
  hi! link TabLineSel StatusLine
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link VisualNOS Visual
  hi! link diffAdded DiffAdd
  hi! link diffBDiffer WarningMsg
  hi! link diffChanged DiffChange
  hi! link diffCommon WarningMsg
  hi! link diffDiffer WarningMsg
  hi! link diffFile Directory
  hi! link diffIdentical WarningMsg
  hi! link diffIndexLine Number
  hi! link diffIsA WarningMsg
  hi! link diffNoEOL WarningMsg
  hi! link diffOnly WarningMsg
  hi! link diffRemoved DiffDelete
  hi! link Constant LibraryIdent
  hi! link Float Number
  hi! link StringDelimiter String
  hi! link Identifier LocalIdent
  hi! link Function LibraryFunc
  hi! link Boolean Statement
  hi! link Conditional Statement
  hi! link Exception Statement
  hi! link Include Statement
  hi! link Keyword Statement
  hi! link Label Statement
  hi! link Repeat Statement
  hi! link StorageClass Statement
  hi! link Structure Statement
  hi! link Define PreProc
  hi! link Macro PreProc
  hi! link PreCondit PreProc
  hi! link Type LibraryType
  hi! link Debug Special
  hi! link SpecialChar Special
  hi! link Tag Special
  hi! link Noise Delimiter
  hi! link Quote StringDelimiter
  hi! link Conceal Ignore
  hi! link NonText Ignore
  hi! link SpecialKey Ignore
  hi! link Whitespace Ignore
  hi! link Searchlight IncSearch
  hi! link SignifySignAdd Signify
  hi! link SignifySignChange Signify
  hi! link SignifySignDelete Signify
  hi! link bibEntryKw LibraryIdent
  hi! link bibKey IdentifierDef
  hi! link bibType LibraryType
  hi! link cssAtRule Keyword
  hi! link cssAttr Keyword
  hi! link cssBraces cssNoise
  hi! link cssClassName LocalIdent
  hi! link cssColor cssAttr
  hi! link cssFunction None
  hi! link cssIdentifier LocalIdent
  hi! link cssProp LibraryType
  hi! link cssPseudoClassId LibraryIdent
  hi! link cssSelectorOp Operator
  hi! link gitcommitHeader Todo
  hi! link gitcommitOverflow Error
  hi! link gitcommitSummary Title
  hi! link goField LocalIdent
  hi! link goFunction FunctionDef
  hi! link goFunctionCall LibraryFunc
  hi! link goVarAssign LocalIdent
  hi! link goVarDefs IdentifierDef
  hi! link helpCommand helpExample
  hi! link helpExample markdownCode
  hi! link helpHeadline Title
  hi! link helpHyperTextEntry Comment
  hi! link helpHyperTextJump Underlined
  hi! link helpSectionDelim Ignore
  hi! link helpURL helpHyperTextJump
  hi! link helpVim Title
  hi! link htmlArg Special
  hi! link htmlEndTag Delimiter
  hi! link htmlLink Underlined
  hi! link htmlSpecialTagName htmlTagName
  hi! link htmlTag Delimiter
  hi! link htmlTagName Statement
  hi! link jsBuiltins LibraryFunc
  hi! link jsClassDefinition Typedef
  hi! link jsDomErrNo LibraryIdent
  hi! link jsDomNodeConsts LibraryIdent
  hi! link jsExceptions LibraryType
  hi! link jsFuncArgCommas jsNoise
  hi! link jsFuncName FunctionDef
  hi! link jsFunction jsStatement
  hi! link jsGlobalNodeObjects jsGlobalObjects
  hi! link jsGlobalObjects LibraryType
  hi! link jsObjectProp LocalIdent
  hi! link jsOperatorKeyword jsStatement
  hi! link jsThis jsStatement
  hi! link jsVariableDef IdentifierDef
  hi! link jsonKeyword jsonString
  hi! link jsonKeywordMatch Operator
  hi! link jsonQuote StringDelimiter
  hi! link rsForeignConst LibraryIdent
  hi! link rsForeignFunc LibraryFunc
  hi! link rsForeignType LibraryType
  hi! link rsFuncDef FunctionDef
  hi! link rsIdentDef IdentifierDef
  hi! link rsLibraryConst LibraryIdent
  hi! link rsLibraryFunc LibraryFunc
  hi! link rsLibraryType LibraryType
  hi! link rsUserConst LocalIdent
  hi! link rsUserFunc LocalFunc
  hi! link rsUserMethod LibraryFunc
  hi! link rsUserType LocalType
  hi! link scssAttribute cssNoise
  hi! link scssInclude Keyword
  hi! link scssMixin Keyword
  hi! link scssMixinName LocalFunc
  hi! link scssMixinParams cssNoise
  hi! link scssSelectorName cssClassName
  hi! link scssVariableAssignment Operator
  hi! link scssVariableValue Operator
  hi! link swiftFuncDef FunctionDef
  hi! link swiftIdentDef IdentifierDef
  hi! link swiftLibraryFunc LibraryFunc
  hi! link swiftLibraryProp LibraryIdent
  hi! link swiftLibraryType LibraryType
  hi! link swiftUserFunc LocalFunc
  hi! link swiftUserProp LocalIdent
  hi! link swiftUserType LocalType
  hi! link typescriptArrayMethod LibraryFunc
  hi! link typescriptArrowFunc Operator
  hi! link typescriptAssign Operator
  hi! link typescriptBOM LibraryType
  hi! link typescriptBOMWindowCons LibraryType
  hi! link typescriptBOMWindowMethod LibraryFunc
  hi! link typescriptBOMWindowProp LibraryType
  hi! link typescriptBinaryOp Operator
  hi! link typescriptBraces Delimiter
  hi! link typescriptCall None
  hi! link typescriptClassHeritage Type
  hi! link typescriptClassName TypeDef
  hi! link typescriptDOMDocMethod LibraryFunc
  hi! link typescriptDOMDocProp LibraryIdent
  hi! link typescriptDOMEventCons LibraryType
  hi! link typescriptDOMEventMethod LibraryFunc
  hi! link typescriptDOMEventMethod LibraryFunc
  hi! link typescriptDOMEventProp LibraryIdent
  hi! link typescriptDOMEventTargetMethod LibraryFunc
  hi! link typescriptDOMNodeMethod LibraryFunc
  hi! link typescriptDOMStorageMethod LibraryIdent
  hi! link typescriptEndColons Delimiter
  hi! link typescriptExport Keyword
  hi! link typescriptFuncName FunctionDef
  hi! link typescriptFuncTypeArrow typescriptArrowFunc
  hi! link typescriptGlobal typescriptPredefinedType
  hi! link typescriptIdentifier Keyword
  hi! link typescriptInterfaceName Typedef
  hi! link typescriptMember LocalFunc
  hi! link typescriptObjectLabel LocalIdent
  hi! link typescriptOperator Keyword
  hi! link typescriptParens Delimiter
  hi! link typescriptPredefinedType LibraryType
  hi! link typescriptTypeAnnotation Delimiter
  hi! link typescriptTypeReference typescriptUserDefinedType
  hi! link typescriptUserDefinedType LocalType
  hi! link typescriptVariable Keyword
  hi! link typescriptVariableDeclaration IdentifierDef
  hi! link vimAutoCmdSfxList LibraryType
  hi! link vimAutoEventList LocalIdent
  hi! link vimCmdSep Special
  hi! link vimCommentTitle SpecialComment
  hi! link vimContinue Delimiter
  hi! link vimFuncName LibraryFunc
  hi! link vimFunction FunctionDef
  hi! link vimHighlight Statement
  hi! link vimMapModKey vimNotation
  hi! link vimNotation LibraryType
  hi! link vimOption LibraryIdent
  hi! link vimUserFunc LocalFunc
  hi! link markdownBoldDelimiter markdownDelimiter
  hi! link markdownBoldItalicDelimiter markdownDelimiter
  hi! link markdownCodeBlock markdownCode
  hi! link markdownCodeDelimiter markdownDelimiter
  hi! link markdownHeadingDelimiter markdownDelimiter
  hi! link markdownItalicDelimiter markdownDelimiter
  hi! link markdownLinkDelimiter markdownDelimiter
  hi! link markdownLinkText None
  hi! link markdownLinkTextDelimiter markdownDelimiter
  hi! link markdownListMarker markdownDelimiter
  hi! link markdownRule markdownDelimiter
  hi! link markdownUrl Underlined
  hi markdownDelimiter ctermfg=23 ctermbg=NONE cterm=NONE
  hi markdownCode ctermfg=91 ctermbg=255 cterm=NONE
  if g:xcodelighthc_green_comments
    hi Comment ctermfg=22 ctermbg=NONE cterm=NONE
    hi SpecialComment ctermfg=22 ctermbg=NONE cterm=NONE
    hi Todo ctermfg=22 ctermbg=NONE cterm=bold
  endif
  if g:xcodelighthc_emph_types
    hi Typedef ctermfg=25 ctermbg=NONE cterm=NONE
    hi LocalType ctermfg=23 ctermbg=NONE cterm=NONE
    hi LibraryType ctermfg=55 ctermbg=NONE cterm=NONE
  else
    hi Typedef ctermfg=25 ctermbg=NONE cterm=NONE
    hi LocalType ctermfg=23 ctermbg=NONE cterm=NONE
    hi LibraryType ctermfg=91 ctermbg=NONE cterm=NONE
  endif
  if g:xcodelighthc_emph_funcs
    hi FunctionDef ctermfg=25 ctermbg=NONE cterm=NONE
    hi LocalFunc ctermfg=23 ctermbg=NONE cterm=NONE
    hi LibraryFunc ctermfg=55 ctermbg=NONE cterm=NONE
  else
    hi FunctionDef ctermfg=25 ctermbg=NONE cterm=NONE
    hi LocalFunc ctermfg=23 ctermbg=NONE cterm=NONE
    hi LibraryFunc ctermfg=91 ctermbg=NONE cterm=NONE
  endif
  if g:xcodelighthc_emph_idents
    hi IdentifierDef ctermfg=25 ctermbg=NONE cterm=NONE
    hi LocalIdent ctermfg=23 ctermbg=NONE cterm=NONE
    hi LibraryIdent ctermfg=55 ctermbg=NONE cterm=NONE
  else
    hi IdentifierDef ctermfg=25 ctermbg=NONE cterm=NONE
    hi LocalIdent ctermfg=23 ctermbg=NONE cterm=NONE
    hi LibraryIdent ctermfg=91 ctermbg=NONE cterm=NONE
  endif
  if g:xcodelighthc_match_paren_style
    hi MatchParen ctermfg=16 ctermbg=227 cterm=NONE
  else
    hi MatchParen ctermfg=231 ctermbg=26 cterm=NONE
  endif
  if g:xcodelighthc_dim_punctuation
    hi Delimiter ctermfg=241 ctermbg=NONE cterm=NONE
    hi Operator ctermfg=241 ctermbg=NONE cterm=NONE
  else
    hi Delimiter ctermfg=16 ctermbg=NONE cterm=NONE
    hi Operator ctermfg=16 ctermbg=NONE cterm=NONE
  endif
  unlet s:t_Co
  finish
endif

" Color: base0       #ffffff ~
" Color: base1       #f4f4f4 ~
" Color: base2       #e5e5e5 ~
" Color: base3       #cdcdcd ~
" Color: base4       #8a99a6 ~
" Color: base5       #5c6873 ~
" Color: base6       #000000 ~
" Color: aqua        #b4d8fd ~
" Color: light_aqua  #ecf5ff ~
" Color: deep_blue0  #156adf ~
" Color: deep_blue1  #69a7fc ~
" Color: deep_yellow #fef869 ~
" Color: green_wash  #edfff0 ~
" Color: red_wash    #fef0f1 ~
" Color: yellow_wash #fdfae6 ~
" Color: blue        #0058a1 ~
" Color: brown       #78492a ~
" Color: dark_blue   #003f73 ~
" Color: green       #1f6300 ~
" Color: pink        #9c2191 ~
" Color: red         #ad1805 ~
" Color: strong_blue #272ad8 ~
" Color: dark_purple #441ea1 ~
" Color: purple      #703daa ~
" Color: dark_teal   #174145 ~
" Color: teal        #355d61 ~
" Background: light
" Term colors: base2     red  teal        brown
" Term colors: blue      pink purple      base6
" Term colors: base4     red  dark_teal   brown
" Term colors: dark_blue pink dark_purple base6
" vim: et ts=2 sw=2
