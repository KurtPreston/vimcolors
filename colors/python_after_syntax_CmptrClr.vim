" File              : python_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 01/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_python') && g:CmptrClr_loaded_python)
  finish | endif

let g:CmptrClr_loaded_python = get(g:, 'CmptrClr_loaded_python', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  hi! link pythonBoolean      boolean
  hi! link pythonBuiltinFunc  functionName

  " XXX Not sure if I want to use 'cTagsDefinedName' or 'constant' as I'm
  " pretty sure 'pythonBuiltIn' would be considered constants?...  But then again
  " aren't constants constant values?  In C defined names are technically
  " constant, no?
  " XXX pythonNone was colored as a constant
  hi! link pythonBuiltinObj   cTagsDefinedName
  hi! link pythonBuiltinType  type

  hi! link pythonBytesEscape  specialChar

  hi! link pythonCoding       special
  hi! link pythonClass        class
  hi! link pythonComment      comment
  hi! link pythonConditional  conditional
  hi! link pythonDot          delimiter

  " This is the word try:
  hi! link pythonException    statement

  " TODO Create a group for this
  hi! link pythonExClass      structure

  hi! link pythonFunction     functionName
  hi! link pythonImport       include
  hi! link pythonNone         constant
  hi! link pythonNumber       number

  " FIXME The 'not' in 'if not' is considered an operator..
  hi! link pythonOperator     operator

  hi! link pythonRawString    string

  hi! link pythonRepeat       repeat
  hi! link pythonRun          special
  hi! link pythonStatement    statement
  hi! link pythonString       string

  " TODO Figure out if this should be related to string format
  hi! link pythonStrFormat    special

  hi! link pythonTodo         todo
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_python = 1
