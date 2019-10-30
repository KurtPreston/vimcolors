" File              : yaml_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 01/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_yaml') && g:CmptrClr_loaded_yaml)
  finish | endif

let g:CmptrClr_loaded_yaml = get(g:, 'CmptrClr_loaded_yaml', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  " TODO This might be better if it was something else
  hi! link yamlBlock    operator
  hi! link yamlComment  comment
  hi! link yamlConstant constant
  hi! link yamlInline   operator
  hi! link yamlKey      identifier
  hi! link yamlString   string
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_yaml = 1
