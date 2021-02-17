
if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_cs') && g:CmptrClr_loaded_cs)
  finish | endif

let g:CmptrClr_loaded_cs = get(g:, 'CmptrClr_loaded_cs', 1)
if g:CmptrClr_use_default_hl[&ft]
  let g:CmptrClr_loaded_xmp =  0
  execute 'runtime syntax/xml/xml_after_syntax_CmptrClr.vim'
  let g:CmptrClr_loaded_c  = 0
  execute 'runtime syntax/c/c_after_syntax_CmptrClr.vim'
  hi! link csBraces     operator
  hi! link csCharacter  character

  " Keyword class
  hi! link csClass      structure

  " Class names
  hi! link csClassType  class
  hi! link csComment    comment
  hi! link csConditional  conditional
  hi! link csConstant   constant
  hi! link csContexualStatement statement
  hi! link csEndColon   csOpSymbols
  hi! link csEnum       enumName
  hi! link csEvent      event
  hi! link csException  exception
  hi! link csLocal      localVariable

  " ?
  hi! link csLogicSymbols csOpSymbols
  hi! link csModifier   storageClass
  hi! link csNamespace  namespace
  hi! link csNew        statement

  " This is following the keyword new
  hi! link csNewType    class
  hi! link csNumber     number
  hi! link csOpSymbols  operator

  hi! link csParens     operator
  hi! link csProperty   property
  hi! link csQuote      csString

  " XXX For some reason, the keyword return is highlighted as repeat..
  hi! link csRepeat     repeat

  hi! link csSpecialChar  specialChar
  
  " Was structure
  " Highlights keyword struct
  hi! link csStorage  storageClass

  hi! link csString   string
  hi! link csStruct   structure

  hi! link csType       type

  " COMBAK Maybe something else?
  hi! link csTypeOf     statement
  hi! link csTypeOfStatement  csType

  hi! link csUnspecifiedKeyword  statement
  hi! link csUnspecifiedStatement  statement
  hi! link csUsing                  csNamespace
  hi! link csXmlComment             csComment
  hi! link csXmlCommentLeader       cCommentStart
  hi! link csXmlTag     xmlTagName

endif
call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_c = 1
