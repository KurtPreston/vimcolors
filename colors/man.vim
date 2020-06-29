" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

if &filetype ==# 'man'
    let b:undo_ftplugin .= ' | setl cc< list<'
    setlocal colorcolumn= nolist
endif
