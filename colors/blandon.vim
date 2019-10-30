" Base16 Landon (https://github.com/chriskempson/base16)
" Scheme: Landon Schropp (http://landonschropp.com)
" Nvim template: Nate Soares (http://so8r.es)

" The main ideas of this template are as follows:
" 1. Expose the available colors via g:base16_color_dict.
" 2. Use the default vim color allocation. In other words, compared to the
"    default vim theme, using this theme should change which red, blue, and
"    green you see, but it should not change which things appear red vs blue
"    vs green.
" 3. Expose a g:base16_color_overrides parameter so that you *can* change
"    which things appear red vs blue vs green, in such a way that if you
"    change themes mid-flight then your customizations get re-applied.
" 4. Expose a Base16Highlight command that you can use in case the above
"    parameters are not enough for you.
" 5. Expose a g:base16_transparent_background option in case you want vim to
"    let the terminal set the background (e.g., if your terminal has
"    a transparent background or a background image).
"
" This color scheme assumes you're using neovim, and that your terminal is set
" up to use fancy colors. See |termguicolors| in neovim.
" TODO: The ideas above could all be applied to make a better vim theme; the
" labor would mainly be in using cterm instead of gui everywhere. I lack the
" time to do this properly.

if !(has('termguicolors') || has('gui_running'))
  echohl ErrorMsg
  echomsg 'This color scheme may only be used with termguicolors enabled.'
  echohl None
  finish
endif

" Boilerplate: clear existing highlighting, reset the syntax, etc.
highlight clear
if exists('syntax_on')
  syntax reset
endif

" Tell them our name.
let g:colors_name = 'blandon-light'

set background=light


" The Color Dictionary -------------------------------------------------------
" You may use this global dictionary to access your 16 colors.
" If you don't want it, you can always |:unlet| it after |:colorscheme|.
" In addition to these 16 colors, you'll also have relative colors which link
" to the light/dark greys differently depending on &background. See below.
"
" dark3 is the darkest grey; light3 is the lightest grey.
let g:base16_color_dict = {
      \ 'black':  '#202746',
      \ 'dark3':  '#374375',
      \ 'dark2':  '#5c699b',
      \ 'dark1':  '#6b7394',
      \ 'light1': '#898ea4',
      \ 'light2': '#a4abc4',
      \ 'light3': '#dfe2f1',
      \ 'white':  '#f5f7ff',
      \ 'red':    '#c94d60',
      \ 'orange': '#c76b29',
      \ 'yellow': '#c08b30',
      \ 'green':  '#5fb391',
      \ 'aqua':   '#38bfee',
      \ 'blue':   '#4193d6',
      \ 'purple': '#6679cc',
      \ 'brown':  '#a95878',
      \ 'cursor': '#e6e0ce'}

" The extra colors that you have at your disposal are:
" base similar3 similar2, similar1, contrast1, contrast2, contrast3 antibase.
" If background is dark, then this spectrum runs black ... white.
" If background is light, it runs white ... black.
" Higher numbers are more extreme. So similar3 is most similar to base, and
" contrast3 is most similar to antibase.
if &background == 'dark'
  let g:base16_color_dict['base'] = g:base16_color_dict['black']
  let g:base16_color_dict['similar3'] = g:base16_color_dict['dark3']
  let g:base16_color_dict['similar2'] = g:base16_color_dict['dark2']
  let g:base16_color_dict['similar1'] = g:base16_color_dict['dark1']
  let g:base16_color_dict['contrast1'] = g:base16_color_dict['light1']
  let g:base16_color_dict['contrast2'] = g:base16_color_dict['light2']
  let g:base16_color_dict['contrast3'] = g:base16_color_dict['light3']
  let g:base16_color_dict['antibase'] = g:base16_color_dict['white']
else
  let g:base16_color_dict['base'] = g:base16_color_dict['white']
  let g:base16_color_dict['similar3'] = g:base16_color_dict['light3']
  let g:base16_color_dict['similar2'] = g:base16_color_dict['light2']
  let g:base16_color_dict['similar1'] = g:base16_color_dict['light1']
  let g:base16_color_dict['contrast1'] = g:base16_color_dict['dark1']
  let g:base16_color_dict['contrast2'] = g:base16_color_dict['dark2']
  let g:base16_color_dict['contrast3'] = g:base16_color_dict['dark3']
  let g:base16_color_dict['antibase'] = g:base16_color_dict['black']
endif


" The Base16 Highlight Command -----------------------------------------------
" Example: Base16Highlight myGroup fg=blue bg=green bold italic
" The first argument should be a group name.
" The remaining arguments may start with fg= bg= or sp=
" If they don't, they are treated as atrtibutes like bold italic underline.
" TODO: Implement completion, of syntx groups, colors, and attributes.
command! -bang -nargs=+ Base16Highlight call s:Base16Highlight(<q-bang>=='!', <f-args>)

" This is the function that implements the Base16Highlight command.
function! s:Base16Highlight(bang, group, ...)
  if a:bang
    execute 'highlight clear' a:group
  endif
  let l:attrs = []
  for l:arg in a:000
    if l:arg =~# 'fg='
      let l:color = s:LookupColor(l:arg[3:])
      execute 'highlight' a:group 'guifg='.l:color
    elseif l:arg =~# 'bg='
      let l:color = s:LookupColor(l:arg[3:])
      execute 'highlight' a:group 'guibg='.l:color
    elseif l:arg =~# 'sp='
      let l:color = s:LookupColor(l:arg[3:])
      execute 'highlight' a:group 'guisp='.l:color
    else
      call add(l:attrs, l:arg)
    endif
  endfor
  if len(l:attrs) > 0
    execute 'highlight' a:group 'gui='.join(l:attrs, ',')
  endif
endfunction

" Looks up a color in the color dictionary.
" Vim allows you to specify special colors 'bg' and 'fg' for the normal
" background and foreground. We nede to implement special-case code for
" handling those (rather than just using 'base' and 'antibase') because it
" might be the case that the normal background is nothing (if, e.g., the user
" wants vim to have a transparent background so that the terminal image
" / transparency will show through).
function! s:LookupColor(color)
  if a:color == 'bg' || a:color == 'background' || a:color == 'fg' || a:color == 'foreground'
    return a:color
  endif
  try
    return g:base16_color_dict[a:color]
  catch /E716:/
    echohl ErrorMsg
    echomsg 'unrecognized color:' a:color
    echohl None
    return g:base16_color_dict['antibase']
  endtry
endfunction


" The Color Specifications ---------------------------------------------------
" Our colors are more-or-less the style that you get if you do |:hi clear|.
" In other words, by default, the base16 theme will change whwich
" yellow/red/etc you're seeing, but not which things are yellow vs red.
"
" There are a few exceptions to this rule.
" 1. When it comes to UI components (like the status line and the cursor
"    line), this theme does a bit of work to make everything look nice. In
"    this regard, the theme here is built off of the original solarized theme,
"    which I think did a pretty good job at this. (This is a finickey task.)
" 2. We often implement background colors using the reverse display-mode. This
"    makes life better when using cursorline: if ErrorMsg has fg=white bg=red,
"    then when you put a cursorline on it and it sets bg=similar2, error
"    messages now appear with white text and grey background. If instead
"    ErroMsg has bg=white fg=red reverse then the bg remains red the cursor is
"    over the message.
" 3. We use greys for thinsg like Comment and NonText, when the default
"    styling uses blues.
let s:specs = {}

" If the user has set g:base16_transparent_background then the normal group
" has no background color.
if exists('g:base16_transparent_background') && g:base16_transparent_background
  let s:specs['Normal'] = 'fg=antibase'
else
  let s:specs['Normal'] = 'fg=antibase bg=base'
endif

" The core vim defaults are as follows:
"   Comment        fg=#80a0ff
"   Constant       fg=#ffa0a0
"   Special        fg=Orange
"   Identifier     fg=#40ffff
"   Statement      bold fg=#ffff60
"   PreProc        fg=#ff80ff
"   Type           bold fg=#60ff60
"   Underlined     underline fg=#80a0ff
"   Ignore         fg=bg
"   Error          fg=White bg=Red
"   Todo           fg=Blue bg=Yellow
" See |group-name| for details on what means what.
" We will follow this pattern with a few minor changes:
" 1. Comments will be grey and italic, instead of blue.
" 2. We'll use the reverse trick on ErrorMsg and TODO
" 3. TODO will be black-on-yellow, because blue-on-yellow is garish.
" To override these, see the discussion on g:base16_color_overrides below.
let s:specs['Comment']     = 'fg=similar1 italic'
let s:specs['Constant']    = 'fg=red'
let s:specs['Identifier']  = 'fg=aqua'
let s:specs['Statement']   = 'fg=yellow'
let s:specs['PreProc']     = 'fg=purple'
let s:specs['Type']        = 'fg=green'
let s:specs['Special']     = 'fg=orange'
let s:specs['Underlined']  = 'fg=blue underline'
let s:specs['Ignore']      = 'fg=bg'
let s:specs['Error']       = 'fg=red bg=white bold reverse'
let s:specs['Todo']        = 'fg=purple bg=white reverse'

" For the remaining defaults, and a description of what the groups do, see
" |highlight-groups|. The defaults are included here. We make a number of
" small changes, mainly centered on using greys where the defaults use blues.
" However, we also make some major changes to the Diff* colors, which were not
" green/red/blue for add/remove/change, which is crazy.
"
" First up: highlighting for special types of characters.
"   SpecialKey     fg=Cyan
"   NonText        bold fg=Blue
"   Conceal        fg=LightGrey bg=DarkGrey
"   MatchParen     bg=DarkCyan
let s:specs['SpecialKey']   = 'fg=similar1 bold'
let s:specs['NonText']      = 'fg=similar2'
let s:specs['Conceal']      = 'fg=contrast1 bg=similar3'
let s:specs['MatchParen']   = 'fg=aqua'

" Next up: highlighting for the various kinds of messages, questions, and
" prompts that nvim throws at you.
"   ModeMsg        bold
"   MoreMsg        bold fg=SeaGreen
"   WarningMsg     fg=Red
"   ErrorMsg       fg=White bg=Red
"   Question       bold fg=Green
"   Title          bold fg=Magenta
let s:specs['ModeMsg']     = 'bold'
let s:specs['MoreMsg']     = 'fg=green bold'
let s:specs['WarningMsg']  = 'fg=red bold'
let s:specs['ErrorMsg']    = 'fg=red bg=white reverse'
let s:specs['Question']    = 'fg=aqua bold'
let s:specs['Title']       = 'fg=purple bold'

" Next up: highlighting for search, completion, and other nvim navigation
" functionality.
"   IncSearch      reverse
"   Search         fg=Black bg=Yellow
"   WildMenu       fg=Black bg=Yellow
"   Directory      fg=Cyan
" We've changed IncSearch to black-on-orange, which plays nicely with search
" being black-on-yellow. (This prevents a confusing scenario where you search,
" e.g., for something that is ErrorMsg highlighted, and it doesn't show up as
" the usual search color.)
let s:specs['IncSearch']  = 'fg=orange bg=black reverse'
let s:specs['Search']     = 'fg=yellow bg=black reverse'
let s:specs['WildMenu']   = 'fg=yellow bg=black reverse'
let s:specs['Directory']  = 'fg=aqua'

" Next up: diff highlighting. We make some big changes here, because come on,
" look at these silly defaults.
"   DiffAdd        bg=DarkBlue
"   DiffChange     bg=DarkMagenta
"   DiffDelete     bold fg=Blue bg=DarkCyan
"   DiffText       bold bg=Red
let s:specs['DiffAdd']     = 'fg=green bg=similar3 bold'
let s:specs['DiffChange']  = 'fg=yellow bg=similar3 sp=yellow bold'
let s:specs['DiffDelete']  = 'fg=red bg=similar3 bold'
let s:specs['DiffText']    = 'fg=blue bg=similar3 sp=blue bold'

" Next up: Spelling. We keep the defaults.
"   SpellBad       undercurl sp=Red
"   SpellCap       undercurl sp=Blue
"   SpellRare      undercurl sp=Magenta
"   SpellLocal     undercurl sp=Cyan
let s:specs['SpellBad'] = 'undercurl sp=red'
let s:specs['SpellCap'] = 'undercurl sp=blue'
let s:specs['SpellRare'] = 'undercurl sp=purple'
let s:specs['SpellLocal'] = 'undercurl sp=aqua'

" Now the popup menu. We keep the defaults.
"   Pmenu          bg=Magenta
"   PmenuSel       bg=DarkGrey
"   PmenuSbar      bg=Grey
"   PmenuThumb     bg=White
let s:specs['Pmenu']      = 'fg=light3 bg=purple'
let s:specs['PmenuSel']   = 'fg=purple bg=light3'
let s:specs['PmenuSbar']  = 'bg=white'
let s:specs['PmenuThumb'] = 'bg=white'

" Now for all the interface components.
" This is a pretty finickey set of UI elements to get right. We want:
" 1. Cursorline to be distinguished from statusline
" 2. Active statusline to be distinguished from inactive statusline
" 3. Boundaries between windows to be cleary dermarcated
" 4. Visual mode to be distinguished from all of the above
" 5. We want the thing to look pretty nice.
" It's difficult to meet all these constraints at once.
" Right now, this template uses more-or-less the settings from the original
" vim solarized theme. I recommend not messing with it too much.
"
" Here are the vim defaults:
"   LineNr         fg=Yellow
"   CursorLineNr   bold fg=Yellow
"   CursorLine     bg=Grey40
"   CursorColumn   bg=Grey40
"   StatusLine     bold,reverse
"   StatusLineNC   reverse
"   VertSplit      reverse
"   Visual         bg=DarkGrey
let s:specs['LineNr']        = 'fg=similar1 bg=similar3'
let s:specs['CursorLineNr']  = 'fg=blue bg=similar3 bold'
let s:specs['CursorLine']    = 'bg=light3'
let s:specs['CursorColumn']  = 'bg=similar3'
let s:specs['Visual']        = 'bg=light3'
let s:specs['StatusLine']    = 'fg=contrast2 bg=similar3 reverse bold'
let s:specs['StatusLineNC']  = 'fg=similar1 bg=similar3 reverse bold'
let s:specs['VertSplit']     = 'fg=similar1 bg=similar1'
"   TabLine        underline bg=DarkGrey
"   TabLineSel     bold
"   TabLineFill    reverse
let s:specs['TabLine']       = 'fg=contrast1 bg=similar3 sp=contrast1 underline'
let s:specs['TabLineSel']    = 'fg=similar2 bg=contrast3 sp=contrast1 underline reverse bold'
let s:specs['TabLineFill']   = 'fg=contrast1 bg=similar3 sp=contrast1 underline'
"   ColorColumn    bg=DarkRed
"   SignColumn     fg=Cyan bg=Grey
let s:specs['ColorColumn']   = 'bg=orange'
let s:specs['SignColumn']    = 'bg=similar3'
"   Folded         fg=Cyan bg=DarkGrey
"   FoldColumn     fg=Cyan bg=Grey
let s:specs['Folded']        = 'fg=contrast1 bg=similar3 underline bold'
let s:specs['FoldColumn']    = 'fg=contrast1 bg=similar3'
"   Cursor     reverse
"   TermCursor reverse
let s:specs['Cursor']        = 'bg=cursor'
let s:specs['TermCursor']    = 'fg=white bg=red'
let s:specs['iCursor']       = 'bg=green'
" highlight link TermCursor Cursor
" highlight link lCursor Cursor
let s:specs['NERDTreeFile'] = 'fg=black'

" Application ----------------------------------------------------------------
" The user may specify a dictionary g:base16_color_overrides, such as
"
" let g:base16_color_overrides = {
"         \ 'Todo': 'fg=purple bg=yellow bold',
"         \ 'myGroup': 'fg=green italic' }
"
" which will then extend the above specifications.
" Note: We recommend that you do the vast majority of your syntax highlighting
" using |:hi link| instead of g:base16_color_overrides (hence the name).
if exists('g:base16_color_overrides')
  call extend(s:specs, g:base16_color_overrides, 'force')
endif

" Now we apply all the highlights.
for [s:group, s:spec] in items(s:specs)
  execute 'Base16Highlight!' s:group s:spec
endfor

" The user may also specify g:base16_color_modifications, a dictionary of
" changes to apply afterwards. For example, you could apply
"
" let g:basea16_color_modifications = {'Identifier': 'italic'}
"
" to add italic without changing the base color.
"
" Why do we have all three of color_overrides, color_modifications, and the
" Base16Highlight command? In short, because there are lots of different
" base16 color schemes, and we want you to be able to change between them on
" the fly. If we didn't let you do this work through global variables, then
" you could run a bunch of :Base16Highlight commands in your init.vim after
" :colorscheme, but then you'd need to re-run them every time you changed
" color schemes, which would be really annoying.
if exists('g:base16_color_modifications')
  for [s:group, s:spec] in items(g:base16_color_modifications)
    execute 'Base16Highlight' s:group s:spec
  endfor
endif

unlet s:group s:spec s:specs


" Neovim :terminal Configuration ---------------------------------------------
" The colors used by terminals started insight neovim.
" We do not set: light blue, light green, light cyan, light purple.
" Light red is set to orange.
let   g:terminal_color_0  = g:base16_color_dict['black']   " black
let   g:terminal_color_1  = g:base16_color_dict['blue']    " blue
let   g:terminal_color_2  = g:base16_color_dict['green']   " green
let   g:terminal_color_3  = g:base16_color_dict['aqua']    " cyan
let   g:terminal_color_4  = g:base16_color_dict['red']     " red
let   g:terminal_color_5  = g:base16_color_dict['purple']  " purple
let   g:terminal_color_6  = g:base16_color_dict['brown']   " brown
let   g:terminal_color_7  = g:base16_color_dict['light2']  " light grey
let   g:terminal_color_8  = g:base16_color_dict['dark2']   " dark grey
" let g:terminal_color_9  = g:base16_color_dict['...']     " light blue
" let g:terminal_color_10 = g:base16_color_dict['...']     " light green
" let g:terminal_color_11 = g:base16_color_dict['...']     " light cyan
let   g:terminal_color_12 = g:base16_color_dict['orange']  " light red
" let g:terminal_color_13 = g:base16_color_dict['...']     " light purple
let   g:terminal_color_14 = g:base16_color_dict['yellow']  " yellow
let   g:terminal_color_15 = g:base16_color_dict['white']   " white


