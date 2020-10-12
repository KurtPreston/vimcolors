" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

if better#gui_running()
    " +++++ GUI +++++
    14Font PT Mono
    let g:fontlist = get(g:, 'fontlist', ['Cascadia Code PL', 'Inconsolata LGC',
        \ 'Liberation Mono', 'PT Mono', 'Ubuntu Mono'])
    let g:drvo_glyph = get(g:, 'drvo_glyph', [0x1F4C2, 0x1F4C4])
    if has('directx')
        set renderoptions=type:directx
    endif
    if exists(':GuiPopupmenu') == 2
        GuiPopupmenu 0
    endif
elseif &t_Co >= 256
    " +++++ 256-color terminal +++++
    let g:term256only = get(g:, 'term256only', ['Apple_Terminal'])
    if index(g:term256only, $TERM_PROGRAM) < 0
        " TrueColor terminal
        set termguicolors
    endif
    if !has('nvim')
        set ttyfast
        if has('mouse_sgr')
            set ttymouse=sgr
        endif
        if $TERM_PROGRAM is# 'mintty'
            " console cursor shape
            let &t_EI = "\e[2 q"
            let &t_SR = "\e[4 q"
            let &t_SI = "\e[6 q"
        endif
    endif
else
    " +++++ Plain terminal +++++
endif

" make sure the colors weren't already set (e.g. by a desktop shortcut)
if !exists('g:colors_name')
    set background=light
    silent! colorscheme modest
endif

" setup status line
silent! let &statusline = stalin#build('mode,branch,buffer,,flags,ruler')

" if we have not opened anything yet then show MRU files list
if bufnr('$') == 1 && empty(bufname(1))
    MRU
endif
