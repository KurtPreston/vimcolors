" File              : html_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 01/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_html') && g:CmptrClr_loaded_html)
  finish | endif

let g:CmptrClr_loaded_html = get(g:, 'CmptrClr_loaded_html', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if !g:CmptrClr_use_default_hl[&filetype] | call s:SourceHlFile() | endif

" guifg -> normal.guifg
hi htmlBold         guifg=#E8E8E8 guibg=NONE    cterm=bold
hi htmlBoldItalic   guibg=#E8E8E8 guibg=NONE    cterm=bold,italic
hi htmlItalic       guifg=#E8E8E8 guibg=NONE    cterm=italic

hi! link htmlArg              type
hi! link htmlComment          comment

" XML doesn't have the samething, so we don't treat it as special
hi! link htmlEndTag           htmlTag

hi! link htmlH1               htmlTitle
hi! link htmlH2               htmlTitle
hi! link htmlH3               htmlTitle
hi! link htmlH4               htmlTitle
hi! link htmlH5               htmlTitle
hi! link htmlH6               htmlTitle
hi! link htmlLink             underlined
hi! link htmlTag              delimiter
hi! link htmlTagName          tagName
hi! link htmlTitle            title
hi! link htmlSpecialChar      specialChar
hi! link htmlSpecialTagName   identifier

" TODO Because markdown includes html in its syntax file, this may not work as
" expected.
function! s:SourceHlFile()
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif
endfunction

let g:CmptrClr_loaded_html = 1
