" File              : markdown_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 09/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_markdown') && g:CmptrClr_loaded_markdown)
  finish | endif

let g:CmptrClr_loaded_markdown = get(g:, 'CmptrClr_loaded_markdown', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]

  " Needed in order to source the file again in case something from this syntax
  " file was changed.
  let g:CmptrClr_loaded_html = 0

  " the markdown syntax file includes the html syntax.
  execute 'runtime syntax/html/html_after_syntax_CmptrClr.vim'

  hi! link mkdBlockQuote        comment
  hi! link mkdBold              special
  hi! link mkdBoldItalic        special
  hi! link mkdCode              preProc
  hi! link mkdCodeDelimiter     mkdDelimiter
  hi! link mkdDelimiter         delimiter

  " [mkdLink][mkdID]
  hi! link mkdID                identifier
  hi! link mkdItalic            special
  hi! link mkdHeading           special
  hi! link mkdInlineURL         underlined
  hi! link mkdLink              underlined

  " TODO Change to something else.  Maybe make a reference group.
  hi! link mkdLinkDef           identifier

  " [mkdLinkDef]: mkdLinkDefTarget
  hi! link mkdLinkDefTarget     string
  hi! link mkdListItem          special
  hi! link mkdListItemLine      normal
  hi! link mkdNonListItemBlock  normal
  hi! link mkdRule              title

  " [mkdLink](mkdURL)
  hi! link mkdURL               string
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_markdown = 1
