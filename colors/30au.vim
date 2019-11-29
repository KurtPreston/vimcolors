" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

augroup vimrc | au!
    " C/C++ specific stuff
    autocmd Syntax c,cpp setlocal equalprg=indent foldmethod=syntax
    " 'q' to close a non-modifiable window/buffer (e.g. 'help')
    autocmd BufWinEnter *
        \ if !&modifiable || &buftype ==# 'nofile' |
        \     execute 'nnoremap <buffer>q <C-W>q' |
        \ endif
    " save GUI session on exit (use 'gvim -S' to load session)
    autocmd VimLeavePre *
        \ if get(g:, 'GuiLoaded') |
        \     execute 'mksession!' Or(v:this_session, '~/Session.vim') |
        \ endif
augroup end
