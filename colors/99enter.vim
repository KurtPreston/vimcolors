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
    if exists('*rpcnotify')
        " disable GUI Popupmenu in Neovim
        call rpcnotify(0, 'Gui', 'Option', 'Popupmenu', 0)
    endif
elseif &t_Co >= 256
    " +++++ TrueColor terminal +++++
    set termguicolors
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

" make sure the colors weren't already set up (by a desktop shortcut or such)
if !exists('g:colors_name')
    set background=light
    silent! colorscheme modest
endif

" setup status line
silent! let &statusline = stalin#build('mode,buffer,,flags,ruler')

" if we have not opened anything yet then show MRU files list
if !argc() && empty(v:this_session)
    MRU
endif
