" File              : ada_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 15/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_ada') && g:CmptrClr_loaded_ada)
  finish | endif

let g:CmptrClr_loaded_ada = get(g:, 'CmptrClr_loaded_ada', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  " TODO Probably change this...
  hi! link adaAssignment    adaOperator
  hi! link adaAttribute     attribute
  hi! link adaBegin         adaStatement
  hi! link adaBoolean       boolean
  hi! link adaComment       comment
  hi! link adaConditional   conditional
  hi! link adaEnd           adaStatement
  hi! link adaInc           include
  hi! link adaKeyword       adaStatement
  hi! link adaLabel         label
  hi! link adaNumber        number
  hi! link adaOperator      operator
  hi! link adaRepeat        repeat
  hi! link adaSpecial       special
  hi! link adaStatement     statement
  hi! link adaString        string
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_ada = 1
