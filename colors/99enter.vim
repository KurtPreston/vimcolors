" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" delay until VimEnter
if !v:vim_did_enter
    autocmd VimEnter * ++once ++nested source <sfile>
    finish
endif

if better#gui_running()
    call better#safe('GuiAdaptiveColor 1')
    call better#safe('GuiAdaptiveFont 1')
    call better#safe('GuiAdaptiveStyle Fusion')
    call better#safe('GuiScrollBar 1')
    call better#safe('GuiTabline 1')
    call better#safe('GuiPopupmenu 0')
    call better#safe('GuiRenderLigatures 0')
    call better#safe('GuiWindowOpacity 1.0')
    call better#safe('set renderoptions=type:directx', has('directx'))
    let g:drvo_glyph = [0x1F4C2, 0x1F4C4]
    let g:fontlist = ['Inconsolata LGC', 'JetBrains Mono', 'Liberation Mono',
        \ 'PT Mono', 'SF Mono', 'Ubuntu Mono']
    14Font PT Mono
elseif &t_Co >= 256
    call better#safe('set termguicolors', $TERM_PROGRAM isnot# 'Apple_Terminal')
    call better#safe('set ttyfast')
    call better#safe('set ttymouse=sgr', has('mouse_sgr'))
    call better#safe("set t_EI=\e[2\\ q t_SR=\e[4\\ q t_SI=\e[6\\ q",
        \ !has('nvim') && ($TERM_PROGRAM is# 'mintty' || $TERM_PROGRAM is# 'tmux'))
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

" create cool status line
silent! let &statusline = stalin#build('mode,buffer,,flags,ruler')
