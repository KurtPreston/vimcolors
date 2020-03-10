" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

if better#gui_running()
    " font setup
    let &guifont = printf('Inconsolata LGC%s14', has('win32') ? ':h' : ' ')
    if has('directx')
        set renderoptions=type:directx
    endif
    if has('win32')
        " directory/file Unicode glyphs
        let g:drvo_glyph = [0x1F4C2, 0x1F4C4]
    endif
    " make sure the colors weren't set by a desktop shortcut
    if !exists('g:colors_name')
        set background=dark
        silent! colorscheme flattened_dark
    endif
    " disable GUI Popupmenu in Neovim
    if exists('*rpcnotify')
        call rpcnotify(0, 'Gui', 'Option', 'Popupmenu', 0)
    endif
elseif &t_Co >= 256
    " assume we have xterm!
    set termguicolors
    if exists('+ttyfast')
        set ttyfast
    endif
    if exists('+ttymouse')
        set ttymouse=xterm2
    endif
    silent! colorscheme flattened_dark
else
    " minimal colorscheme
    silent! colorscheme modest
endif

" initialize my status line
silent! let &statusline = stalin#build('mode,buffer,,flags,ruler')

" this command is required by 'spellfile' plugin
if exists(':Nread') != 2
    command -count=1 -nargs=* Nread Nomove call netrw#NetRead(<count>, <f-args>)
endif
