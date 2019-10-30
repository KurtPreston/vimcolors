" @Tracked
" Vim color file
" Maintainer:  Tumbler Terrall [TumblerTerrall@gmail.com]
" Last Edited: 10/23/2017 02:01 PM
" Version:     3.4

" cool help screens
" :highlight
" :h group-name
" :h highlight-groups
" :h cterm-colors
" :h highlight-args

" This file supports cterm (color terminal) and gui (gVim) (term [black & white terminal] unsupported)

if version > 580
    " no guarantees for version 5.8 and below
    hi clear
    if exists("syntax_on")
      syntax reset
    endif
endif

let g:colors_name="oceannight"

if (has("gui_running") || (&t_Co == 256))

set background=dark
" Note: This does NOT set the background color, see :h 'background'

" Your everyday options
hi Comment        cterm=NONE        ctermbg=236 ctermfg=30     gui=NONE       guibg=bg       guifg=#008080 "darkcyan
hi Constant       cterm=NONE        ctermbg=236 ctermfg=116    gui=NONE       guibg=bg       guifg=#87CEEB "SkyBlue
hi Identifier     cterm=NONE        ctermbg=236 ctermfg=120    gui=NONE       guibg=bg       guifg=#98FB98 "palegreen
hi Statement      cterm=BOLD        ctermbg=236 ctermfg=180    gui=BOLD       guibg=bg       guifg=#D2B48C "tan
hi PreProc        cterm=NONE        ctermbg=236 ctermfg=173    gui=NONE       guibg=bg       guifg=#CD853F "peru
hi Type           cterm=BOLD        ctermbg=236 ctermfg=28     gui=BOLD       guibg=bg       guifg=#008000 "DarkGreen
hi Special        cterm=NONE        ctermbg=236 ctermfg=29     gui=NONE       guibg=bg       guifg=#2E8B57 "SeaGreen
hi Todo           cterm=NONE        ctermbg=46  ctermfg=16     gui=NONE       guibg=#00FF00  guifg=#000000 "green, black
hi Cursor         cterm=NONE        ctermbg=222 ctermfg=66     gui=NONE       guibg=#F0E68C  guifg=#708090 "khaki, slategrey

" Some explanation required
hi Normal         cterm=NONE        ctermbg=236 ctermfg=231    gui=NONE       guibg=#333333  guifg=#FFFFFF "grey20, White
" These are the fall-back colors. This means that this actually sets the background color
hi Pmenu          cterm=NONE        ctermbg=44  ctermfg=18     gui=NONE       guibg=#00C5CD  guifg=#000080 "turquise3, DarkBlue
hi PmenuSel       cterm=NONE        ctermbg=239 ctermfg=167    gui=NONE       guibg=#4D4D4D  guifg=#CD5C5C "grey30, indianred
" The auto-complete menu
hi CursorLine   ctermbg=NONE        ctermbg=238 ctermfg=NONE   gui=NONE       guibg=#454545  guifg=NONE
hi CursorColumn ctermbg=NONE        ctermbg=238 ctermfg=NONE   gui=NONE       guibg=#454545  guifg=NONE
" The lines that can be turned on to highlight the entire line/column of the cursor
hi DiffText       cterm=BOLD        ctermbg=124 ctermfg=NONE   gui=BOLD       guibg=#AA0000  guifg=NONE
" In a Diff, text that differs but has a matching line
hi Folded         cterm=NONE        ctermbg=239 ctermfg=220    gui=NONE       guibg=#4D4D4D  guifg=#FFD700 "grey30, gold
hi FoldColumn     cterm=NONE        ctermbg=239 ctermfg=180    gui=NONE       guibg=#4D4D4D  guifg=#D2B48C "grey30, tan
" The color of folds in Diffs
hi ModeMsg        cterm=BOLD        ctermbg=236 ctermfg=120    gui=BOLD       guibg=bg       guifg=#98FB98 "palegreen
" Mode prompt i.e. "-- INSERT --" in command line
hi MoreMsg        cterm=BOLD        ctermbg=236 ctermfg=29     gui=BOLD       guibg=bg       guifg=#2E8B57 "SeaGreen
" Used when there's "-- MORE --" involved
hi NonText        cterm=BOLD        ctermbg=239 ctermfg=18     gui=BOLD       guibg=#4D4D4D  guifg=#000080 "grey30, DarkBlue
" Blank space after file
hi Question       cterm=BOLD        ctermbg=236 ctermfg=48     gui=BOLD       guibg=bg       guifg=#00FF7F "springgreen
" When the command line asks you Y/N questions
hi Search         cterm=NONE        ctermbg=173 ctermfg=223    gui=NONE       guibg=#CD853F  guifg=#F5DEB3 "peru, wheat
" The color that it highlights text matching your search
hi IncSearch      cterm=reverse     ctermbg=66  ctermfg=222    gui=reverse    guibg=#F0E68C  guifg=#708090 "slategrey, khaki
" As you search, the color it will highlight the first match
hi SpecialKey     cterm=NONE        ctermbg=236 ctermfg=129    gui=NONE       guibg=bg       guifg=#A020F0 "Purple
" Metakeys like 
hi StatusLine     cterm=NONE        ctermbg=145 ctermfg=16     gui=NONE       guibg=#C2BFA5  guifg=#000000
" When you have multiple windows open, the color of the line that gives you
"   filename, line number, etc.
hi StatusLineNC   cterm=NONE        ctermbg=145 ctermfg=244    gui=NONE       guibg=#C2BFA5  guifg=#7F7F7F
" Same as previous except of the windows that don't have focus
hi VertSplit      cterm=NONE        ctermbg=145 ctermfg=244    gui=NONE       guibg=#C2BFA5  guifg=#7F7F7F
" The line that separates a vertical split (probably sync with StatusLine)
hi Title          cterm=BOLD        ctermbg=236 ctermfg=167    gui=BOLD       guibg=bg       guifg=#CD5C5C "indianred
" When screen is used for output the color of the header (try :set all)
hi Visual         cterm=NONE        ctermbg=239 ctermfg=167    gui=NONE       guibg=#4D4D4D  guifg=#CD5C5C "grey30, indianred
hi VisualNOS      cterm=NONE        ctermbg=239 ctermfg=167    gui=NONE       guibg=#4D4D4D  guifg=#CD5C5C "grey30, indianred
" Visual selction (with mouse or "v") (NOS for compatibility)
hi WarningMsg     cterm=NONE        ctermbg=236 ctermfg=209    gui=NONE       guibg=bg       guifg=#FA8072 "salmon
hi WildMenu       cterm=NONE        ctermbg=173 ctermfg=231    gui=NONE       guibg=#CD853F  guifg=#FFFFFF "wheat, black
" Command-line Tab completion menu
hi SpellBad       cterm=UNDERCURL   ctermbg=236 ctermfg=208    gui=UNDERCURL  guibg=NONE     guifg=NONE guisp=#FF8800
hi SpellCap       cterm=UNDERCURL   ctermbg=236 ctermfg=63     gui=UNDERCURL  guibg=NONE     guifg=NONE guisp=#3333FF
hi SpellLocal     cterm=UNDERCURL   ctermbg=236 ctermfg=231    gui=UNDERCURL  guibg=NONE     guifg=NONE guisp=#FFFFFF
" Spell check colors
hi LineNr         cterm=NONE        ctermbg=236 ctermfg=135    gui=NONE       guibg=bg       guifg=#B030F0
" The color of the line numbers if you have them turned on (:set number)
hi Ignore         cterm=NONE        ctermbg=236 ctermfg=241    gui=NONE       guibg=bg       guifg=#666666 "grey40
" Left blank, hidden (why would you want that?)
hi ErrorMsg       cterm=NONE        ctermbg=196 ctermfg=231    gui=NONE       guibg=#FF0000  guifg=#FFFFFF "red, black
hi Error          cterm=NONE        ctermbg=196 ctermfg=231    gui=NONE       guibg=#FF0000  guifg=#FFFFFF "red, black
" The color are the command line error messages
hi Underlined     cterm=UNDERLINE   ctermbg=236 ctermfg=111    gui=UNDERLINE  guibg=bg       guifg=#80A0FF
" Underlined stuff (like hyper links)
hi Directory      cterm=NONE        ctermbg=236 ctermfg=51     gui=NONE       guibg=bg       guifg=#00FFFF "cyan
" Directories in netrw
hi SignColumn guibg=#333333
" The color of the column that signs go in

else
   " If we're in a cterm that's under 256 then just do the best we can to the basics
   set background=dark
   hi Normal       ctermbg=0
   hi Comment      ctermbg=NONE   ctermfg=3
   hi Constant     ctermbg=NONE   ctermfg=11
   hi Identifier   ctermbg=NONE   ctermfg=5
   hi Statement    ctermbg=NONE   ctermfg=6
   hi PreProc      ctermbg=NONE   ctermfg=4
   hi Type         ctermbg=NONE   ctermfg=2
   hi Special      ctermbg=NONE   ctermfg=2
   hi Todo         ctermbg=NONE   ctermfg=10
   hi Cursor       ctermbg=15     ctermfg=7
   hi CursorLine   ctermbg=8      ctermfg=NONE
   hi CursorColumn ctermbg=8      ctermfg=NONE
   hi SpecialKey   ctermbg=NONE   ctermfg=5
   hi LineNr       ctermbg=NONE   ctermfg=5
   hi Search       ctermbg=14     ctermfg=0
   hi IncSearch    ctermbg=10     ctermfg=8
   hi ModeMsg      ctermbg=NONE   ctermfg=10
endif
