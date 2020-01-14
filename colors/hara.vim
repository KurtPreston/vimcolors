" Initialize a colors dictionary.
let s:colors = {}

let g:colors_name = "hara"

" Color definitions.
let s:colors.black       = ['#000000', 000]
let s:colors.deepgrey    = ['#1c1c1c', 234]
let s:colors.darkgrey    = ['#262626', 235]
let s:colors.grey        = ['#808080', 244]
let s:colors.faint       = ['#eeeeee', 255]
let s:colors.white       = ['#ffffff', 231]
let s:colors.rose        = ['#ff5f87', 204]
let s:colors.blue        = ['#0087af', 32]
let s:colors.corn	 = ['#ffffd7', 230]
let s:colors.orange 	 = ['#ff8700', 208]
let s:colors.red         = ['#d70000', 160]
let s:colors.spell       = ['#ff5f87', 204]
let s:colors.diffBlue    = ['#00005f', 17]
let s:colors.diffAddBg   = ['#87d7ff', 117]

" Highlighting function change
" Cribbed from badwolf, gruvbox.
function! s:highlight(target, fg, ...)
  " ... = bg, style.
  let histring = 'hi ' . a:target . ' '
  let fcolor = get(s:colors, a:fg)
 
  if strlen(a:fg)
    let histring .= 'guifg=' . fcolor[0] . ' ctermfg=' . fcolor[1] . ' '
  end
  
  if a:0 >= 1 && strlen(a:1)
    let bcolor = get(s:colors, a:1)
    let histring .= 'guibg=' . bcolor[0] . ' ctermbg=' . bcolor[1] . ' '
  endif 
  if a:0 >= 2 && strlen(a:2)
    let histring .= 'gui=' . a:2 . ' cterm=' . a:2 . ' '
  endif

  " Check that we actually got arguments.
  if histring != 'hi ' . a:target . ' '
    exe histring
  endif
endfunction

function! s:setLight()
  set background=light
  " Base colors.
  call s:highlight('Normal', 'deepgrey', 'white')
  call s:highlight('NonText', 'darkgrey')
  call s:highlight('comment', 'grey')
  call s:highlight('constant', 'black', 'white', 'bold')
  call s:highlight('string', 'grey')
  call s:highlight('identifier', 'black', 'white')
  call s:highlight('statement', 'black', 'white', 'bold')
  call s:highlight('define', 'black')
  call s:highlight('preproc', 'rose', 'white', 'bold')
  call s:highlight('type', 'rose')
  call s:highlight('special', 'rose', 'white', 'bold')
  call s:highlight('Underlined', 'darkgrey')
  call s:highlight('label', 'darkgrey')
  call s:highlight('operator', 'rose')
  call s:highlight('delimiter', 'grey')
  
  " Inline notifications. 
  call s:highlight('Todo', 'black', 'white', 'bold')
  call s:highlight('Search', 'white', 'deepgrey')
  call s:highlight('IncSearch', 'white', 'deepgrey')
  call s:highlight('title', 'darkgrey')
 
  " CursorLine
  call s:highlight('Cursor', 'darkgrey')
  call s:highlight('CursorLine', 'deepgrey', 'white', 'NONE')
  call s:highlight('CursorLineNr', 'blue')

  " Status line
  call s:highlight('StatusLine', 'white', 'deepgrey')
  call s:highlight('StatusLineNC', 'white', 'white')
  
  " Windows
  call s:highlight('VertSplit', 'white')

  " Diff 
  call s:highlight('DiffChange', 'black', 'corn')
  call s:highlight('DiffText', 'orange', 'corn')
  call s:highlight('DiffAdd', 'diffBlue', 'diffAddBg')
  call s:highlight('DiffDelete', 'rose', 'rose')

  " Folds
  call s:highlight('Folded', 'darkgrey')
  call s:highlight('FoldColumn', 'darkgrey')
  
  " Visual
  call s:highlight('Visual', 'red', 'white', 'underline')
  
  " Sign Column
  call s:highlight('LineNr', 'black', 'white')
  call s:highlight('SignColumn', 'rose', 'white')

  " Command window
  call s:highlight('ErrorMsg', 'rose', 'white')
  call s:highlight('WarningMsg', 'rose', 'white')
  call s:highlight('ModeMsg', 'deepgrey', 'white')
  call s:highlight('MoreMsg', 'darkgrey', 'white')
  call s:highlight('Error', 'rose', 'white')

  " Spelling
  call s:highlight('SpellLocal', 'black', 'white', 'italic')
  call s:highlight('SpellBad', 'spell', 'white', 'underline')
  call s:highlight('SpellCap', 'black', 'white', 'underline')

  " Markdown
  call s:highlight('markdownLinkText', 'blue', '', 'underline')
  call s:highlight('markdownHeadingDelimiter', 'black', '', 'bold')
  call s:highlight('markdownListMarker', 'black', '', 'bold')
  call s:highlight('markdownCodeDelimiter', 'black', '', 'bold')
  call s:highlight('markdownH1', 'deepgrey', '', 'bold')
  call s:highlight('markdownH2', 'deepgrey', '', 'bold')
  call s:highlight('markdownH3', 'deepgrey', '', 'bold')
  call s:highlight('markdownH4', 'deepgrey', '', 'bold')
  call s:highlight('markdownH5', 'deepgrey', '', 'bold')
  call s:highlight('markdownH6', 'deepgrey', '', 'bold')

endfunction

" Set base colors.
call s:setLight()
