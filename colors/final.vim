" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

if get(g:, 'GuiLoaded')
    if has('directx')
        set renderoptions=type:directx
    endif
    set guifont=Inconsolata\ LGC:h14:cRUSSIAN:qDEFAULT
    set mouse=ar
    " in case the colors were set by a desktop shortcut
    if !exists('g:colors_name')
        set background=dark
        silent! colorscheme hybrid
    endif
elseif &t_Co >= 256
    " assume xterm
    set mouse=ar termguicolors
    if !has('nvim')
        set ttyfast ttymouse=xterm2
    endif
    silent! colorscheme flattened_dark
else
    silent! colorscheme modest
endif

" set my status line
silent! let &statusline = stalin#build("mode,branch,buffer,,flags,ruler")

" set some nice icons for vim-dirvish to use
if exists(':Dirvish') && !has('nvim')
    " Neovim-qt cannot display Unicode SMP characters for some reason
    call dirvish#add_icon_fn({p -> get(g:, 'GuiLoaded') ?
        \ nr2char(p[-1:] ==# '/' ? 0x1F4C2 : 0x1F4C4, 1) : ''})
endif
