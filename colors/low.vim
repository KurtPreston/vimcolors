" low.vim colorscheme
" low contrast scheme, mane
" by Case Duckworth

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = 'low'

if (!has('gui_running') && &t_Co != 256)
  finish
endif

let s:is_dark = (&background == 'dark')

let s:nc = {}
let s:nc.dark = ['#262626', 235]
let s:nc.light = ['#dadada', 253]

let s:nc.dgry = ['#8a8a8a', 245]
let s:nc.lgry = ['#6c6c6c', 242]

let s:nc.dred = ['#da2626', 9]
let s:nc.lred = ['#da2626', 1]
let s:nc.dblu = ['#2626da', 12]
let s:nc.lblu = ['#26268a', 4]
let s:nc.dgrn = ['#26da26', 10]
let s:nc.lgrn = ['#268a26', 2]
let s:nc.dylw = ['#dada26', 11]
let s:nc.lylw = ['#8a8a26', 3]
let s:nc.dcyn = ['#26dada', 14]
let s:nc.lcyn = ['#268a8a', 6]

let s:bold = 'bold,'
let s:italic = 'italic,'
let s:underline = 'underline,'
let s:undercurl = 'undercurl,'
let s:inverse = 'inverse,'

let s:vim_bg = ['bg', 'bg']
let s:vim_fg = ['fg', 'fg']
let s:none = ['NONE', 'NONE']
let s:white = ['#ffffff', 15]

if s:is_dark
  let s:bg = s:nc.dark
  let s:fg = s:nc.light
  let s:attn = s:nc.dcyn
  let s:invr = s:nc.dylw
  let s:gray = s:nc.lgry

  let s:red = s:nc.dred
  let s:green = s:nc.dgrn
  let s:blue = s:nc.dblu
  let s:yellow = s:nc.dylw
else
  let s:bg = s:nc.light
  let s:fg = s:nc.dark
  let s:attn = s:nc.lcyn
  let s:invr = s:nc.lylw
  let s:gray = s:nc.lgry

  let s:red = s:nc.lred
  let s:green = s:nc.lgrn
  let s:blue = s:nc.lblu
  let s:yellow = s:nc.lylw
endif

function! s:HL(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp
  let fg = a:fg
  if (a:0 >= 1)
    let bg = a:1
  else
    let bg = s:none
  endif

  if a:0 >= 2 && strlen(a:2)
    let emstr = a:2
  else
    let emstr = 'NONE,'
  endif

  let histring = [ 'hi', a:group,
        \ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
        \ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
        \ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]
        \ ]

  if a:0 >= 3
    call add(histring, 'guisp=' . a:3[0])
  endif

  execute join(histring, ' ')
endfunction

" Vim Highlight groups
call s:HL('Normal',        s:fg)

call s:HL('IncSearch',     s:attn,   s:bg, s:inverse)
call s:HL('Search',        s:attn,   s:bg, s:underline)

call s:HL('CursorColumn',  s:gray, s:none, s:inverse)
call s:HL('CursorLine',    s:none, s:none)

call s:HL('CursorLineNr',  s:attn)
call s:HL('LineNr',        s:gray)

call s:HL('ColorColumn',   s:gray)

call s:HL('DiffAdd',       s:blue,   s:bg, s:bold)
call s:HL('DiffChange',    s:blue)
call s:HL('DiffDelete',    s:red, s:bg, s:italic)
call s:HL('DiffText',      s:blue,   s:bg, s:underline)

call s:HL('ErrorMsg',      s:red)
call s:HL('Question',      s:green)
call s:HL('WarningMsg',    s:yellow)
call s:HL('ModeMsg',       s:gray)
call s:HL('WildMenu',      s:attn, s:none, s:underline)

" call s:HL('Cursor',       
" call s:HL('Directory',    
" call s:HL('FoldColumn',   
" call s:HL('Folded',       
" call s:HL('Pmenu',        
" call s:HL('PmenuSbar',    
" call s:HL('PmenuSel',     
" call s:HL('SignColumn',   
" call s:HL('Title',        

call s:HL('MatchParen',    s:invr)
call s:HL('Visual',        s:invr,   s:bg, s:inverse)

call s:HL('NonText',       s:gray)
call s:HL('SpecialKey',    s:gray)

call s:HL('VertSplit',     s:fg,     s:fg)
call s:HL('StatusLine',    s:fg,     s:bg, s:inverse)
call s:HL('StatusLineNC',  s:gray,  s:bg, s:inverse)

call s:HL('TabLine',       s:gray,  s:bg, s:inverse)
call s:HL('TabLineFill',   s:gray,  s:bg, s:inverse)
call s:HL('TabLineSel',    s:fg,     s:bg, s:inverse)

call s:HL('SpellBad',      s:attn,   s:bg, s:underline)
hi! link SpellCap SpellBad
hi! link SpellLocal SpellBad
hi! link SpellRare SpellBad

" Syntax highlight groups 
call s:HL('Comment',        s:gray,   s:none,   s:italic)

call s:HL('Constant',       s:none)
call s:HL('String',         s:white)
call s:HL('Character',      s:none)
call s:HL('Number',         s:none)
call s:HL('Boolean',        s:none)
call s:HL('Float',          s:none)

call s:HL('Identifier',     s:none, s:none)
call s:HL('Function',       s:none, s:none)
call s:HL('VarId',          s:none, s:none)

call s:HL('Statement',      s:none)
call s:HL('Conditional',    s:none)
call s:HL('Repeat',         s:none)
call s:HL('Label',          s:none)
call s:HL('Operator',       s:none)
call s:HL('Keyword',        s:none)
call s:HL('Exception',      s:none)

call s:HL('PreProc',        s:none)
call s:HL('Include',        s:none)
call s:HL('Define',         s:none)
call s:HL('Macro',          s:none)
call s:HL('PreCondit',      s:none)

call s:HL('Type',           s:none,    s:none)
call s:HL('StorageClass',   s:none)
call s:HL('Structure',      s:none,    s:none,   s:bold)
call s:HL('Typedef',        s:none)

call s:HL('Special',        s:none)
call s:HL('SpecialChar',    s:none)
call s:HL('Tag',            s:none)
call s:HL('Delimiter',      s:none)
call s:HL('SpecialComment', s:none)
call s:HL('Debug',          s:none)

call s:HL('Italic',         s:none,    s:none,   s:italic)
call s:HL('Underlined',     s:none,    s:none,   s:underline)
call s:HL('Error',          s:red)
call s:HL('Todo',           s:yellow)

" Filetype-specific
" " Haskell
hi! link haskellType Type
call s:HL('haskellIdentifier', s:attn, s:none, s:italic)
" " SH
hi! link shHereDoc Italic
call s:HL('diffRemoved', s:red)
call s:HL('diffAdded', s:green)
call s:HL('diffLine', s:none, s:none, s:underline)
