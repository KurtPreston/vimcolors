" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

let b:undo_ftplugin .= ' | setl so< | nmapc <buffer>'
setlocal scrolloff=0

nnoremap <buffer><expr>j 'j'..v:count1..'<C-E>'
nnoremap <buffer><expr>k '<C-Y>'..v:count1..'k'
nnoremap <buffer><expr><Down> 'j'..v:count1..'<C-E>'
nnoremap <buffer><expr><Up>   '<C-Y>'..v:count1..'k'
