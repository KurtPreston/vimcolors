" File              : gtkrc_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 10/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_gtkrc') && g:CmptrClr_loaded_gtkrc)
  finish | endif

let g:CmptrClr_loaded_gtkrc = get(g:, 'CmptrClr_loaded_gtkrc', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  hi! link gtkrcComment       comment
  hi! link gtkrcInclude       include
  hi! link gtkrcNumber        number
  hi! link gtkrcSettingsName  identifier
  hi! link gtkrcString        string

  " TODO Change this
  hi! link gtkrcStyleKeyword  statement

  hi! link gtkrcTop           statement

  " TODO Change this
  hi! link gtkrcWPathSpecial  special
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_gtkrc = 1
