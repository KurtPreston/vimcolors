" Name:     kxxe.vim
" Author:   Erik Jankovic <erikjankovic@gmail.com>
" URL:      https://github.com/kirecek/kxxe-vim
" Licence:  MIT

" reset all the highlighting for groups added by user
highlight clear

" get the colors back to default ones
if exists('syntax_on')
  syntax reset
endif

" set theme palete
set background=dark

" set name of color theme
let g:colors_name = 'kxxe'


" ============================================================== primary highlight groups
" Normal text
hi Normal ctermfg=251 ctermbg=232
" Non-text areas
hi NonText ctermfg=242 ctermbg=232
" Comments within a program
hi Comment ctermfg=241 cterm=NONE
" Program constants, such as numbers, quoted strings, or true/false
hi Constant ctermfg=42 ctermbg=NONE
" Variable identifier names
hi Identifier ctermfg=114 cterm=bold
" A programming language statement, usually a keyword like "if" or "while"
hi Statement ctermfg=67 cterm=bold
" A preprocessor, such as "#include" in C
hi PreProc ctermfg=183 cterm=NONE
" A variable datatype, such as "int"
hi Type ctermfg=133 cterm=NONE
" A special symbol, usually used for special characters like "\n" in strings
hi Special ctermfg=111 ctermbg=NONE
" Text that should be underlined
hi Underlined cterm=underline
" Text which contains a programming language error
hi Error ctermfg=88
" An integer variables values
hi Number ctermfg=99 ctermbg=NONE
" A function names
hi Function ctermfg=108 cterm=bold
" A operator signs such as ":=", "==", etc...
hi Operator ctermfg=162
" Include statements of programming language
hi Include ctermfg=98 cterm=NONE
" ???
hi Structure ctermfg=92 cterm=NONE

" ============================================================== extra highlight groups
" A color of TODO comment
hi Todo ctermfg=118 ctermbg=NONE cterm=bold
" Highlight color if search items
hi Search ctermfg=255 ctermbg=53 cterm=NONE
" Color if column with line numbers
hi LineNr ctermfg=236 ctermbg=232
" Configuration of cursors
hi Cursor ctermfg=NONE ctermbg=253 cterm=NONE
hi CursorIM ctermfg=NONE ctermbg=255
hi CursorLine ctermfg=NONE ctermbg=16 cterm=NONE
hi CursorColumn ctermfg=NONE ctermbg=16 cterm=NONE
" Dialogs
hi Pmenu ctermfg=252 ctermbg=236 cterm=NONE
hi PmenuSel ctermfg=255 ctermbg=238 cterm=bold
hi PmenuSbar ctermbg=236 cterm=NONE
hi PmenuThumb ctermbg=241 cterm=NONE
" Visual mode
hi Visual ctermfg=NONE ctermbg=238
hi VisualNOS cterm=underline
