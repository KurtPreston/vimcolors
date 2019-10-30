hi clear
set bg=dark

if exists('syntax_on')
  syntax reset
endif

let colors_name = 'jlc'

if has('gui_running')
  hi Normal                   cterm=NONE           ctermfg=12   ctermbg=8    gui=NONE           guifg=#839496 guibg=#002b36 
endif

hi Constant                 cterm=NONE           ctermfg=6    ctermbg=NONE gui=NONE           guifg=#2aa198 guibg=NONE    
hi Identifier               cterm=NONE           ctermfg=4    ctermbg=NONE gui=NONE           guifg=#268bd2 guibg=NONE    
hi Statement                cterm=bold           ctermfg=NONE ctermbg=NONE gui=bold           guifg=NONE    guibg=NONE    
hi Type                     cterm=NONE           ctermfg=2    ctermbg=NONE gui=NONE           guifg=#859900 guibg=NONE    
hi Special                  cterm=NONE           ctermfg=13   ctermbg=NONE gui=NONE           guifg=#6c71c4 guibg=NONE    
hi Tag                      cterm=underline      ctermfg=4    ctermbg=NONE gui=underline      guifg=#268bd2 guibg=NONE    
hi Error                    cterm=bold           ctermfg=9    ctermbg=NONE gui=bold           guifg=#cb4b16 guibg=NONE    
hi Folded                   cterm=bold,underline ctermfg=NONE ctermbg=0    gui=bold,underline guifg=NONE    guibg=#073642 
hi LineNr                   cterm=NONE           ctermfg=10   ctermbg=0    gui=NONE           guifg=#586e75 guibg=#073642 
hi CursorLine               cterm=NONE           ctermfg=NONE ctermbg=0    gui=NONE           guifg=NONE    guibg=#073642 
hi CursorLineNr             cterm=NONE           ctermfg=3    ctermbg=0    gui=NONE           guifg=#b58900 guibg=#073642 
hi Visual                   cterm=reverse        ctermfg=NONE ctermbg=NONE gui=reverse        guifg=NONE    guibg=NONE    
hi WildMenu                 cterm=bold,reverse   ctermfg=13   ctermbg=NONE gui=bold,reverse   guifg=#6c71c4 guibg=NONE    
hi Pmenu                    cterm=reverse        ctermfg=NONE ctermbg=NONE gui=reverse        guifg=NONE    guibg=NONE    
hi PmenuSel                 cterm=reverse        ctermfg=3    ctermbg=NONE gui=reverse        guifg=#b58900 guibg=NONE    
hi PmenuSbar                cterm=NONE           ctermfg=NONE ctermbg=0    gui=NONE           guifg=NONE    guibg=#073642 
hi PmenuThumb               cterm=NONE           ctermfg=NONE ctermbg=10   gui=NONE           guifg=NONE    guibg=#586e75 
hi Search                   cterm=underline      ctermfg=3    ctermbg=NONE gui=underline      guifg=#b58900 guibg=NONE    
hi IncSearch                cterm=reverse        ctermfg=3    ctermbg=NONE gui=reverse        guifg=#b58900 guibg=NONE    
hi Todo                     cterm=bold           ctermfg=10   ctermbg=NONE gui=bold           guifg=#586e75 guibg=NONE    
hi Directory                cterm=NONE           ctermfg=4    ctermbg=NONE gui=NONE           guifg=#268bd2 guibg=NONE    
hi MoreMsg                  cterm=NONE           ctermfg=2    ctermbg=NONE gui=NONE           guifg=#859900 guibg=NONE    
hi Question                 cterm=NONE           ctermfg=2    ctermbg=NONE gui=NONE           guifg=#859900 guibg=NONE    
hi WarningMsg               cterm=NONE           ctermfg=3    ctermbg=NONE gui=NONE           guifg=#b58900 guibg=NONE    
hi FoldColumn               cterm=bold           ctermfg=NONE ctermbg=0    gui=bold           guifg=NONE    guibg=#073642 
hi DiffAdd                  cterm=NONE           ctermfg=2    ctermbg=0    gui=NONE           guifg=#859900 guibg=#073642 
hi DiffChange               cterm=NONE           ctermfg=3    ctermbg=0    gui=NONE           guifg=#b58900 guibg=#073642 
hi DiffDelete               cterm=NONE           ctermfg=1    ctermbg=0    gui=NONE           guifg=#dc322f guibg=#073642 
hi DiffText                 cterm=NONE           ctermfg=4    ctermbg=0    gui=NONE           guifg=#268bd2 guibg=#073642 
hi SpellBad                 cterm=reverse        ctermfg=1    ctermbg=NONE gui=reverse        guifg=#dc322f guibg=NONE    
hi SpellCap                 cterm=reverse        ctermfg=4    ctermbg=NONE gui=reverse        guifg=#268bd2 guibg=NONE    
hi SpellRare                cterm=reverse        ctermfg=13   ctermbg=NONE gui=reverse        guifg=#6c71c4 guibg=NONE    
hi SpellLocal               cterm=reverse        ctermfg=5    ctermbg=NONE gui=reverse        guifg=#d33682 guibg=NONE    
hi ColorColumn              cterm=NONE           ctermfg=10   ctermbg=NONE gui=NONE           guifg=#586e75 guibg=NONE    
hi MatchParen               cterm=underline      ctermfg=NONE ctermbg=NONE gui=underline      guifg=NONE    guibg=NONE    
hi StatusLine               cterm=reverse        ctermfg=4    ctermbg=NONE gui=reverse        guifg=#268bd2 guibg=NONE    
hi StatusLineNC             cterm=reverse        ctermfg=NONE ctermbg=NONE gui=reverse        guifg=NONE    guibg=NONE    
hi Underlined               cterm=underline      ctermfg=NONE ctermbg=NONE gui=underline      guifg=NONE    guibg=NONE    
hi Comment                  cterm=NONE           ctermfg=10   ctermbg=NONE gui=NONE           guifg=#586e75 guibg=NONE    

hi! link PreProc Special
hi! link NonText Comment
hi! link Operator Normal
hi! link SpecialKey SpecialChar
hi! link EndOfBuffer Comment
hi! link Ignore Comment
hi! link ErrorMsg Error
hi! link SignColumn FoldColumn
hi! link TabLine Title
hi! link CursorColumn CursorLine
hi! link NvimInternalError Error
hi! link Whitespace Comment
hi! link Delimiter Normal
hi! link Debug PreProc
hi! link Conceal Comment
hi! link Label Statement
hi! link Title Statement

" Filetypes {{{1
" xxd {{{2
hi! link xxdAddress Label
hi! link xxdSep Normal
hi! link xxdDot Comment
hi! link xxdAscii Constant
" 2}}}

" html {{{2
hi! link htmlTag Identifier
hi! link htmlTagName htmlTag
hi! link htmlEndTag htmlTag
hi! link htmlArg Special
hi! link htmlItalic Special
" 2}}}

" json {{{2
hi! link jsonKeyword Keyword
hi! link jsonQuote jsonString
" 2}}}

" ruby {{{2
hi! link rubyDefine Statement
hi! link rubyStringDelimiter rubyString
hi! link rubyRegexpDelimiter rubyRegexp
hi! link rubyInterpolationDelimiter SpecialChar
hi! link rubyInclude Statement
hi! link rubyConstant Identifier
hi! link rubyInstanceVariable Identifier
hi! link rubySymbol Special
hi! link rubyClassVariable Identifier
hi! link rubyMacro Statement
hi yardGenericTag           cterm=bold           ctermfg=10   ctermbg=NONE gui=bold           guifg=#586e75 guibg=NONE    
hi yardGenericDirective     cterm=bold           ctermfg=10   ctermbg=NONE gui=bold           guifg=#586e75 guibg=NONE    
hi yardType                 cterm=bold           ctermfg=10   ctermbg=NONE gui=bold           guifg=#586e75 guibg=NONE    
hi! link rubyClassName Typedef
hi! link rubyMethodName Typedef
hi! link rubyEval Normal
hi! link rubyEnglishBooleanOperator Keyword
" 2}}}

" vim {{{2
hi! link vimOption Identifier
hi! link vimSubst Identifier
hi! link vimSetSeq Special
hi! link vimCommentTitle Todo
hi! link vimGroupName Identifier
hi! link vimGroup vimGroupName
hi! link vimHiAttrib Special
hi! link vimEnvvar Identifier
hi! link vimParenSep Delimiter
hi! link vimMapModKey SpecialChar
hi! link vimNotation SpecialChar
" 2}}}

" crystal {{{2
hi! link crystalDefine Statement
hi! link crystalStringDelimiter crystalString
hi! link crystalRegexpDelimiter crystalRegexp
hi! link crystalInterpolationDelim SpecialChar
hi! link crystalInclude Statement
hi! link crystalConstant Normal
hi! link crystalSymbol Special
hi! link crystalInstanceVariable Identifier
hi! link crystalClassVariable Identifier
hi! link crystalClassName Typedef
hi! link crystalModuleName Typedef
hi! link crystalMethodName Typedef
hi! link crystalEnumName Typedef
" 2}}}

" csv {{{2
hi! link CSVDelimiter Comment
hi! link CSVColumnOdd Constant
hi! link CSVColumnEven Special
hi! link CSVColumnHeaderOdd CSVColumnOdd
hi! link CSVColumnHeaderEven CSVColumnEven
" 2}}}

" make {{{2
hi! link makeCommands Normal
" 2}}}

" coffee {{{2
hi! link coffeeConstant Identifier
hi! link coffeeCurly Delimiter
hi! link coffeeObjAssign Special
hi! link coffeeSpecialOp coffeeOperator
hi! link coffeeExtendedOp coffeeOperator
hi! link coffeeObject Identifier
hi! link coffeeSpecialVar Identifier
hi! link coffeeGlobal Identifier
hi! link coffeeBoolean Identifier
hi! link coffeeEmbedDelim SpecialChar
" 2}}}

" help {{{2
hi! link helpHyperTextJump Tag
hi! link helpExample String
hi! link helpHyperTextEntry Comment
hi! link helpSectionDelim Normal
hi! link helpHeader Label
hi! link helpCommand String
" 2}}}

" sh {{{2
hi! link shDeref Identifier
hi! link shDerefSimple shDeref
hi! link shCmdSubRegion Special
hi! link shCommandSub String
hi! link shQuote String
" 2}}}

" zsh {{{2
hi! link zshDollarVar Identifier
hi! link zshDeref Identifier
hi! link zshShortDeref zshDeref
hi! link zshSubst Special
hi! link zshSubstDelim zshSubst
" 2}}}

" c {{{2
hi! link cLabel Label
" 2}}}

" cpp {{{2
hi! link cppSTLnamespace Identifier
hi! link cppSTLconstant Identifier
hi! link cppSTLexception Type
hi! link cppRawDelimiter SpecialChar
" 2}}}

" markdown {{{2
hi! link markdownListMarker Label
hi! link markdownCode String
hi! link markdownCodeDelimiter markdownCode
hi! link markdownHeadingRule markdownH1
hi! link markdownHeadingDelimiter markdownH1
" 2}}}

" awk {{{2
hi! link awkFieldVars Identifier
hi! link awkRegExp Constant
" 2}}}

" ahk {{{2
hi! link autohotkeyBuiltinVariable Special
" 2}}}

" javascript {{{2
hi! link jsNull Constant
hi! link jsUndefined Constant
hi! link jsStorageClass Keyword
hi! link jsOperatorKeyword Keyword
hi! link jsGlobalObjects Identifier
hi! link jsFuncCall Normal
hi! link jsFunction Statement
hi! link jsFuncName Typedef
hi! link jsThis Identifier
hi! link jsSuper Identifier
hi! link jsGlobalNodeObjects Identifier
hi! link jsObjectKey Special
hi! link jsFunctionKey jsObjectKey
hi! link jsArguments Identifier
hi! link jsPrototype Identifier
" 2}}}

" css {{{2
hi! link cssTagName Identifier
hi! link cssBraces Delimiter
hi! link cssFunctionName Normal
" 2}}}

" xdefaults {{{2
hi! link xdefaultsLabel Label
" 2}}}
" 1}}}

" Plugins {{{1
" vim-sneak {{{2
hi! link Sneak Search
hi SneakScope               cterm=reverse        ctermfg=NONE ctermbg=NONE gui=reverse        guifg=NONE    guibg=NONE    
hi! link SneakLabel Search
hi SneakLabelMask           cterm=NONE           ctermfg=12   ctermbg=NONE gui=NONE           guifg=#839496 guibg=NONE    
" 2}}}

" rainbow_levels.vim {{{2
hi RainbowLevel0            cterm=NONE           ctermfg=1    ctermbg=NONE gui=NONE           guifg=#dc322f guibg=NONE    
hi RainbowLevel1            cterm=NONE           ctermfg=9    ctermbg=NONE gui=NONE           guifg=#cb4b16 guibg=NONE    
hi RainbowLevel2            cterm=NONE           ctermfg=3    ctermbg=NONE gui=NONE           guifg=#b58900 guibg=NONE    
hi RainbowLevel3            cterm=NONE           ctermfg=2    ctermbg=NONE gui=NONE           guifg=#859900 guibg=NONE    
hi RainbowLevel4            cterm=NONE           ctermfg=4    ctermbg=NONE gui=NONE           guifg=#268bd2 guibg=NONE    
hi RainbowLevel5            cterm=NONE           ctermfg=13   ctermbg=NONE gui=NONE           guifg=#6c71c4 guibg=NONE    
hi RainbowLevel6            cterm=NONE           ctermfg=5    ctermbg=NONE gui=NONE           guifg=#d33682 guibg=NONE    
hi RainbowLevel7            cterm=NONE           ctermfg=1    ctermbg=NONE gui=NONE           guifg=#dc322f guibg=NONE    
hi RainbowLevel8            cterm=NONE           ctermfg=9    ctermbg=NONE gui=NONE           guifg=#cb4b16 guibg=NONE    
hi RainbowLevel9            cterm=NONE           ctermfg=3    ctermbg=NONE gui=NONE           guifg=#b58900 guibg=NONE    
hi RainbowLevel10           cterm=NONE           ctermfg=2    ctermbg=NONE gui=NONE           guifg=#859900 guibg=NONE    
hi RainbowLevel11           cterm=NONE           ctermfg=4    ctermbg=NONE gui=NONE           guifg=#268bd2 guibg=NONE    
hi RainbowLevel12           cterm=NONE           ctermfg=13   ctermbg=NONE gui=NONE           guifg=#6c71c4 guibg=NONE    
hi RainbowLevel13           cterm=NONE           ctermfg=5    ctermbg=NONE gui=NONE           guifg=#d33682 guibg=NONE    
" 2}}}
" 1}}}

" vim:fdm=marker fdls=0
