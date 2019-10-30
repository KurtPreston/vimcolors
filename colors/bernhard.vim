" Initialize a colors dictionary.
let s:colors = {}

let g:colors_name = "bernhard"

" Color definitions.
let s:colors.black       = ['#000000', 000] 
let s:colors.deepgrey    = ['#1c1c1c', 234]
let s:colors.darkgrey    = ['#262626', 235]
let s:colors.grey        = ['#949494', 246]
let s:colors.white       = ['#ffffff', 231]
let s:colors.orchid      = ['#d75fd7', 170]
let s:colors.darkorchid  = ['#af5faf', 90]
let s:colors.pink        = ['#d7005f', 161]
let s:colors.crimson     = ['#b22c40', 124]

" Highlighting function
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
  call s:highlight('Normal', 'black', 'white')
  call s:highlight('NonText', 'darkgrey')
  call s:highlight('comment', 'darkorchid')
  call s:highlight('constant', 'crimson', 'white', 'bold')
  call s:highlight('string', 'grey')
  call s:highlight('identifier', 'darkgrey', 'white')
  call s:highlight('statement', 'black', '', 'bold')
  call s:highlight('define', 'darkgrey')
  call s:highlight('preproc', 'darkorchid', '', 'bold')
  call s:highlight('type', 'crimson')
  call s:highlight('special', 'black', '', 'bold')
  call s:highlight('Underlined', 'darkgrey')
  call s:highlight('label', 'darkgrey')
  call s:highlight('operator', 'pink')
  call s:highlight('delimiter', 'darkgrey')
  
  " Inline notifications. 
  call s:highlight('Todo', 'orchid', 'white', 'bold')
  call s:highlight('Search', 'white', 'crimson')
  call s:highlight('IncSearch', 'white', 'crimson')
  call s:highlight('title', 'darkgrey')
 
  " CursorLine
  call s:highlight('Cursor', 'darkgrey')
  call s:highlight('CursorLine', '', '', 'NONE')
  call s:highlight('CursorLineNr', 'crimson')

  " Status line
  call s:highlight('StatusLine', 'crimson', 'white')
  call s:highlight('StatusLineNC', 'black', 'white')
  
  " Windows
  call s:highlight('VertSplit', 'black')

  " Diff 
  call s:highlight('DiffChange', 'pink', 'white')
  call s:highlight('DiffText', 'black', 'white')
  call s:highlight('DiffAdd', 'darkorchid', 'white')
  call s:highlight('DiffDelete', 'crimson', 'white')

  " Folds
  call s:highlight('Folded', 'darkgrey')
  call s:highlight('FoldColumn', 'darkgrey')
  
  " Visual
  call s:highlight('Visual', 'darkgrey')
  
  " Sign Column
  call s:highlight('LineNr', 'black', 'white')
  call s:highlight('SignColumn', 'crimson', 'white')

  " Command window
  call s:highlight('ErrorMsg', 'crimson', 'white')
  call s:highlight('WarningMsg', 'crimson', 'white')
  call s:highlight('ModeMsg', 'deepgrey', 'white')
  call s:highlight('MoreMsg', 'darkgrey', 'white')
  call s:highlight('Error', 'crimson', 'white')

  " Spelling
  call s:highlight('SpellLocal', '', 'white', 'italic')
  call s:highlight('SpellBad', '', 'white', 'underline')
  call s:highlight('SpellCap', '', 'white', 'underline')

  " Markdown
  call s:highlight('markdownLinkText', 'crimson', '', 'underline')
  call s:highlight('markdownHeadingDelimiter', 'crimson')
  call s:highlight('markdownListMarker', 'crimson')
  call s:highlight('markdownCodeDelimiter', 'darkorchid')
  call s:highlight('markdownH1', 'crimson', '', 'bold')
  call s:highlight('markdownH2', 'crimson', '', 'bold')
  call s:highlight('markdownH3', 'crimson', '', 'bold')
  call s:highlight('markdownH4', 'crimson', '', 'bold')
  call s:highlight('markdownH5', 'crimson', '', 'bold')
  call s:highlight('markdownH6', 'crimson', '', 'bold')

endfunction

" Set base colors.
call s:setLight()
