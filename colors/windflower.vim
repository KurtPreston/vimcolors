" windflower: terminal vim color scheme derived from railscasts

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "windflower"

" General
hi Normal                    ctermfg=254 ctermbg=234
hi Search                    ctermfg=000 ctermbg=060
hi Visual                    ctermbg=060
hi LineNr                    ctermfg=242
hi Cursor                    ctermfg=000 ctermbg=015
hi CursorLine                ctermbg=235 cterm=none
hi CursorLineNr              ctermfg=248
hi VertSplit                 ctermfg=238 ctermbg=238
hi SignColumn                ctermfg=015 ctermbg=234
hi FoldColumn                ctermfg=015
hi ColorColumn               ctermbg=235
hi CursorColumn              ctermbg=235
hi Folded                    ctermfg=015 ctermbg=238
hi NonText                   ctermfg=243
hi SpecialKey                ctermfg=243
hi Special                   ctermfg=029
hi Directory                 ctermfg=030

" Popup Menu
hi Pmenu                     ctermfg=015 ctermbg=238
hi PmenuSel                  ctermfg=000 ctermbg=107
hi PMenuSbar                 ctermfg=015 ctermbg=060
hi PMenuThumb                ctermfg=015 ctermbg=248

" Status Line
hi User1                     ctermfg=255 ctermbg=241
hi User2                     ctermfg=214 ctermbg=241
hi User3                     ctermfg=082 ctermbg=241
hi User4                     ctermfg=088 ctermbg=241
hi User5                     ctermfg=254 ctermbg=241
hi User6                     ctermfg=254 ctermbg=241
hi StatusLine                ctermfg=254 ctermbg=241
hi StatusLineNC              ctermfg=240 ctermbg=236

" Code constructs
hi Comment                   ctermfg=137
hi Todo                      ctermfg=166 ctermbg=236
hi Error                     ctermfg=220 ctermbg=088
hi Exception                 ctermfg=088
hi WarningMsg                ctermfg=001

hi Statement                 ctermfg=130
hi Keyword                   ctermfg=130
hi StorageClass              ctermfg=130
hi Constant                  ctermfg=130
hi Structure                 ctermfg=130

hi Type                      ctermfg=167
hi Typedef                   ctermfg=167

hi PreProc                   ctermfg=208
hi Macro                     ctermfg=208

hi Identifier                ctermfg=109
hi Boolean                   ctermfg=110
hi Number                    ctermfg=110
hi String                    ctermfg=107

hi Function                  ctermfg=221

hi Operator                  ctermfg=247
hi Delimiter                 ctermfg=247
hi Title                     ctermfg=172

" Diffs
hi DiffAdd                   ctermfg=002 ctermbg=022
hi DiffDelete                ctermfg=001 ctermbg=052 cterm=underline
hi DiffChange                ctermfg=004 ctermbg=017
hi DiffText                  ctermfg=015 ctermbg=009 cterm=underline

hi diffAdded                 ctermfg=002 ctermbg=022
hi diffRemoved               ctermfg=001 ctermbg=052 cterm=underline
hi diffNewFile               ctermfg=015 ctermbg=009 cterm=underline
hi diffFile                  ctermfg=015 ctermbg=009 cterm=underline

" Mail
hi mailEmail                 ctermfg=107 cterm=underline
hi mailHeaderKey             ctermfg=221
hi mailSubject               ctermfg=221

" Spell
hi SpellBad                  ctermfg=160 ctermbg=none cterm=underline
hi SpellRare                 ctermfg=168 cterm=underline
hi SpellCap                  ctermfg=189 cterm=underline
hi SpellLocal                ctermfg=051 cterm=underline
hi MatchParen                ctermfg=015 ctermbg=023

" XML & HTML
hi xmlTag                    ctermfg=179
hi xmlTagName                ctermfg=179
hi xmlEndTag                 ctermfg=179
hi htmlTag                   ctermfg=179
hi htmlTagName               ctermfg=179
hi htmlEndTag                ctermfg=179

hi checkbox                  ctermfg=237
hi checkboxDone              ctermfg=082 cterm=underline
hi checkboxNotDone           ctermfg=026 cterm=underline

" C & CPP
hi cppAccess                 ctermfg=202
hi cppStatement              ctermfg=131

hi cCustomClass              ctermfg=064
hi cCustomOperator           ctermfg=247
hi cCustomFunc               ctermfg=214
hi cCustomTemplateClass      ctermfg=038
hi cCustomTemplateFunc       ctermfg=038
hi cCustomTemplate           ctermfg=038
hi cTemplateDeclare          ctermfg=038
hi cTemplateOperatorDeclare  ctermfg=038

hi cppSTLnamespace           ctermfg=064
hi cppSTLbool                ctermfg=105
hi cppSTLconstant            ctermfg=105
hi cppSTLexception           ctermfg=105

" Ruby
hi rubyTodo                  ctermfg=167
hi rubyClass                 ctermfg=015
hi rubyConstant              ctermfg=167
hi rubyInterpolation         ctermfg=015
hi rubyBlockParameter        ctermfg=189
hi rubyPseudoVariable        ctermfg=221
hi rubyStringDelimiter       ctermfg=107
hi rubyInstanceVariable      ctermfg=189
hi rubyPredefinedConstant    ctermfg=167
hi rubyLocalVariableOrMethod ctermfg=189

" Python
hi pythonExceptions          ctermfg=216
hi pythonDoctest             ctermfg=105
hi pythonDoctestValue        ctermfg=115

" Indent for nathanaelkane/vim-indent-guides
hi IndentGuidesOdd           ctermbg=236
hi IndentGuidesEven          ctermbg=238
