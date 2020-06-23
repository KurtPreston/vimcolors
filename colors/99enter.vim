" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

if better#gui_running()
    " +++++ GUI +++++
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
    " +++++ TrueColor terminal +++++
    set termguicolors ttyfast
    if exists('+ttymouse')
        set ttymouse=xterm2
    endif
    silent! colorscheme flattened_dark
else
    " +++++ plain terminal +++++
    silent! colorscheme modest
endif

" setup status line
silent! let &statusline = stalin#build('mode,buffer,,flags,ruler')

" if we have not loaded any session yet then show MRU files list
if empty(v:this_session)
    MRU
endif
