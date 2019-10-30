" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

augroup vimrc | au!
    " C/C++ specific stuff
    autocmd Syntax c,cpp setlocal equalprg=indent foldmethod=syntax
    " 'q' to close a non-modifiable window/buffer (e.g. 'help')
    autocmd BufWinEnter * if !&modifiable | nnoremap <buffer>q ZQ | endif
    " <F5> to execute script
    autocmd FileType vim nnoremap <buffer><silent><F5> :update \| source %<CR>
    autocmd FileType sh nnoremap <buffer><silent><F5> :update \|
        \ execute 'terminal' &shell expand('%:p:S')<CR>
    " save GUI session on exit (use 'gvim -S' to load session)
    autocmd VimLeavePre *
        \ if get(g:, 'GuiLoaded') |
        \     execute 'mks!' empty(v:this_session) ?
        \         '~/Session.vim' : v:this_session |
        \ endif
augroup end
