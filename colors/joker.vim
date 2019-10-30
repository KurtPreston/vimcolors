hi clear
if exists('syntax_on') | syntax reset | endif
set background=dark
let g:colors_name = 'joker'


" Helper functions =============================================================

" Execute the 'highlight' command with a List of arguments.
function! s:Highlight(args)
  exec 'highlight ' . join(a:args, ' ')
endfunction

function! s:AddGroundValues(accumulator, ground, color)
  let new_list = a:accumulator
  for [where, value] in items(a:color)
    call add(new_list, where . a:ground . '=' . value)
  endfor

  return new_list
endfunction

function! s:Col(group, fg_name, ...)
  " ... = optional bg_name

  let pieces = [a:group]

  if a:fg_name !=# ''
    let pieces = s:AddGroundValues(pieces, 'fg', s:colors[a:fg_name])
  endif

  if a:0 > 0 && a:1 !=# ''
    let pieces = s:AddGroundValues(pieces, 'bg', s:colors[a:1])
  endif

  call s:Clear(a:group)
  call s:Highlight(pieces)
endfunction

function! s:Attr(group, attr)
  let l:attrs = [a:group, 'term=' . a:attr, 'cterm=' . a:attr, 'gui=' . a:attr]
  call s:Highlight(l:attrs)
endfunction

function! s:Clear(group)
  exec 'highlight clear ' . a:group
endfunction


" Colors ======================================================================

" Let's store all the colors in a dictionary.
let s:colors = {}

" Base colors.
let s:colors.base0  = { 'gui': '#020406', 'cterm': 0 }  " bg
let s:colors.base1  = { 'gui': '#d25b68', 'cterm': 1 }  " dark red
let s:colors.base2  = { 'gui': '#34743a', 'cterm': 2 }  " dark green
let s:colors.base3  = { 'gui': '#a89358', 'cterm': 3 }  " dark yellow
let s:colors.base4  = { 'gui': '#036c92', 'cterm': 4 }  " dark blue
let s:colors.base5  = { 'gui': '#292947', 'cterm': 5 }  " dark purple
let s:colors.base6  = { 'gui': '#5f87af', 'cterm': 6 }  " bright blue
let s:colors.base7  = { 'gui': '#79917a', 'cterm': 7 }  " dark white
let s:colors.base8  = { 'gui': '#141317', 'cterm': 8 }  " bright black
let s:colors.base9  = { 'gui': '#ca3f4e', 'cterm': 9 }  " bright red
let s:colors.base10 = { 'gui': '#51b65a', 'cterm': 10 }  " bright green
let s:colors.base11 = { 'gui': '#eeca68', 'cterm': 11 }  " bright yellow
let s:colors.base12 = { 'gui': '#6f87af', 'cterm': 12 }  " dark cyan
let s:colors.base13 = { 'gui': '#4d4e93', 'cterm': 13 }  " bright purple
let s:colors.base14 = { 'gui': '#8d8eba', 'cterm': 14 }  " bright cyan
let s:colors.base15 = { 'gui': '#d9d9da', 'cterm': 15 }  " bright white

let s:colors.gray = { 'gui': '#2d2d42', 'cterm': 238 }
let s:colors.green = { 'gui': '#123815', 'cterm': 22 }
let s:colors.darkCyan = { 'gui': '#192224', 'cterm': 235 }
let s:colors.white = { 'gui': '#ffffff', 'cterm': 15 }
let s:colors.darkpurple = { 'gui': '#2a2932', 'cterm': 236 }
let s:colors.linenr = { 'gui': '#a1a6a8', 'cterm': 248 }
let s:colors.red = { 'gui': '#824147' }

" Native highlighting ==========================================================

let s:background = 'base0'
let s:linenr_background = 'base8'

call s:Col('Normal', 'base15', s:background)
call s:Col('NonText', 'base2')

" Cursors
call s:Col('Cursor', 'base8', 'base15')
call s:Col('CursorLine', '', 'base8')
call s:Col('CursorColumn', '', s:linenr_background)

" Columns, Lines, Splitters and so on...
call s:Col('LineNr', 'linenr', s:linenr_background)
call s:Col('CursorLineNr', 'base15', s:linenr_background)
call s:Col('SignColumn', '', s:linenr_background)
call s:Col('ColorColumn', '', s:linenr_background)
call s:Col('VertSplit', 'base15', s:linenr_background)
call s:Attr('VertSplit', 'bold')

call s:Col('Visual', 'base15', 'base7')
call s:Col('VusualNOS', 'base15', 'gray')

call s:Col('Comment', 'gray')
call s:Col('String', 'base6')
call s:Col('Character', 'base6')
call s:Col('Number', 'base3')
call s:Col('Float', 'base4')
call s:Col('Boolean', 'base14')
call s:Attr('Boolean', 'bold')
call s:Col('Operator', 'base10')
call s:Attr('Operator', 'bold')
call s:Col('Statement', 'base10')
call s:Col('Special', 'base14')
call s:Col('Identifier', 'base12')
call s:Col('Repeat', 'base10')
call s:Attr('Repeat', 'bold')
call s:Col('Structure', 'base1')
call s:Attr('Structure', 'bold')

call s:Col('Function', 'base13')
call s:Attr('Function', 'bold')
call s:Col('Exception', 'base10')
call s:Attr('Exception', 'bold')
call s:Col('Keyword', 'base9')
call s:Attr('Keyword', 'bold')
call s:Col('Error', 'base15', 'base1')

call s:Col('Constant', 'base4')
call s:Col('Typedef', 'base10')
call s:Attr('Typedef', 'bold')
call s:Col('StorageClass', 'base4')
call s:Col('Title', 'base10', 'base0')
call s:Attr('Title', 'bold')

call s:Col('Underlined', 'base15')
call s:Attr('Underlined', 'underline')

call s:Col('Type', 'base10')
call s:Attr('Type', 'bold')

call s:Col('PreProc', 'base9')
call s:Attr('PreProc', 'bold')

call s:Col('Todo', 'base15', 'base2')

call s:Col('StatusLine', 'base15', 'green')
call s:Attr('StatusLine', 'bold')
call s:Col('StatusLineNC', 'base15', 'green')
call s:Attr('StatusLineNC', 'bold')

call s:Col('MatchParen', 'base1')
call s:Attr('MatchParen', 'bold')

call s:Col('SpecialKey', 'base2')

call s:Col('Search', 'base15', 'base2')
call s:Col('IncSearch', 'base15', 'base13')

call s:Col('PMenu', 'base10', s:background)
call s:Col('PMenuSel', 'base15', 'base13')
call s:Col('PmenuSbar', '', s:background)
call s:Col('PMenuThumb', '', 'gray')

call s:Col('WildMenu', 'base15', 'base13')
call s:Attr('WildMenu', 'bold')

call s:Col('ErrorMsg', 'white', 'base1')
call s:Col('Error', 'base15', 'base1')
call s:Col('ModeMsg', 'base15', 'base5')
call s:Col('WarningMsg', 'base15', 'base3')

call s:Col('TabLine', 'base15', 'base5')
call s:Attr('TabLine', 'bold')
call s:Col('TabLineSel', 'base15', 'base13')
call s:Attr('TabLine', 'bold')
call s:Col('TabLineFill', 'base0', s:background)

call s:Col('SpellBad', 'base15', 'base9')
call s:Attr('SpellBad', 'bold')
call s:Col('SpellCap', 'base15', 'base4')
call s:Attr('SpellCap', 'bold')
call s:Col('SpellRare', 'base15', 'base3')
call s:Attr('SpellRare', 'underline')

call s:Col('DiffText', '', 'base5')
call s:Col('DiffDelete', '', 'base2')
call s:Col('DiffChange', '', 'base5')
call s:Col('DiffAdd', '', 'base2')

call s:Col('Include', 'green')
call s:Attr('Include', 'bold')
call s:Col('Conditional', 'base10')
call s:Attr('Conditional', 'bold')
call s:Col('PreCondit', 'base13')
call s:Attr('PreCondit', 'bold')
call s:Col('Delimiter', 'base3')

call s:Col('Directory', 'base6')

" Plugin =======================================================================

" GitGutter
call s:Col('GitGutterAdd', 'base10', s:linenr_background)
call s:Col('GitGutterChange', 'base11', s:linenr_background)
call s:Col('GitGutterDelete', 'base9', s:linenr_background)
call s:Col('GitGutterChangeDelete', 'base12', s:linenr_background)

" Cleanup =====================================================================

unlet s:colors
unlet s:background
unlet s:linenr_background

