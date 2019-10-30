" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" ';' to get to the command line quickly
noremap ; :
" ',' to repeat char search forward
noremap , ;
" '\,' to repeat char search backward
noremap <Leader>, ,
" <Space> to toggle fold
noremap <Space> za
" <F4> to find file in path and open it
nnoremap <F4> :find<Space>
" <F12> to open terminal window
nnoremap <silent><F12> :terminal<CR>
" <Ctrl-N> to open new tab
nnoremap <silent><C-N> :silent tabedit .<CR>
" <Ctrl-S> to save file
nnoremap <silent><C-S> :update<CR>
" move cursor inside quotes while typing
inoremap "" ""<Left>
inoremap '' ''<Left>
" restore visual selection after an indent
vnoremap < <gv
vnoremap > >gv
" copy-paste like Windows
vnoremap <S-Del>    "+d
vnoremap <C-Insert> "+y
vnoremap <S-Insert> "+p
nnoremap <S-Insert> "+gP
noremap! <S-Insert> <C-R>+
" '\=' to cd to the current file's directory
nnoremap <Leader>= :lcd %:p:h \| pwd<CR>
" '\p' to show what function we are in (like 'diff -p')
nnoremap <Leader>p :echo getline(search('^[[:alpha:]$_]', 'bcnW'))<CR>
" '\h' to show the current highlight group
nnoremap <Leader>h :call <SID>say_hi()<CR>
function! s:say_hi()
    let l:id1 = synID(line('.'), col('.'), 1)
    let l:id2 = synIDtrans(l:id1)
    let l:group1 = l:id1 ? synIDattr(l:id1, 'name') : 'None'
    let l:group2 = l:id2 != l:id1 ? 'links to ' . synIDattr(l:id2, 'name') : ''
    execute 'echohl' l:group1 | echo l:group1 l:group2 | echohl None
endfunction
