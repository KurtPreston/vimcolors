" File              : abap_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 15/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_abap') && g:CmptrClr_loaded_abap)
  finish | endif

let g:CmptrClr_loaded_abap = get(g:, 'CmptrClr_loaded_abap', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  hi! link abapCharString       string
  hi! link abapComment          comment
  hi! link abapComplexStatement abapStatement

  " FIXME probably wrong
  hi! link abapField            globalVariable
  hi! link abapNumber           number
  hi! link abapSpecialTables    special
  hi! link abapStatement        statement
  hi! link abapStructure        structure
  hi! link abapSymbolOperator   operator
  hi! link abapTypes            type
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_abap = 1
