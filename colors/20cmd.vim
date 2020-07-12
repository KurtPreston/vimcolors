" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" :DiffOrig
" stolen from $VIMRUNTIME/defaults.vim
command! -bar DiffOrig
    \   vnew +set\ buftype=nofile
    \ | read ++edit #
    \ | 1delete_
    \ | diffthis
    \ | wincmd p
    \ | diffthis

 " :[mods]Nomove {cmd}
 " save/restore cursor "quasi-modifier"
command! -nargs=1 -complete=command Nomove
    \   try
    \ |     let s:svpos = winsaveview()
    \ |     execute <q-mods> <q-args>
    \ | finally
    \ |     call winrestview(s:svpos)
    \ |     unlet s:svpos
    \ | endtry

" :[count]Nread [netfile]...
" required by 'spellfile' plugin
command! -count=1 -nargs=* Nread Nomove call netrw#NetRead(<count>, <f-args>)

" :[mods]Sorted[!] {cmd}
" sorted "quasi-modifier"
command! -bang -nargs=1 -complete=command Sorted
    \ echo join(sort(split(execute(<q-mods>..' '..<q-args>), "\n"),
    \     {s1, s2 -> <bang>(s1 ># s2) - <bang>(s1 <# s2)}), "\n")

" :Bwipeout[!]
" wipe all deleted/unloaded buffers
command! -bar -bang Bwipeout call misc#bwipeout(<bang>0)

" :[range]Change [reg]
" non-interactive :change
command! -range -bar -bang -nargs=? Change
    \ call misc#change(<line1>, <line2>, <q-args>, &autoindent != <bang>0)

" :[range]Copy {address1}...
" :copy to multiple addresses
command! -range -bar -nargs=+ Copy call misc#copy(<line1>, <line2>, <f-args>)

" :Highlight[!]
" show :highlight under cursor
command! -bar -bang Highlight
    \ execute <bang>0..'verbose highlight'
    \     better#or(synIDattr(synID(line('.'), col('.'), 0), 'name'), 'Normal')

" :[range]Trim[!]
" trim trailing/leading space
command! -range=% -bar -bang Trim
    \   keepj keepp Nomove <line1>,<line2>s/\s\+$//e
    \ | if <bang>0
    \ |     <line1>,<line2>left
    \ | endif

" :[range]Comment[!]
" toggle comments
command! -range -bar -bang Comment
    \ call comment#toggle(<line1>, <line2>, &preserveindent != <bang>0)

" :[range]Execute [winnr]
" execute VimScript or any "shebang"-script
command! -range=% -bar -nargs=? Execute
    \ call shebang#execute('%', <line1>, <line2>, <args>)

" :[count]MRU [sesdir]
" show MRU and Session files
command! -count=10 -bar -nargs=? -complete=dir MRU
    \ call mru#show(better#or(<q-args>, g:dotvim..'/sessions'), <count>)
