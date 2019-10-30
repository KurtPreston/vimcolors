"        Name: Film Noir (1.0.0)
"     Creator: Judah Caruso Rodriguez <judah@tuta.io>
"     License: GNU General Public License v2.0 (see: LICENSE)
"  Repository: https://github.com/kyoto-shift/film-noir
" Forked From: Andreas van Cranenburgh [vim-256noir] <andreas@unstable.nl>

" Description:
"   A minimal vim colorscheme, focusing on clarity and simplicity. Based off of the
"   colorscheme 'vim-256noir' by Andreas van Cranenburgh <https://github.com/andreasvc/vim-256noir>

highlight clear
set background=dark
if version > 580
    if exists('syntax_on')
        syntax reset
    endif
endif

let s:main_color = get(g:, 'film_noir_color', 'blue')
let g:colors_name = 'film_noir'

if s:main_color == 'red'
    if has('gui_running') || &t_Co == 256
        hi String cterm=NONE ctermfg=196 ctermbg=16 gui=NONE guifg=#ff549f guibg=#000000
        hi Comment cterm=NONE ctermfg=88 ctermbg=16 gui=NONE guifg=#830457 guibg=#000000
        hi Number cterm=NONE ctermfg=196 ctermbg=16 gui=NONE guifg=#ff549f guibg=#000000
        hi Error cterm=NONE ctermfg=255 ctermbg=88 gui=NONE guifg=#eeeeee guibg=#830457
        hi ErrorMsg cterm=NONE ctermfg=255 ctermbg=124 gui=NONE guifg=#eeeeee guibg=#c13f7c
        hi DiffChange cterm=NONE ctermfg=124 ctermbg=255 gui=NONE guifg=#c13f7c guibg=#eeeeee
        hi DiffText cterm=bold ctermfg=250 ctermbg=196 gui=bold guifg=#bcbcbc guibg=#ff549f
        hi SignColumn cterm=NONE ctermfg=124 ctermbg=240 gui=NONE guifg=#c13f7c guibg=#585858
        hi SpellBad cterm=undercurl ctermfg=255 ctermbg=88 gui=undercurl guifg=#eeeeee guibg=#830457
        hi SpellRare cterm=NONE ctermfg=196 ctermbg=88 gui=NONE guifg=#ff549f guibg=#830457
        hi SpellCap cterm=NONE ctermfg=255 ctermbg=88 gui=NONE guifg=#eeeeee guibg=#830457
        hi Normal cterm=NONE ctermfg=250 ctermbg=16 gui=NONE guifg=#bcbcbc guibg=#000000
        hi Keyword cterm=NONE ctermfg=255 ctermbg=16 gui=NONE guifg=#eeeeee guibg=#000000
        hi Constant cterm=NONE ctermfg=252 ctermbg=16 gui=NONE guifg=#d0d0d0 guibg=#000000
        hi Search cterm=NONE ctermfg=245 ctermbg=236 gui=NONE guifg=#8a8a8a guibg=#303030
        hi IncSearch cterm=reverse ctermfg=255 ctermbg=245 gui=reverse guifg=#eeeeee guibg=#8a8a8a
        hi WildMenu cterm=NONE ctermfg=240 ctermbg=255 gui=NONE guifg=#585858 guibg=#eeeeee
        hi Pmenu cterm=NONE ctermfg=255 ctermbg=240 gui=NONE guifg=#eeeeee guibg=#585858
        hi PmenuThumb cterm=NONE ctermfg=232 ctermbg=240 gui=NONE guifg=#080808 guibg=#585858
        hi SpecialKey cterm=NONE ctermfg=16 ctermbg=255 gui=NONE guifg=#000000 guibg=#eeeeee
        hi MatchParen cterm=NONE ctermfg=16 ctermbg=240 gui=NONE guifg=#000000 guibg=#585858
        hi CursorLine cterm=NONE ctermfg=NONE ctermbg=233 gui=NONE guifg=NONE guibg=#121212
        hi StatusLine cterm=bold,reverse ctermfg=245 ctermbg=16 gui=bold,reverse guifg=#8a8a8a guibg=#000000
        hi StatusLineNC cterm=reverse ctermfg=236 ctermbg=16 gui=reverse guifg=#303030 guibg=#000000
        hi Visual cterm=reverse ctermfg=250 ctermbg=16 gui=reverse guifg=#bcbcbc guibg=#000000
        hi TermCursor cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
    else
        hi String cterm=NONE ctermfg=Red ctermbg=Black
        hi Comment cterm=NONE ctermfg=DarkRed ctermbg=Black
        hi Number cterm=NONE ctermfg=Red ctermbg=Black
        hi Error cterm=NONE ctermfg=White ctermbg=DarkRed
        hi ErrorMsg cterm=NONE ctermfg=White ctermbg=Red
        hi DiffChange cterm=NONE ctermfg=Red ctermbg=White
        hi DiffText cterm=bold ctermfg=Grey ctermbg=Red
        hi SignColumn cterm=NONE ctermfg=Red ctermbg=DarkGrey
        hi SpellBad cterm=undercurl ctermfg=White ctermbg=DarkRed
        hi SpellRare cterm=NONE ctermfg=Red ctermbg=DarkRed
        hi SpellCap cterm=NONE ctermfg=White ctermbg=DarkRed
        hi Normal cterm=NONE ctermfg=Grey ctermbg=Black
        hi Keyword cterm=NONE ctermfg=White ctermbg=Black
        hi Constant cterm=NONE ctermfg=Grey ctermbg=Black
        hi Search cterm=NONE ctermfg=Grey ctermbg=DarkGrey
        hi IncSearch cterm=reverse ctermfg=White ctermbg=Grey
        hi WildMenu cterm=NONE ctermfg=DarkGrey ctermbg=White
        hi Pmenu cterm=NONE ctermfg=White ctermbg=DarkGrey
        hi PmenuThumb cterm=NONE ctermfg=Black ctermbg=DarkGrey
        hi SpecialKey cterm=NONE ctermfg=Black ctermbg=White
        hi MatchParen cterm=NONE ctermfg=Black ctermbg=DarkGrey
        hi CursorLine cterm=NONE ctermfg=NONE ctermbg=Black
        hi StatusLine cterm=bold,reverse ctermfg=Grey ctermbg=Black
        hi StatusLineNC cterm=reverse ctermfg=DarkGrey ctermbg=Black
        hi Visual cterm=reverse ctermfg=Grey ctermbg=Black
        hi TermCursor cterm=reverse ctermfg=NONE ctermbg=NONE
    endif
endif

if s:main_color == 'green'
    if has('gui_running') || &t_Co == 256
        hi String cterm=NONE ctermfg=46 ctermbg=16 gui=NONE guifg=#9fff54 guibg=#000000
        hi Comment cterm=NONE ctermfg=22 ctermbg=16 gui=NONE guifg=#669d33 guibg=#000000
        hi Number cterm=NONE ctermfg=46 ctermbg=16 gui=NONE guifg=#9fff54 guibg=#000000
        hi Error cterm=NONE ctermfg=255 ctermbg=22 gui=NONE guifg=#eeeeee guibg=#669d33
        hi ErrorMsg cterm=NONE ctermfg=255 ctermbg=34 gui=NONE guifg=#eeeeee guibg=#7cc13f
        hi DiffChange cterm=NONE ctermfg=22 ctermbg=255 gui=NONE guifg=#669d33 guibg=#eeeeee
        hi DiffText cterm=bold ctermfg=255 ctermbg=22 gui=bold guifg=#eeeeee guibg=#669d33
        hi SignColumn cterm=NONE ctermfg=46 ctermbg=240 gui=NONE guifg=#9fff54 guibg=#585858
        hi SpellBad cterm=undercurl ctermfg=255 ctermbg=22 gui=undercurl guifg=#eeeeee guibg=#669d33
        hi SpellRare cterm=NONE ctermfg=46 ctermbg=22 gui=NONE guifg=#9fff54 guibg=#669d33
        hi SpellCap cterm=NONE ctermfg=255 ctermbg=22 gui=NONE guifg=#eeeeee guibg=#669d33
        hi Normal cterm=NONE ctermfg=250 ctermbg=16 gui=NONE guifg=#bcbcbc guibg=#000000
        hi Keyword cterm=NONE ctermfg=255 ctermbg=16 gui=NONE guifg=#eeeeee guibg=#000000
        hi Constant cterm=NONE ctermfg=252 ctermbg=16 gui=NONE guifg=#d0d0d0 guibg=#000000
        hi Search cterm=NONE ctermfg=245 ctermbg=236 gui=NONE guifg=#8a8a8a guibg=#303030
        hi IncSearch cterm=reverse ctermfg=255 ctermbg=245 gui=reverse guifg=#eeeeee guibg=#8a8a8a
        hi WildMenu cterm=NONE ctermfg=240 ctermbg=255 gui=NONE guifg=#585858 guibg=#eeeeee
        hi Pmenu cterm=NONE ctermfg=255 ctermbg=240 gui=NONE guifg=#eeeeee guibg=#585858
        hi PmenuThumb cterm=NONE ctermfg=232 ctermbg=240 gui=NONE guifg=#080808 guibg=#585858
        hi SpecialKey cterm=NONE ctermfg=16 ctermbg=255 gui=NONE guifg=#000000 guibg=#eeeeee
        hi MatchParen cterm=NONE ctermfg=16 ctermbg=240 gui=NONE guifg=#000000 guibg=#585858
        hi CursorLine cterm=NONE ctermfg=NONE ctermbg=233 gui=NONE guifg=NONE guibg=#121212
        hi StatusLine cterm=bold,reverse ctermfg=245 ctermbg=16 gui=bold,reverse guifg=#8a8a8a guibg=#000000
        hi StatusLineNC cterm=reverse ctermfg=236 ctermbg=16 gui=reverse guifg=#303030 guibg=#000000
        hi Visual cterm=reverse ctermfg=250 ctermbg=16 gui=reverse guifg=#bcbcbc guibg=#000000
        hi TermCursor cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
    else
        hi String cterm=NONE ctermfg=Green ctermbg=Black
        hi Comment cterm=NONE ctermfg=DarkGreen ctermbg=Black
        hi Number cterm=NONE ctermfg=Green ctermbg=Black
        hi Error cterm=NONE ctermfg=White ctermbg=DarkGreen
        hi ErrorMsg cterm=NONE ctermfg=White ctermbg=Green
        hi DiffChange cterm=NONE ctermfg=DarkGreen ctermbg=White
        hi DiffText cterm=bold ctermfg=White ctermbg=DarkGreen
        hi SignColumn cterm=NONE ctermfg=Green ctermbg=DarkGrey
        hi SpellBad cterm=undercurl ctermfg=White ctermbg=DarkGreen
        hi SpellRare cterm=NONE ctermfg=Green ctermbg=DarkGreen
        hi SpellCap cterm=NONE ctermfg=White ctermbg=DarkGreen
        hi Normal cterm=NONE ctermfg=Grey ctermbg=Black
        hi Keyword cterm=NONE ctermfg=White ctermbg=Black
        hi Constant cterm=NONE ctermfg=Grey ctermbg=Black
        hi Search cterm=NONE ctermfg=Grey ctermbg=DarkGrey
        hi IncSearch cterm=reverse ctermfg=White ctermbg=Grey
        hi WildMenu cterm=NONE ctermfg=DarkGrey ctermbg=White
        hi Pmenu cterm=NONE ctermfg=White ctermbg=DarkGrey
        hi PmenuThumb cterm=NONE ctermfg=Black ctermbg=DarkGrey
        hi SpecialKey cterm=NONE ctermfg=Black ctermbg=White
        hi MatchParen cterm=NONE ctermfg=Black ctermbg=DarkGrey
        hi CursorLine cterm=NONE ctermfg=NONE ctermbg=Black
        hi StatusLine cterm=bold,reverse ctermfg=Grey ctermbg=Black
        hi StatusLineNC cterm=reverse ctermfg=DarkGrey ctermbg=Black
        hi Visual cterm=reverse ctermfg=Grey ctermbg=Black
        hi TermCursor cterm=reverse ctermfg=NONE ctermbg=NONE
    endif
endif

if s:main_color == 'blue'
    if has('gui_running') || &t_Co == 256
        hi String cterm=NONE ctermfg=21 ctermbg=16 gui=NONE guifg=#549fff guibg=#000000
        hi Comment cterm=NONE ctermfg=18 ctermbg=16 gui=NONE guifg=#33669d guibg=#000000
        hi Number cterm=NONE ctermfg=21 ctermbg=16 gui=NONE guifg=#549fff guibg=#000000
        hi Error cterm=NONE ctermfg=255 ctermbg=18 gui=NONE guifg=#eeeeee guibg=#33669d
        hi ErrorMsg cterm=NONE ctermfg=255 ctermbg=18 gui=NONE guifg=#eeeeee guibg=#33669d
        hi DiffChange cterm=NONE ctermfg=18 ctermbg=255 gui=NONE guifg=#33669d guibg=#eeeeee
        hi DiffText cterm=bold ctermfg=255 ctermbg=21 gui=bold guifg=#eeeeee guibg=#549fff
        hi SignColumn cterm=NONE ctermfg=21 ctermbg=240 gui=NONE guifg=#549fff guibg=#585858
        hi SpellBad cterm=undercurl ctermfg=255 ctermbg=18 gui=undercurl guifg=#eeeeee guibg=#33669d
        hi SpellRare cterm=NONE ctermfg=21 ctermbg=18 gui=NONE guifg=#549fff guibg=#33669d
        hi SpellCap cterm=NONE ctermfg=255 ctermbg=18 gui=NONE guifg=#eeeeee guibg=#33669d
        hi Normal cterm=NONE ctermfg=250 ctermbg=16 gui=NONE guifg=#bcbcbc guibg=#000000
        hi Keyword cterm=NONE ctermfg=255 ctermbg=16 gui=NONE guifg=#eeeeee guibg=#000000
        hi Constant cterm=NONE ctermfg=252 ctermbg=16 gui=NONE guifg=#d0d0d0 guibg=#000000
        hi Search cterm=NONE ctermfg=245 ctermbg=236 gui=NONE guifg=#8a8a8a guibg=#303030
        hi IncSearch cterm=reverse ctermfg=255 ctermbg=245 gui=reverse guifg=#eeeeee guibg=#8a8a8a
        hi WildMenu cterm=NONE ctermfg=240 ctermbg=255 gui=NONE guifg=#585858 guibg=#eeeeee
        hi Pmenu cterm=NONE ctermfg=255 ctermbg=240 gui=NONE guifg=#eeeeee guibg=#585858
        hi PmenuThumb cterm=NONE ctermfg=232 ctermbg=240 gui=NONE guifg=#080808 guibg=#585858
        hi SpecialKey cterm=NONE ctermfg=16 ctermbg=255 gui=NONE guifg=#000000 guibg=#eeeeee
        hi MatchParen cterm=NONE ctermfg=16 ctermbg=240 gui=NONE guifg=#000000 guibg=#585858
        hi CursorLine cterm=NONE ctermfg=NONE ctermbg=233 gui=NONE guifg=NONE guibg=#121212
        hi StatusLine cterm=bold,reverse ctermfg=245 ctermbg=16 gui=bold,reverse guifg=#8a8a8a guibg=#000000
        hi StatusLineNC cterm=reverse ctermfg=236 ctermbg=16 gui=reverse guifg=#303030 guibg=#000000
        hi Visual cterm=reverse ctermfg=250 ctermbg=16 gui=reverse guifg=#bcbcbc guibg=#000000
        hi TermCursor cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
    else
        hi String cterm=NONE ctermfg=Blue ctermbg=Black
        hi Comment cterm=NONE ctermfg=DarkBlue ctermbg=Black
        hi Number cterm=NONE ctermfg=Blue ctermbg=Black
        hi Error cterm=NONE ctermfg=White ctermbg=DarkBlue
        hi ErrorMsg cterm=NONE ctermfg=White ctermbg=DarkBlue
        hi DiffChange cterm=NONE ctermfg=DarkBlue ctermbg=White
        hi DiffText cterm=bold ctermfg=White ctermbg=Blue
        hi SignColumn cterm=NONE ctermfg=Blue ctermbg=DarkGrey
        hi SpellBad cterm=undercurl ctermfg=White ctermbg=DarkBlue
        hi SpellRare cterm=NONE ctermfg=Blue ctermbg=DarkBlue
        hi SpellCap cterm=NONE ctermfg=White ctermbg=DarkBlue
        hi Normal cterm=NONE ctermfg=Grey ctermbg=Black
        hi Keyword cterm=NONE ctermfg=White ctermbg=Black
        hi Constant cterm=NONE ctermfg=Grey ctermbg=Black
        hi Search cterm=NONE ctermfg=Grey ctermbg=DarkGrey
        hi IncSearch cterm=reverse ctermfg=White ctermbg=Grey
        hi WildMenu cterm=NONE ctermfg=DarkGrey ctermbg=White
        hi Pmenu cterm=NONE ctermfg=White ctermbg=DarkGrey
        hi PmenuThumb cterm=NONE ctermfg=Black ctermbg=DarkGrey
        hi SpecialKey cterm=NONE ctermfg=Black ctermbg=White
        hi MatchParen cterm=NONE ctermfg=Black ctermbg=DarkGrey
        hi CursorLine cterm=NONE ctermfg=NONE ctermbg=Black
        hi StatusLine cterm=bold,reverse ctermfg=Grey ctermbg=Black
        hi StatusLineNC cterm=reverse ctermfg=DarkGrey ctermbg=Black
        hi Visual cterm=reverse ctermfg=Grey ctermbg=Black
        hi TermCursor cterm=reverse ctermfg=NONE ctermbg=NONE
    endif
endif

highlight! link Boolean Normal
highlight! link Delimiter Normal
highlight! link Identifier Normal
highlight! link Title Normal
highlight! link Debug Normal
highlight! link Exception Normal
highlight! link FoldColumn Normal
highlight! link Macro Normal
highlight! link ModeMsg Normal
highlight! link MoreMsg Normal
highlight! link Question Normal
highlight! link Conditional Keyword
highlight! link Statement Keyword
highlight! link Operator Keyword
highlight! link Structure Keyword
highlight! link Function Keyword
highlight! link Include Keyword
highlight! link Type Keyword
highlight! link Typedef Keyword
highlight! link Todo Keyword
highlight! link Label Keyword
highlight! link Define Keyword
highlight! link DiffAdd Keyword
highlight! link diffAdded Keyword
highlight! link diffCommon Keyword
highlight! link Directory Keyword
highlight! link PreCondit Keyword
highlight! link PreProc Keyword
highlight! link Repeat Keyword
highlight! link Special Keyword
highlight! link SpecialChar Keyword
highlight! link StorageClass Keyword
highlight! link SpecialComment String
highlight! link CursorLineNr String
highlight! link Character Number
highlight! link Float Number
highlight! link Tag Number
highlight! link Folded Number
highlight! link WarningMsg Number
highlight! link iCursor SpecialKey
highlight! link SpellLocal SpellCap
highlight! link LineNr Comment
highlight! link NonText Comment
highlight! link DiffDelete Comment
highlight! link diffRemoved Comment
highlight! link PmenuSbar Visual
highlight! link PmenuSel Visual
highlight! link VisualNOS Visual
highlight! link VertSplit Visual
highlight! link Cursor StatusLine
highlight! link Underlined SpellRare
highlight! link rstEmphasis SpellRare
highlight! link ColorColumn SpellRare
highlight! link diffChanged DiffChange
