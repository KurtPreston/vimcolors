" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" Save/restore cursor "quasi-modifier"
command! -nargs=1 -complete=command Nomove
    \   try
    \ |     let s:svpos = winsaveview()
    \ |     execute <q-mods> <q-args>
    \ | finally
    \ |     call winrestview(s:svpos)
    \ |     unlet s:svpos
    \ | endtry

" Sorted[!] "quasi-modifier"
command! -bang -nargs=1 -complete=command Sorted
    \   echo join(sort(split(execute(<q-mods>..' '..<q-args>), "\n"),
    \       {s1, s2 -> <bang>(s1 ># s2) - <bang>(s1 <# s2)}), "\n")

command! -bar -bang Bwipeout call misc#bwipeout(<bang>0)
command! -range -bar -bang -nargs=? Change
    \   call misc#change(<line1>, <line2>, <q-args>, &autoindent != <bang>0)
command! -range -bar -bang Comment
    \   call comment#toggle(<line1>, <line2>, &preserveindent != <bang>0)
command! -range -bar -nargs=+ Copy call misc#copy(<line1>, <line2>, <f-args>)
command! -range=% -bar -nargs=? Execute
    \   call shebang#execute('%', <line1>, <line2>, <args>)
command! -bar -bang Highlight
    \   execute <bang>0..'verbose highlight'
    \       misc#or(synIDattr(synID(line('.'), col('.'), 0), 'name'), 'Normal')
command! -range=% -bar -bang Trim
    \   keepj keepp Nomove <line1>,<line2>s/\s\+$//e
    \ | if <bang>0
    \ |     <line1>,<line2>left
    \ | endif
