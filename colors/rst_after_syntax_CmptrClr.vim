" File              : rst_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 15/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_rst') && g:CmptrClr_loaded_rst)
  finish | endif

let g:CmptrClr_loaded_rst = get(g:, 'CmptrClr_loaded_rst', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  hi! link rstComment         comment

  " FIXME This is considered as namespace..  Kind of, no?
  hi! link rstDirective       class
  hi! link rstEmphasis        italic
  hi! link rstExDirective     string
  hi! link rstExplicitMarkup  statement

  " TODO May use something else
  hi! link rstSections        title

  hi! link rstStrongEmphasis  bold
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_rst = 1
