" File              : postscr_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 10/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_postscr') && g:CmptrClr_loaded_postscr)
  finish | endif

let g:CmptrClr_loaded_postscr = get(g:, 'CmptrClr_loaded_postscr', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  hi! link postscrComment         comment
  hi! link postscrDSCComment      special

  hi! link postscrFloat           float

  hi! link postscrInteger         number
  hi! link postscrOperator        operator
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_postscr = 1
