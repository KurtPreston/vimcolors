" File              : cpp_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 01/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_cpp') && g:CmptrClr_loaded_cpp)
  finish | endif

let g:CmptrClr_loaded_cpp = get(g:, 'CmptrClr_loaded_cpp', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  let g:CmptrClr_loaded_c = 0

  execute 'runtime syntax/c/c_after_syntax_CmptrClr.vim'

  hi! link cppBoolean       boolean
  hi! link cppConstant      constant
  hi! link cppNumber        number
  hi! link cppStatement     statement
  hi! link cppSTLConstant   constant
  hi! link cppSTLFunction   functionName

  " Should this be class?
  hi! link cppSTLNamespace  constant
  hi! link cppSTLType       cppType
  hi! link cppStructure     structure
  hi! link cppType          type
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_cpp = 1
