" File              : viminfo_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 10/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_viminfo') && g:CmptrClr_loaded_viminfo)
  finish | endif

let g:CmptrClr_loaded_viminfo = get(g:, 'CmptrClr_loaded_viminfo', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  hi! link viminfoComment   comment

  " TODO Come up with something
  hi! link viminfoNew       string

  " TODO Maybe use special
  hi! link viminfoOption    operator

  hi! link viminfoOptionName  option
  hi! link viminfoStatement   statement
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_viminfo = 1
