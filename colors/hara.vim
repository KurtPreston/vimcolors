" Initialize a colors dictionary.
let s:colors = {}

let g:colors_name = "hara"

" Color definitions.
let s:colors.black       = ['#000000', 000]
let s:colors.deepgrey    = ['#1c1c1c', 234]
let s:colors.darkgrey    = ['#262626', 235]
let s:colors.grey        = ['#808080', 244]
let s:colors.faint       = ['#eeeeee', 255]
let s:colors.null        = ['#ffffff', 'NONE']
let s:colors.white       = ['#ffffff', 256]
let s:colors.rose        = ['#ff5f87', 204]
let s:colors.blue        = ['#0087af', 32]
let s:colors.corn	 = ['#ffffd7', 230]
let s:colors.orange 	 = ['#ff8700', 208]
let s:colors.red         = ['#d70000', 160]
let s:colors.spell       = ['#ff5f87', 204]
let s:colors.darkGreen   = ['#00d75f', 22]
let s:colors.paleGreen   = ['#87d787', 151]

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
  call s:highlight('Normal', 'deepgrey', 'null')
  call s:highlight('NonText', 'null')
  call s:highlight('EndOfBuffer', 'null')
  call s:highlight('comment', 'grey')
  call s:highlight('constant', 'black', 'null', 'bold')
  call s:highlight('string', 'grey')
  call s:highlight('identifier', 'black', 'null')
  call s:highlight('statement', 'black', 'null', 'bold')
  call s:highlight('define', 'black')
  call s:highlight('preproc', 'rose', 'null', 'bold')
  call s:highlight('type', 'rose')
  call s:highlight('special', 'rose', 'null', 'bold')
  call s:highlight('Underlined', 'darkgrey')
  call s:highlight('label', 'darkgrey')
  call s:highlight('operator', 'rose')
  call s:highlight('delimiter', 'grey')

  " End of Buffer
  " Removes ~~~ marks denoting the end of a buffer.
  call s:highlight('EndOfBuffer', 'white', 'null')

  " Inline notifications.
  call s:highlight('Todo', 'black', 'null', 'bold')
  call s:highlight('Search', 'faint', 'deepgrey')
  call s:highlight('IncSearch', 'faint', 'deepgrey')
  call s:highlight('title', 'darkgrey')

  " CursorLine
  " Do not alter styles on the current cursor line.
  hi clear CursorLine
  call s:highlight('CursorLineNr', 'rose', 'faint', 'bold')

  " CursorColumn
  call s:highlight('CursorColumn', 'blue', 'blue')

  " Status line
  call s:highlight('StatusLine', 'black', 'null')
  call s:highlight('StatusLineNC', 'grey', 'null')
  
  " Windows
  call s:highlight('VertSplit', 'black', 'black')

  " Diff
  call s:highlight('DiffChange', 'black', 'corn')
  call s:highlight('DiffText', 'orange', 'corn')
  call s:highlight('DiffAdd', 'black', 'paleGreen')
  call s:highlight('DiffDelete', 'rose', 'rose')

  " Folds
  call s:highlight('Folded', 'blue', 'null')
  call s:highlight('FoldColumn', 'blue', 'null')

  " Visual
  call s:highlight('Visual', 'red', 'null', 'underline')

  " Line Numbers
  call s:highlight('LineNr', 'black', 'null')

  " Sign Column
  call s:highlight('SignColumn', 'rose', 'null')

  " Command window
  call s:highlight('ErrorMsg', 'rose', 'null')
  call s:highlight('WarningMsg', 'rose', 'null')
  call s:highlight('ModeMsg', 'deepgrey', 'null')
  call s:highlight('MoreMsg', 'darkgrey', 'null')
  call s:highlight('Error', 'rose', 'null')

  " Spelling
  call s:highlight('SpellLocal', 'black', 'null', 'italic')
  call s:highlight('SpellBad', 'spell', 'null', 'underline')
  call s:highlight('SpellCap', 'black', 'null', 'underline')

  " Markdown
  call s:highlight('markdownLinkText', 'blue', '', 'underline')
  call s:highlight('markdownHeadingDelimiter', 'deepgrey', 'null', 'bold,underline')
  call s:highlight('markdownListMarker', 'black', '', 'bold')
  call s:highlight('markdownCodeDelimiter', 'rose', 'null', 'bold')
  call s:highlight('markdownItalic', 'null', '', 'NONE')
  call s:highlight('markdownH1', 'deepgrey', 'null', 'bold,underline')
  call s:highlight('markdownH2', 'deepgrey', 'null', 'bold,underline')
  call s:highlight('markdownH3', 'deepgrey', 'null', 'bold,underline')
  call s:highlight('markdownH4', 'deepgrey', 'null', 'bold,underline')
  call s:highlight('markdownH5', 'deepgrey', 'null', 'bold,underline')
  call s:highlight('markdownH6', 'deepgrey', 'null', 'bold,underline')

endfunction

" Set base colors.
call s:setLight()
