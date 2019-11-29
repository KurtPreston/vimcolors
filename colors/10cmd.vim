" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" Save/restore cursor "quasi-modifier"
" Note: can't have a -bar
command! -nargs=1 Nomove
    \ try |
        \ let s:svpos = [win_getid(), winsaveview()] |
        \ execute <q-mods> <q-args> |
    \ finally |
        \ call misc#win_execute(s:svpos[0],
            \ printf('call winrestview(%s)', s:svpos[1]), 'silent!') |
        \ unlet s:svpos |
    \ endtry

" Sorted[!] "quasi-modifier"
command! -bang -nargs=1 -complete=command Sorted
    \ echo join(sort(split(execute(<q-mods> . ' ' . <q-args>), "\n"),
        \ {s1, s2 -> <bang>(s1 ># s2) - <bang>(s1 <# s2)}), "\n")

" needed to make auto-download working (e.g. spell files)
if !exists(':Nread')
    command! -count=1 -nargs=* Nread Nomove call netrw#NetRead(<count>, <f-args>)
endif

command! -range -bar -bang Comment call comment#toggle(<line1>, <line2>, <bang>0)
command! -range -bar -nargs=+ Copy call misc#copy(<line1>, <line2>, <f-args>)
command! -range=% -bar -bang Execute call shebang#execute(<line1>, <line2>, <bang>0)
command! -bar -bang Highlight execute <bang>0 . "verbose highlight"
    \ Or(synIDattr(synID(line('.'), col('.'), 0), 'name'), 'Normal')
command! -range=% -bar Trim keepj keepp Nomove <line1>,<line2>s/\s\+$//e
