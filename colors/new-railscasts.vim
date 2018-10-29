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
" #FFC66D this is the old
" #F9F871
" #C3A138
" #D38E39
" #FFBD96
" #FFA78D
" #F47454
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
hi Visual       guibg=#004568 ctermbg=60
hi LineNr       guifg=#707070 guibg=#2d2d2d ctermfg=242
hi StatusLine   guifg=#E4E4E4 guibg=#606060 gui=NONE ctermfg=254 ctermbg=241 cterm=NONE
hi StatusLineNC guifg=#585858 guibg=#303030 gui=NONE ctermfg=240 ctermbg=236 cterm=NONE
hi VertSplit    guibg=#212121 gui=bold guifg=#444444 ctermfg=white ctermbg=234
hi CursorLineNr guifg=#D7B0FC guibg=#2d2d2d ctermfg=248
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

" Folds
" -----
hi Folded                    guifg=#F6F3E8 guibg=#444444 gui=NONE

" Invisible Characters
" ------------------
hi NonText                   guifg=#777777 gui=NONE
hi SpecialKey                guifg=#777777 gui=NONE

" Misc
" ----
" directory names and other special names in listings
hi Directory                 guifg=#A5C261 gui=NONE

" Popup Menu
" ----------
hi Pmenu       guifg=#F6F3E8 guibg=#444444 gui=NONE
hi PmenuSel    guifg=#000000 guibg=#A5C261 gui=NONE
hi PMenuSbar   guibg=#5A647E gui=NONE
hi PMenuThumb  guibg=#AAAAAA gui=NONE
hi Comment     guifg=#BC7F23 guibg=NONE gui=italic
hi Todo        guifg=#D38E39 guibg=NONE gui=bold,italic
hi Constant    guifg=#0095CB guibg=NONE gui=NONE
hi Define      guifg=#D38E39 guibg=NONE gui=NONE
hi Delimiter   guifg=#519F50 guibg=NONE gui=NONE
hi WarningMsg  guifg=#DA4939 guibg=NONE gui=NONE
hi Error       guifg=#EAE3D9 guibg=#990000 ctermfg=221 ctermbg=88
hi Function    guifg=#FFC66D gui=NONE guibg=NONE ctermfg=221 cterm=NONE
hi Identifier  guifg=#D7B0FC guibg=NONE ctermfg=73 cterm=NONE
hi Include     guifg=#F47454 guibg=NONE ctermfg=173 cterm=NONE
hi Keyword     guifg=#FFA78D ctermfg=172 cterm=NONE
hi Macro       guifg=#F47454 guibg=NONE ctermfg=172
hi Number      guifg=#A5C261 ctermfg=107
hi Boolean     guifg=#47A3E5 ctermfg=107 gui=italic
hi PreCondit   guifg=#F47454 guibg=NONE ctermfg=172 cterm=NONE
hi PreProc     guifg=#F47454 guibg=NONE ctermfg=103
hi Statement   guifg=#F47454 guibg=NONE ctermfg=172 cterm=NONE
hi String      guifg=#74D155 guibg=NONE ctermfg=107
hi Title       guifg=#E9E1D7 guibg=NONE ctermfg=15
hi Type        guifg=#F47454 guibg=NONE gui=NONE
hi PreProc     guifg=#FFA78D guibg=NONE ctermfg=208
hi Special     guifg=#FFA78D guibg=NONE ctermfg=22
hi Operator    guifg=#FFC66D guibg=NONE ctermfg=73
hi Tag         guifg=#F47454 guibg=NONE ctermfg=73
hi Label       guifg=#6D9CBE gui=bold

" Indentation
hi IndentGuidesOdd  ctermbg=239 guibg=#282828
hi IndentGuidesEven ctermbg=237 guibg=#332717

" Diffs
hi DiffAdd           guifg=#E4E4E4 guibg=#519F50 ctermfg=254 ctermbg=22
hi DiffChange        guifg=#EAE3D9 guibg=#870087 ctermfg=15 ctermbg=90
hi DiffDelete        guifg=#E4E4E4 guibg=#660000 gui=bold ctermfg=16 ctermbg=52 cterm=bold
hi DiffText          guifg=#FFC66D guibg=#FF0000 gui=bold ctermfg=15 ctermbg=9 cterm=bold
hi SignifySignAdd    guifg=#008700 guibg=#2d2d2d gui=NONE
hi SignifySignChange guifg=#C643C6 guibg=#2d2d2d gui=NONE
hi SignifySignDelete guifg=#FF5D4F guibg=#2d2d2d gui=NONE
hi diffAdded         guifg=#008700 ctermfg=28
hi diffFile          guifg=#EAE3D9 guibg=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi diffNewFile       guifg=#EAE3D9 guibg=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi diffRemoved       guifg=#800000 ctermfg=1

" Ruby https://github.com/vim-ruby/vim-ruby
hi rubyBlockParameter        guifg=#D7B0FC
hi rubyBoolean               guifg=#47A3E5 gui=italic
hi rubyClass                 guifg=#D38E39
hi rubyConstant              guifg=#F47454
hi rubyInstanceVariable      guifg=#D7B0FC
hi rubyInterpolation         guifg=#EA8C3F
hi rubyLocalVariableOrMethod guifg=#D7B0FC
hi rubyPredefinedConstant    guifg=#F47454
hi rubyPseudoVariable        guifg=#47A3E5 gui=italic,bold
hi rubyStringDelimiter       guifg=#87AF5F
hi rubySymbol                guifg=#6D9CBE gui=bold

" Javascript https://github.com/pangloss/vim-javascript
hi jsArrowFunction      guifg=#FFA78D
hi jsFunction           guifg=#FFA78D ctermfg=221 gui=italic
hi jsFunctionKey        guifg=#FFA78D gui=italic
hi jsNoise              guifg=#CB725B gui=bold
hi jsNull               guifg=#FFA78D gui=italic
hi jsObjectFuncName     guifg=#FFC66D gui=bold,italic guibg=NONE
hi jsObjectKey          guifg=#6D9CBE gui=bold
hi jsOperatorKeyword    guifg=#F9F871 gui=italic
hi jsStorageClass       guifg=#FFAAE7 gui=italic
hi jsThis               guifg=#d7b0fc gui=bold,italic
hi link jsGlobalObjects Type
hi link jsObjectProp    Type

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
hi pythonDoctest      guifg=#8787ff ctermfg=105
hi pythonDoctestValue guifg=#87d7af ctermfg=115
hi pythonExceptions   guifg=#ffaf87 ctermfg=216

" Elixir https://github.com/elixir-editors/vim-elixir
hi elixirAtom           guifg=#6D9CBE gui=bold
hi elixirDefine         guifg=#D38E39 gui=bold
hi elixirMap            guifg=#FFA78D gui=bold
hi elixirMapDelimiter   guifg=#D38E39 gui=bold
hi elixirModuleDefine   guifg=#D38E39 gui=bold
hi elixirOperator       guifg=#FFC66D
hi elixirPrivateDefine  guifg=#D38E39 gui=bold,italic
hi elixirTuple          guifg=#FFA78D gui=bold
hi elixirTupleDelimiter guifg=#D38E39 gui=bold

" CSS
hi cssAttr            guifg=#FFC66D
hi cssClassName       guifg=#FFAAE7 gui=italic
hi cssColor           guifg=#FFC66D
hi cssIdentifier      guifg=#47A3E5 gui=italic
hi cssImportant       guifg=#47A3E5 gui=italic
hi cssIncludeKeyword  guifg=#D7B0FC gui=bold,italic
hi cssNoise           guifg=#D38E39 gui=bold
hi cssProp            guifg=#6D9CBE gui=bold
hi cssVendor          guifg=#6D9CBE gui=bold,italic

" JSON
hi jsonBoolean        guifg=#47A3E5 gui=italic
hi jsonNull           guifg=#47A3E5 gui=italic

" yaml
hi yamlKey            guifg=#D7B0FC ctermfg=189 gui=bold

" Mail
hi mailEmail          guifg=#87AF5F ctermfg=107 gui=italic cterm=underline
hi mailHeaderKey      guifg=#FFC66D ctermfg=221
hi! link mailSubject mailHeaderKey

" Spell
hi SpellBad   guibg=#420101 gui=NONE guisp=red
hi SpellRare  guibg=#420101 gui=NONE
hi SpellCap   guibg=#420101 gui=NONE
hi SpellLocal guibg=#420101 gui=NONE
hi MatchParen guifg=#FFC66D guibg=#072f95 gui=bold
hi Question   guibg=#420101 gui=NONE

" XML
hi xmlTag           guifg=#FFC66D ctermfg=179
hi xmlTagName       guifg=#FFC66D ctermfg=179
hi xmlEndTag        guifg=#FFC66D ctermfg=179

hi link htmlTag     xmlTag
hi link htmlTagName xmlTagName
hi link htmlEndTag  xmlEndTag
hi htmlArg          guifg=#FF8700 gui=italic

" HBS https://github.com/joukevandermaas/vim-ember-hbs
hi hbsArg           guifg=#F47454 gui=italic
hi hbsBuiltInHelper guifg=#FFA78D gui=bold,italic
hi hbsHandles       guifg=#D38E39 gui=bold
hi hbsKeyword       guifg=#0095CB gui=italic
hi hbsMustacheName  guifg=#FFC66D gui=NONE
hi hbsPencilName    guifg=#D38E39 gui=bold

hi checkbox         guifg=#3A3A3A guibg=NONE gui=NONE
hi checkboxDone     guifg=#15D300 guibg=NONE gui=BOLD
hi checkboxNotDone  guifg=#005FDF guibg=NONE gui=BOLD
