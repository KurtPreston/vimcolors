" File              : help_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 10/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_help') && g:CmptrClr_loaded_help)
  finish | endif

let g:CmptrClr_loaded_help = get(g:, 'CmptrClr_loaded_help', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  hi! link helpBacktick       specialChar
  hi! link helpBar            delimiter
  hi! link helpCommand        command
  hi! link helpExample        comment

  " This was preProc
  hi! link helpHeader         title

  hi! link helpHeadline       statement

  hi! link helpIgnore         specialChar
  hi! link helpHyperTextEntry string
  hi! link helpHyperTextJump  identifier
  hi! link helpNote           todo

  " TODO Change this
  hi! link helpNotVi          special

  " This was type
  hi! link helpOption         option

  " May use something else
  hi! link helpSectionDelim   delimiter

  hi! link helpSpecial        special

  " Because it has the word star in it, I want to make it yellow..
  hi! link helpStar           delimiter

  hi! link helURL             underlined
  hi! link helpVim            identifier
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_help = 1
