" Vim Color File
" Name:       bow.vim
" Version:    0.1
" Maintainer: github.com/p7g
" License:    The MIT License (MIT)

hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='bow-wob'

" not all terminals support italics properly.  If yours does not, opt-out.
if ! exists('g:bow_wob_terminal_italics')
  let g:bow_wob_terminal_italics = 1
endif

if ! exists('g:bow_wob_spell_undercurl')
  let g:bow_wob_spell_undercurl = 1
endif

" Colors
let s:black = {'gui': '#080808', 'cterm': '0'}
let s:white = {'gui': '#F8F8F8', 'cterm': '15'}
let s:light_grey = {'gui': '#cccccc', 'cterm': '7'}
let s:dark_grey = {'gui': '#333333', 'cterm': '8'}

if &background == 'dark'
  let s:bg = s:black
  let s:fg = s:white
  let s:grey = s:dark_grey
else
  let s:bg = s:white
  let s:fg = s:black
  let s:grey = s:light_grey
endif

if g:bow_wob_spell_undercurl == 1
  let s:sp_un = 'undercurl'
else
  let s:sp_un = 'underline'
endif

" shamelessly stolen from hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  " Not all terminals support italics properly. If yours does, opt-in.
  if g:bow_wob_terminal_italics == 0
        \ && has_key(a:style, 'cterm')
        \ && a:style['cterm'] == 'italic'
    unlet a:style.cterm
  endif
  execute 'highlight' a:group
    \ 'guifg='   (has_key(a:style, 'fg')    ? a:style.fg.gui   : 'NONE')
    \ 'guibg='   (has_key(a:style, 'bg')    ? a:style.bg.gui   : 'NONE')
    \ 'guisp='   (has_key(a:style, 'sp')    ? a:style.sp.gui   : 'NONE')
    \ 'gui='     (has_key(a:style, 'gui')   ? a:style.gui      : 'NONE')
    \ 'ctermfg=' (has_key(a:style, 'fg')    ? a:style.fg.cterm : 'NONE')
    \ 'ctermbg=' (has_key(a:style, 'bg')    ? a:style.bg.cterm : 'NONE')
    \ 'cterm='   (has_key(a:style, 'cterm') ? a:style.cterm    : 'NONE')
endfunction

" common groups ================================================================
" (see `:h w18`)

call s:h('Normal',        {'bg': s:bg, 'fg': s:fg})
call s:h('Cursor',        {'bg': s:fg, 'fg': s:bg})
call s:h('Comment',       {'fg': s:fg, 'gui': 'italic', 'cterm': 'italic'})

call s:h('Constant',      {'fg': s:fg, 'gui': 'italic', 'cterm': 'italic'})
hi! link String           Constant
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant

call s:h('Identifier',    {'fg': s:fg})
hi! link Function         Identifier

call s:h('Statement',     {'fg': s:fg, 'cterm': 'bold', 'gui': 'bold'})
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Operator         Statement
hi! link Keyword          Statement
hi! link Exception        Statement

call s:h('PreProc',       {'fg': s:fg})
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

call s:h('Type',          {'fg': s:fg})
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

call s:h('Special',       {'fg': s:fg})
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special

call s:h('Underlined', {'fg': s:fg, 'gui': 'underline', 'cterm': 'underline'})
call s:h('Ignore',     {'fg': s:bg})
call s:h('Error',      {'fg': s:fg, 'bg': s:grey, 'gui': 'bold', 'cterm': 'bold'})
call s:h('Todo',       {'fg': s:fg, 'bg': s:grey, 'gui': 'bold', 'cterm': 'bold'})

" ui chrome ====================================================================
" ordered according to `:help hitest.vim`

call s:h('SpecialKey',    {'fg': s:grey})
call s:h('NonText',       {'fg': s:grey})
call s:h('Directory',     {'fg': s:fg})
call s:h('ErrorMsg',      {'fg': s:fg})
call s:h('IncSearch',     {'bg': s:fg, 'fg': s:bg})
call s:h('Search',        {'bg': s:bg})
call s:h('MoreMsg',       {'fg': s:fg, 'gui': 'bold', 'cterm': 'bold'})
hi! link ModeMsg MoreMsg
call s:h('LineNr',        {'fg': s:fg})
call s:h('CursorLineNr',  {'fg': s:fg, 'bg': s:bg})
call s:h('Question',      {'fg': s:fg})
call s:h('StatusLine',    {'bg': s:bg})
call s:h('Conceal',       {'fg': s:grey})
call s:h('StatusLineNC',  {'bg': s:bg, 'fg': s:fg})
call s:h('VertSplit',     {'bg': s:bg, 'fg': s:fg})
call s:h('Title',         {'fg': s:fg})
call s:h('Visual',        {'bg': s:fg, 'fg': s:bg})
call s:h('VisualNOS',     {'bg': s:bg})
call s:h('WarningMsg',    {'fg': s:fg, 'gui': 'bold', 'cterm': 'bold'})
call s:h('WildMenu',      {'fg': s:fg, 'bg': s:grey})
call s:h('Folded',        {'fg': s:fg})
call s:h('FoldColumn',    {'fg': s:bg})
" call s:h("DiffAdd",       {"bg": s:bg, 'fg': s:green})
" call s:h("DiffDelete",    {"bg": s:bg, 'fg': s:red})
" call s:h("DiffChange",    {"bg": s:bg, 'fg': s:dark_yellow})
call s:h('DiffText',      {'bg': s:bg, 'fg': s:fg})
call s:h('SignColumn',    {'fg': s:fg})

if has('gui_running')
  call s:h('SpellBad',    {'gui': s:sp_un, 'sp': s:fg})
  call s:h('SpellCap',    {'gui': s:sp_un, 'sp': s:fg})
  call s:h('SpellRare',   {'gui': s:sp_un, 'sp': s:fg})
  call s:h('SpellLocal',  {'gui': s:sp_un, 'sp': s:fg})
else
  call s:h('SpellBad',    {'cterm': s:sp_un, 'fg': s:fg})
  call s:h('SpellCap',    {'cterm': s:sp_un, 'fg': s:fg})
  call s:h('SpellRare',   {'cterm': s:sp_un, 'fg': s:fg})
  call s:h('SpellLocal',  {'cterm': s:sp_un, 'fg': s:fg})
endif
call s:h('Pmenu',         {'fg': s:fg, 'bg': s:grey})
call s:h('PmenuSel',      {'fg': s:bg, 'bg': s:fg})
call s:h('PmenuSbar',     {'fg': s:fg, 'bg': s:grey})
call s:h('PmenuThumb',    {'fg': s:fg, 'bg': s:grey})
call s:h('TabLine',       {'fg': s:fg, 'bg': s:bg})
call s:h('TabLineSel',    {'fg': s:fg, 'bg': s:bg, 'gui': 'bold', 'cterm': 'bold'})
call s:h('TabLineFill',   {'fg': s:fg, 'bg': s:bg})
call s:h('CursorColumn',  {'bg': s:grey})
call s:h('CursorLine',    {'bg': s:grey})
call s:h('ColorColumn',   {'bg': s:grey})

" remainder of syntax highlighting
call s:h('MatchParen',    {'bg': s:bg, 'fg': s:fg})
call s:h('qfLineNr',      {'fg': s:grey})

" hi helpHyperTextJump guifg=#5FAFD7 ctermfg=74

" HTML syntax
hi! link htmlTag          Special
hi! link htmlEndTag       htmlTag

hi! link htmlTagName      KeyWord
" html5 tags show up as htmlTagN
hi! link htmlTagN         Keyword

" HTML content
call s:h('htmlH1',        {'fg': s:fg, 'gui': 'bold,italic', 'cterm': 'bold'     })
call s:h('htmlH2',        {'fg': s:fg, 'gui': 'bold'       , 'cterm': 'bold'     })
call s:h('htmlH3',        {'fg': s:fg, 'gui': 'italic'     , 'cterm': 'italic'   })
call s:h('htmlH4',        {'fg': s:fg, 'gui': 'italic'     , 'cterm': 'italic'   })
call s:h('htmlH5',        {'fg': s:fg                                            })
call s:h('htmlH6',        {'fg': s:fg                                            })
call s:h('htmlLink',      {'fg': s:fg, 'gui': 'underline'  , 'cterm': 'underline'})
call s:h('htmlItalic',    {            'gui': 'italic'     , 'cterm': 'italic'   })
call s:h('htmlBold',      {            'gui': 'bold'       , 'cterm': 'bold'     })
call s:h('htmlBoldItalic',{            'gui': 'bold,italic', 'cterm': 'bold'     })
" hi htmlString     guifg=#87875f guibg=NONE gui=NONE        ctermfg=101 ctermbg=NONE cterm=NONE

" XML content
hi! link xmlTag                     htmlTag
hi! link xmlEndTag                  xmlTag
hi! link xmlTagName                 htmlTagName
