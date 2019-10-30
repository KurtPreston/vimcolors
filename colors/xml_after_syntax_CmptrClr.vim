" File              : xml_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 01/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_xml') && g:CmptrClr_loaded_xml)
  finish | endif

let g:CmptrClr_loaded_xml = get(g:, 'CmptrClr_loaded_xml', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  hi! link xmlAttrib      type
  hi! link xmlAttribPunct delimiter
  hi! link xmlEqual       noise
  hi! link xmlString      string
  hi! link xmlTag         delimiter
  hi! link xmlTagName     tagName
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_xml = 1
