" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" delay until VimEnter
if !v:vim_did_enter
    autocmd VimEnter * ++once ++nested source <sfile>
    finish
endif

if better#gui_running()
    " +++++ GUI +++++
    let g:fontlist = ['Inconsolata LGC', 'JetBrains Mono', 'Liberation Mono',
        \ 'PT Mono', 'SF Mono', 'Ubuntu Mono']
    14Font PT Mono
    let g:drvo_glyph = [0x1F4C2, 0x1F4C4]
    if has('directx')
        set renderoptions=type:directx
    endif
    if exists(':GuiPopupmenu') == 2
        GuiPopupmenu 0
    endif
elseif &t_Co >= 256
    " +++++ 256-color terminal +++++
    if $TERM_PROGRAM !=# 'Apple_Terminal'
        set termguicolors
    endif
    if !has('nvim')
        set ttyfast
        if has('mouse_sgr')
            set ttymouse=sgr
        endif
        if $TERM_PROGRAM ==# 'mintty'
            let &t_EI = "\e[2 q"
            let &t_SR = "\e[4 q"
            let &t_SI = "\e[6 q"
        endif
    endif
else
    " +++++ Plain terminal +++++
endif

" if colorscheme wasn't set yet
if !exists('g:colors_name')
    set background=light
    silent! colorscheme modest
endif

" if we have not opened anything yet then show MRU files list
if bufnr('$') == 1 && better#is_blank_buffer()
    MRU
endif

silent! let &statusline = stalin#build('mode,buffer,,flags,ruler')
call unimpaired#emulate()
call misc#autocomplete(3)
