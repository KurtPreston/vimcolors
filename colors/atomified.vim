" Vim color file
" Maintainer:	Siphalor
" Last Change:	$Date: 2018/06/20 $
" Version:	0.2


" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="atomified"

hi Normal	guifg=White guibg=grey20
hi Normal	ctermfg=White ctermbg=Black

" highlight groups
hi Cursor	guibg=White guifg=grey20
hi Cursor	ctermfg=Black ctermbg=White
hi VertSplit	guifg=#222222 guibg=#444444 gui=bold
hi VertSplit	ctermfg=Black ctermbg=Gray cterm=none
hi Folded	guibg=grey30 guifg=gold
hi FoldColumn	guibg=grey30 guifg=tan
hi IncSearch	guifg=slategrey guibg=khaki
hi ModeMsg	guifg=goldenrod gui=none
hi MoreMsg	guifg=SeaGreen gui=none
hi NonText	guifg=White guibg=grey30
hi NonText	ctermfg=7* ctermbg=0*
hi PMenu	guifg=#dddddd guibg=#666666
hi Question	guifg=springgreen
hi Search	guibg=#666666 guifg=White
hi Search	ctermfg=White ctermbg=DarkGray
hi SpecialKey	guifg=yellowgreen
hi StatusLine	guibg=#666666 guifg=White gui=none
hi StatusLine	ctermfg=Black ctermbg=White cterm=none
hi StatusLineNC	guibg=#444444 guifg=White gui=none
hi StatusLineNC	ctermfg=White ctermbg=DarkGray cterm=none
hi Title	guifg=#e5ca00 gui=none
hi Title	ctermfg=Yellow
hi Visual	gui=none guifg=khaki guibg=olivedrab
hi WarningMsg	guifg=salmon

" syntax highlighting groups
hi Comment    	guifg=#c1c1c1
hi Comment      ctermfg=DarkGray
hi Constant	    guifg=#fc494c
hi Constant     ctermfg=Lightred
hi String       guifg=#6ba6e5
hi String       ctermfg=LightBlue
hi Character    guifg=#6ba6e5
hi Character    ctermfg=LightBlue
hi Number       guifg=#fcab4e
hi Number       ctermfg=Brown
hi Boolean      guifg=#fc494c
hi Boolean      ctermfg=LightRed
hi Identifier	guifg=#71dd58
hi Identifier   ctermfg=LightGreen
hi Statement	guifg=#efce2b gui=none
hi Statement	ctermfg=Yellow
hi Operator     guifg=White
hi Operator     ctermfg=White
hi PreProc      guifg=#b874db
hi PreProc      ctermfg=Magenta
hi PreCondit	guifg=#8a74db
hi PreCondit	ctermfg=DarkMagenta
hi Include	guifg=#db749d
hi Include	ctermfg=Magenta
hi Type		guifg=#e24f51 gui=none
hi Type		ctermfg=Red cterm=none
hi Special	guifg=#7eeff7
hi Special	ctermfg=Cyan
hi Ignore	guifg=grey40
hi Ignore	ctermfg=LightGray
hi Error        guifg=#c90808 guibg=grey20 gui=bold
hi Error    ctermfg=Red ctermbg=DarkGray
hi Todo		guifg=#77e02c guibg=grey20 gui=bold
hi Todo		ctermfg=LightGreen
hi LineNr	guifg=#c1c1c1 guibg=#666666
hi LineNr	ctermfg=LightGray ctermbg=DarkGray gui=none
