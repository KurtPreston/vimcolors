" File              : ruby_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 10/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_ruby') && g:CmptrClr_loaded_ruby)
  finish | endif

let g:CmptrClr_loaded_ruby = get(g:, 'CmptrClr_loaded_ruby', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  " FIXME Change this or rubySymbolDelimiter because they clash
  hi! link rubyArrayDelimiter   delimiter

  hi! link rubyControl          statement

  " TODO Don't know what this is exactly, so look into it more
  hi! link rubyDoBlock          command

  hi! link rubyInclude          include
  hi! link rubySharpBang        special
  hi! link rubyString           string
  hi! link rubyStringDelimiter  delimiter
  hi! link rubySymbol           constant
  hi! link rubySymbolDelimiter  delimiter
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_ruby = 1
