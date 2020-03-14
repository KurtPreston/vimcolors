 set background=dark
if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

set t_Co=256
let g:colors_name = "guppy"

" blue #5EDBCA
" yellow #EFF2C0
" brown #BEA57D
" red #DB302E
" green #7FB069

hi Normal guibg=#080F0F guifg=#DDDDDD
hi PMenu guibg=#333333
hi Comment guifg=#999999 gui=italic
hi LineNr guifg=#999999
hi VertSplit guifg=#555555
hi String guifg=#BEA57D gui=italic
hi Keyword guifg=#7FB069
hi link Operator Keyword
hi link Type Keyword
hi link ImportCostVirtualText Comment

hi Statement guifg=#f1db13
hi IncSearch guibg=#f1db13
hi link Conditional Statement
hi link Label Statement
hi link Repeat Statement
hi link Exception Statement

hi jsParens guifg=#ff961f
hi link jsBrackets jsParens

" Browns
hi jsDestructuringBlock guifg=#BEA57D
hi link jsTemplateString String
hi jsTemplateBraces guifg=#BEA57D

" Greens
hi link jsImport Keyword
hi link jsFrom Keyword
hi link jsStorageClass Keyword
hi link jsClassKeyword Keyword
hi link jsxAttrib Keyword
hi link jsxAttributeBraces Keyword
hi link jsObjectKey Keyword
hi link jsonKeyword Keyword
hi link jsObjectKeyComputed Keyword
hi link jsTaggedTemplate Keyword
hi link vimHiKeylist Keyword
hi link vimHiGroup Keyword
hi link vimGroup Keyword
hi link vimHiGuiFgBg Keyword
hi link vimHiGui Keyword
hi link vimSynType Keyword
hi link vimVar Keyword

" Reds
hi Number guifg=#FF723D
hi link Boolean Number
hi jsxTagName guifg=#FF723D gui=italic
hi link jsxComponentName jsxTagName
hi link jsxEndComponentName jsxTagName
hi link jsClassDefinition jsxTagName
hi link jsxEndString jsxTagName
hi link jsObjectProp Number
hi link jsBoolean Number
hi link jsExportDefault Number
hi jsFuncArgs guifg=#FF723D gui=bold
hi link jsArrowFunction jsFuncArgs
hi link vimHiAttrib Number

" Blues
hi jsFuncCall guifg=#94E3E0
hi link jsClassFuncName jsFuncCall
hi link jsDecoratorFunction jsFuncCall
hi jsModuleKeyword guifg=#94E3E0 gui=bold
hi link jsVariableDef jsModuleKeyword
hi link jsTemplateExpression jsFuncCall
hi link jsClassProperty jsFuncCall
hi link jsonQuote jsFuncCall
hi link jsxEndTag jsFuncCall

" Yellow
hi jsReturn guifg=#EFF2C0
hi link jsOperator jsReturn
hi link jsTernaryIfOperator jsReturn
hi link jsxEqual jsReturn
hi link jsExport jsReturn
hi link jsConditional jsReturn
hi link vimCommand jsReturn
hi link vimHighlight jsReturn
hi link CursorLineNr jsReturn
