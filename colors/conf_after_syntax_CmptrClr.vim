" File              : conf_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 01/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_conf') && g:CmptrClr_loaded_conf)
  finish | endif

let g:CmptrClr_loaded_conf = get(g:, 'CmptrClr_loaded_conf', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  hi! link confComment  comment
  hi! link confString   string
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_conf  = 1
