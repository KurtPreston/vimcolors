" File              : fortran_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 15/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_fortran') && g:CmptrClr_loaded_fortran)
  finish | endif

let g:CmptrClr_loaded_fortran = get(g:, 'CmptrClr_loaded_fortran', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  hi! link fortranCall          command
  hi! link fortranComment       comment
  hi! link fortranConditional   conditional
  hi! link fortranContinueMark  special
  hi! link fortranConstant      constant
  hi! link fortranIntrinsic     identifier
  hi! link fortranIO            identifier
  hi! link fortranNumber        number
  hi! link fortranOperator      operator
  hi! link fortranUnitHeader    preCondit
  hi! link fortranString        string
  hi! link fortranStringR       fortranString
  hi! link fortranStorageClass  storageClass
  hi! link fortranStorageClassR fortranStorageClass
  hi! link fortranStructure     structure
  hi! link fortranTodo          todo
  hi! link fortranType          type
  hi! link fortranTypeCUDA      fortranType
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_fortran = 1
