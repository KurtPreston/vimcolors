" Vim color scheme
"
" Name:        railscast.vim
" Modified:    Carlos Ramos, carakan
" License:     MIT
"
" Theme Color scheme
" #00BBEF
" #8EA8FC
" #00A1EC
" #0095CB
" #00869A
" #9F7BC3
" #D7B0FC
" #DD75C9
" #4C8077
" #4C4452
" #FFFADE
" #FFF7D0
" #FFC66D
" #F9F871
" #C3A138
" #D38E39
" #FFBD96
" #FFA78D
" #F47454
" #FC623B
" #CB725B
" #FFACC1
" #FFAAE7
" #30444E

let g:colors_name = 'new-railscasts'
hi clear
if exists('syntax_on')
  syntax reset
endif
highlight clear SignColumn
set background=dark

hi Normal       guifg=#FEF9E1 guibg=#202020
hi Cursor       guifg=#000000 guibg=#EAE3D9
hi CursorLine   guibg=#2D2720
hi ColorColumn  guibg=#2D2720
hi Search       guifg=#FFC66D guibg=#072f95 gui=bold
hi Visual       guibg=#003f72 gui=NONE
hi LineNr       guifg=#707070 guibg=#2d2d2d
hi StatusLine   guifg=#E4E4E4 guibg=#606060 gui=NONE ctermfg=254 ctermbg=241 cterm=NONE
hi StatusLineNC guifg=#585858 guibg=#303030 gui=NONE ctermfg=240 ctermbg=236 cterm=NONE
hi VertSplit    guibg=#212121 gui=bold guifg=#444444 ctermfg=white ctermbg=234
hi CursorLineNr guifg=#D7B0FC guibg=#2d2d2d gui=bold
hi SignColumn   guibg=#2D2D2D
hi User1        guifg=#EEEEEE guibg=#606060 gui=bold
hi User2        guifg=#FFAF00 guibg=#606060 gui=bold
hi User3        guifg=#15D300 guibg=#606060 gui=bold
hi User4        guifg=#870000 guibg=#606060 gui=bold
hi User5        guifg=#E4E4E4 guibg=#606060 gui=bold
hi User6        guifg=#E4E4E4 guibg=#606060 gui=bold
hi User7        guifg=#E4E4E4 guibg=#606060 gui=bold
hi User8        guifg=#E4E4E4 guibg=#606060 gui=bold
hi User9        guifg=#E4E4E4 guibg=#606060 gui=bold
hi! link        CursorColumn ColorColumn

" -----
hi Boolean     guifg=#D7B0FC ctermfg=107 gui=italic,bold
hi Comment     guifg=#BC7F23 guibg=NONE gui=italic
hi Constant    guifg=#0095CB guibg=NONE gui=NONE
hi Define      guifg=#FFA78D guibg=NONE gui=NONE
hi Delimiter   guifg=#519F50 guibg=NONE gui=NONE
hi Directory   guifg=#A5C261 gui=NONE
hi Error       guifg=NONE guibg=#662121 gui=NONE
hi Folded      guifg=#F6F3E8 guibg=#444444 gui=NONE
hi Function    guifg=#FFC66D gui=NONE guibg=NONE ctermfg=221 cterm=NONE
hi Identifier  guifg=#D7B0FC guibg=NONE ctermfg=73 cterm=NONE
hi Include     guifg=#F47454 guibg=NONE ctermfg=173 cterm=NONE
hi Keyword     guifg=#FFA78D ctermfg=172 cterm=NONE
hi Label       guifg=#6D9CBE gui=bold
hi Macro       guifg=#F47454 guibg=NONE ctermfg=172
hi NonText     guifg=#777777 gui=bold,italic
hi Number      guifg=#bde04c guibg=NONE
hi Operator    guifg=#FFC66D guibg=NONE
hi Pmenu       guifg=#F6F3E8 guibg=#444444 gui=NONE
hi PmenuSbar   guibg=#5A647E gui=NONE
hi PmenuSel    guifg=#000000 guibg=#A5C261 gui=NONE
hi PmenuThumb  guibg=#AAAAAA gui=NONE
hi PreCondit   guifg=#F47454 guibg=NONE
hi PreProc     guifg=#F47454 guibg=NONE
hi PreProc     guifg=#FFA78D guibg=NONE
hi Special     guifg=#FFA78D guibg=NONE
hi SpecialKey  guifg=#777777 guibg=NONE gui=NONE
hi Statement   guifg=#F47454 guibg=NONE
hi String      guifg=#74D155 guibg=NONE
hi Tag         guifg=#F47454 guibg=NONE
hi Title       guifg=#E9E1D7 guibg=NONE
hi Todo        guifg=#D38E39 guibg=NONE gui=bold,italic
hi Type        guifg=#F47454 guibg=NONE gui=NONE
hi WarningMsg  guifg=#DA4939 guibg=NONE gui=NONE

" Indentation
hi IndentGuidesOdd  ctermbg=239 guibg=#282828
hi IndentGuidesEven ctermbg=237 guibg=#332717

" Diffs
hi DiffAdd           guifg=#E4E4E4 guibg=#519F50
hi DiffChange        guifg=#EAE3D9 guibg=#870087
hi DiffDelete        guifg=#E4E4E4 guibg=#660000 gui=bold
hi DiffText          guifg=#FFC66D guibg=#FF0000 gui=bold
hi SignifySignAdd    guifg=#008700 guibg=#2d2d2d gui=NONE
hi SignifySignChange guifg=#C643C6 guibg=#2d2d2d gui=NONE
hi SignifySignDelete guifg=#FF5D4F guibg=#2d2d2d gui=NONE
hi diffAdded         guifg=#519F50 gui=bold
hi diffFile          guifg=#EAE3D9 guibg=NONE gui=bold
hi diffNewFile       guifg=#EAE3D9 guibg=NONE gui=bold
hi diffRemoved       guifg=#F47454 gui=italic

" Ruby https://github.com/vim-ruby/vim-ruby
hi rspecMatchers             guifg=#FFC66D guibg=NONE
hi rubyBlockParameter        guifg=#D7B0FC guibg=NONE
hi rubyClass                 guifg=#F47454 guibg=NONE gui=bold
hi rubyClassDeclaration      guifg=#F47454 gui=italic
hi rubyModuleDeclaration     guifg=#F47454 gui=italic
hi rubyConstant              guifg=#FC623B guibg=NONE gui=bold
hi rubyMethodName            guifg=#FFC66D guibg=NONE gui=bold
hi rubyPredefinedConstant    guifg=#F47454 guibg=NONE
hi rubyPseudoVariable        guifg=#DD75C9 guibg=NONE gui=italic,bold
hi rubyStringDelimiter       guifg=#87AF5F guibg=NONE
hi rubyHeredocDelimiter      guifg=#519F50 guibg=NONE gui=italic,bold
hi rubySymbol                guifg=#6D9CBE guibg=NONE gui=bold
hi rubyCurlyBlockDelimiter   guifg=#D38E39 guibg=NONE gui=bold
hi rubyInterpolation         guifg=#f9f3d6 guibg=NONE guibg=#2d2d2d
hi link rubyArrayDelimiter   rubyCurlyBlockDelimiter
hi link rubyBracketOperator  rubyCurlyBlockDelimiter
hi link rubyLambdaOperator   rubyCurlyBlockDelimiter
hi link rubyPercentSymbolDelimiter  rubyCurlyBlockDelimiter
hi link rubyPercentStringDelimiter  rubyCurlyBlockDelimiter
hi link rubyPercentRegexpDelimiter  rubyCurlyBlockDelimiter
hi link rubySuperClassOperator      rubyMethodName
hi link rubyProcOperator            rubyMethodName
hi link rubyDotOperator             rspecMatchers
hi link rubyBlockParameterList      rubyBlockParameter
hi link rubyInstanceVariable        rubyBlockParameter
hi link rubyLocalVariableOrMethod   rubyBlockParameter
hi link rubyDefine                  rubyClass
hi link rubyGemfileMethod           rubyClass
" Javascript https://github.com/pangloss/vim-javascript
hi jsArrowFunction       guifg=#FFA78D gui=bold
hi jsBrackets            guifg=#D38E39 gui=bold
hi jsDestructuringBraces guifg=#D38E39 gui=bold
hi jsExceptions          guifg=#F47454 gui=bold,italic
hi jsFuncBraces          guifg=#D38E39 gui=bold
hi jsFuncParens          guifg=#D38E39 gui=bold
hi jsFunction            guifg=#FFAAE7 gui=italic
hi jsFunctionKey         guifg=#FFA78D gui=italic
hi jsGlobalNodeObjects   guifg=#F47454 gui=bold,italic
hi jsIfElseBraces        guifg=#D38E39 gui=bold
hi jsModuleBraces        guifg=#D38E39 gui=bold
hi jsNoise               guifg=#CB725B gui=bold
hi jsNull                guifg=#FFA78D gui=italic
hi jsObjectBraces        guifg=#D38E39 gui=bold
hi jsObjectFuncName      guifg=#FFC66D gui=bold,italic guibg=NONE
hi jsObjectKey           guifg=#6D9CBE gui=bold
hi jsObjectSeparator     guifg=#F47454 gui=bold
hi jsOperatorKeyword     guifg=#FFAAE7 gui=italic
hi jsParens              guifg=#D38E39 gui=bold
hi jsStorageClass        guifg=#FFAAE7 gui=italic
hi jsTemplateBraces      guifg=#519F50 gui=bold
hi jsThis                guifg=#d7b0fc gui=bold,italic
hi link jsGlobalObjects  Type
hi link jsObjectProp     Type
hi link javaScriptNumber Number
hi link javaScriptFunction jsFunction
hi link javaScriptBraces jsBrackets
hi link javaScriptParens jsBrackets

" Typescript https://github.com/HerringtonDarkholme/yats.vim
hi typescriptAccessibilityModifier guifg=#FFAAE7 gui=italic
hi typescriptArrowFunc             guifg=#FFA78D gui=italic
hi typescriptArrowFuncDef          guifg=#FFC66D gui=bold,italic guibg=NONE
hi typescriptAsyncFuncKeyword      guifg=#47a3e5 gui=italic
hi typescriptBraces                guifg=#D38E39 guibg=NONE gui=bold
hi typescriptComputedPropertyName  guifg=#FFC66D gui=bold,italic guibg=NONE
hi typescriptEndColons             guifg=#D38E39 gui=bold
hi typescriptExport                guifg=#F47454 guibg=NONE gui=NONE
hi typescriptFuncName              guifg=#FFC66D gui=bold,italic guibg=NONE
hi typescriptIdentifier            guifg=#d7b0fc gui=bold,italic
hi typescriptImport                guifg=#F47454 guibg=NONE gui=NONE
hi typescriptMethodName            guifg=#FFC66D gui=bold,italic guibg=NONE
hi typescriptObjectColon           guifg=#D38E39 guibg=NONE gui=bold
hi typescriptObjectLabel           guifg=#6D9CBE gui=bold
hi typescriptPredefinedType        guifg=#F47454 gui=italic
hi typescriptReserved              guifg=#F47454 gui=italic
hi typescriptType                  guifg=#F47454 gui=italic
hi typescriptVariable              guifg=#FFAAE7 gui=italic

" Python
hi pythonDoctest      guifg=#00869A guibg=NONE
hi pythonDoctestValue guifg=#D7B0FC guibg=NONE
hi pythonExceptions   guifg=#FFBD96 guibg=NONE
hi vimHiAttrib        guifg=#FFF7D0 guibg=NONE
hi vimHiGroup         guifg=#FFC66D guibg=NONE

" Elixir https://github.com/elixir-editors/vim-elixir
hi elixirModuleDeclaration guifg=#FC623B gui=italic
hi elixirAtom              guifg=#6D9CBE gui=bold
hi elixirBlockDefinition   guifg=#F47454 gui=bold
hi elixirDefine            guifg=#F47454 gui=bold
hi elixirDocString         guifg=#FFF7D0 guibg=#383838 gui=bold,italic
hi elixirExUnitAssert      guifg=#D38E39 gui=bold
hi elixirExUnitMacro       guifg=#F47454 gui=bold
hi elixirInclude           guifg=#F47454 gui=bold,italic
hi elixirKeyword           guifg=#F47454 gui=bold
hi elixirMap               guifg=#D38E39 gui=bold
hi elixirMapDelimiter      guifg=#D38E39 gui=bold
hi elixirModuleDefine      guifg=#F47454 gui=bold
hi elixirOperator          guifg=#FFC66D gui=bold
hi elixirPrivateDefine     guifg=#F47454 gui=bold,italic
hi elixirPseudoVariable    guifg=#e2ae5f gui=bold
hi elixirStructDelimiter   guifg=#D38E39 gui=bold
hi elixirTuple             guifg=#D38E39 gui=bold
hi elixirTupleDelimiter    guifg=#D38E39 gui=bold
hi elixirStringDelimiter   guifg=#74D155 gui=bold
hi elixirFunctionCall      guifg=#fcf3c9

" CSS
hi cssAttr           guifg=#FFC66D
hi cssClassName      guifg=#FFAAE7 gui=italic
hi cssColor          guifg=#FFC66D
hi cssIdentifier     guifg=#47A3E5 gui=italic
hi cssImportant      guifg=#47A3E5 gui=italic
hi cssIncludeKeyword guifg=#D7B0FC gui=bold,italic
hi cssNoise          guifg=#D38E39 gui=bold
hi scssSemicolon     guifg=#D38E39 gui=bold
hi cssProp           guifg=#6D9CBE gui=bold
hi cssVendor         guifg=#6D9CBE gui=bold,italic
hi scssSelectorName  guifg=#FFAAE7 gui=italic
hi cssAttributeSelector guifg=#FFC66D gui=italic

" JSON
hi jsonBoolean       guifg=#47A3E5 gui=italic
hi jsonNull          guifg=#47A3E5 gui=italic

" yaml
hi yamlKey           guifg=#D7B0FC ctermfg=189 gui=bold

" Mail
hi mailEmail         guifg=#87AF5F ctermfg=107 gui=italic cterm=underline
hi mailHeaderKey     guifg=#FFC66D ctermfg=221
hi! link mailSubject mailHeaderKey

" Spell
hi MatchParen guifg=#FFC66D guibg=#072f95 gui=bold
hi Question   guibg=#420101 gui=NONE
hi SpellBad   guibg=#420101 gui=NONE guisp=red
hi SpellCap   guibg=#420101 gui=NONE
hi SpellLocal guibg=#420101 gui=NONE
hi SpellRare  guibg=#420101 gui=NONE

" HTML - XML
hi htmlArg          guifg=#FF8700 gui=italic
hi link htmlEndTag  xmlEndTag
hi link htmlTag     xmlTag
hi link htmlTagN    xmlTag
hi link htmlTagName xmlTagName
hi xmlEndTag        guifg=#FFC66D
hi xmlTag           guifg=#FFC66D
hi xmlTagName       guifg=#FFC66D
hi mkdHeading       guifg=#D38E39 gui=bold

" HBS https://github.com/joukevandermaas/vim-ember-hbs
hi hbsArg           guifg=#F47454 gui=italic
hi hbsBuiltInHelper guifg=#F47454 gui=bold,italic
hi hbsHandles       guifg=#D38E39 gui=bold
hi hbsKeyword       guifg=#0095CB gui=italic
hi hbsMustacheName  guifg=#FFC66D gui=NONE
hi hbsPencilName    guifg=#D38E39 gui=bold
hi link erubyDelimiter hbsHandles
hi link eelixirDelimiter hbsHandles

hi ALEErrorSign        guibg=#2d2d2d guifg=#F47454 gui=NONE
hi ALEInfoSign         guibg=#2d2d2d guifg=#0095CB gui=NONE
hi ALEStyleErrorSign   guibg=#2d2d2d guifg=#F47454 gui=NONE
hi ALEStyleWarningSign guibg=#2d2d2d guifg=#FFC66D gui=NONE
hi ALEWarningSign      guibg=#2d2d2d guifg=#FFC66D gui=NONE
hi ALEWarningSignLineNr  gui=NONE
hi ALEErrorSignLineNr  gui=NONE
hi ALEInfoSignLineNr  gui=NONE
hi ALEStyleWarningSignLineNr  gui=NONE
hi ALEStyleErrorSignLineNr  gui=NONE

hi BookmarkSign        guibg=#202020 guifg=#FFC66D gui=NONE
hi checkbox            guifg=#3A3A3A guibg=NONE gui=NONE
hi checkboxDone        guifg=#15D300 guibg=NONE gui=BOLD
hi checkboxNotDone     guifg=#005FDF guibg=NONE gui=BOLD

" Specific to PMV.vim
hi PMVname        guifg=#79AFD7 guibg=NONE gui=bold,italic
hi PMVstring      guifg=#74D155 guibg=NONE gui=bold
hi PMVvalueNumber guifg=#FFC66D guibg=NONE gui=italic
