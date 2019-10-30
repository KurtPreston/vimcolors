" File              : tags_after_syntax_CmpmtrClr.vim
" Author            : Francesco Magliocco
" Date              : 10/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_tags') && g:CmptrClr_loaded_tags)
  finish | endif

let g:CmptrClr_loaded_tags = get(g:, 'CmptrClr_loaded_tags', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  " TODO Change this
  hi! link tagBaseFile  preProc
  hi! link tagComment   comment

  " TODO Change this
  hi! link tagName      notation

  " TODO Change this
  hi! link tagPath      preProc
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_tags = 1
