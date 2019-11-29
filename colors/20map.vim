" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" ';' to get to the command line quickly
noremap ; :
ounmap ;
" ',' to repeat char search forward
noremap , ;
ounmap ,
" '\,' to repeat char search backward
noremap <Leader>, ,
ounmap <Leader>,
" <Space> to toggle fold
nnoremap <Space> za
" <F4> to find file in path and open it
nnoremap <F4> :find<Space>
" <F8>/<S-F8> to switch colorscheme
nnoremap <silent><F8> :<C-U>call misc#switchcolor(v:count1)<CR>
nnoremap <silent><S-F8> :<C-U>call misc#switchcolor(-v:count1)<CR>
" <F12> to open terminal window
nnoremap <silent><F12> :terminal<CR>
" <Ctrl-N> to open new tab
nnoremap <silent><C-N> :silent tabedit .<CR>
" <Ctrl-S> to save file
nnoremap <silent><C-S> :update<CR>
" move cursor inside quotes while typing
noremap! "" ""<Left>
noremap! '' ''<Left>
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
" '\x' to execute command and put output into a buffer
" '\X' to eval expression and put result into a buffer
nnoremap <silent><Leader>x :put =trim(execute(input(':', '', 'command')))<CR>
nnoremap <silent><Leader>X :put =eval(input('=', '', 'expression'))<CR>
" '\h' to show the current highlight group
nnoremap <silent><Leader>h :Highlight!<CR>
" gc to toggle comments
vnoremap <silent>gc :Comment<CR>
nnoremap <expr>gc misc#xoper('Comment')
nnoremap <silent>gcc :Comment<CR>
" gs to sort lines
vnoremap <silent>gs :sort<CR>
nnoremap <expr>gs misc#xoper('sort')
nnoremap <silent>gss :sort<CR>
" gt to trim trailing whitespace
vnoremap <silent>gt :Trim<CR>
nnoremap <expr>gt misc#xoper('Trim')
nnoremap <silent>gtt :Trim<CR>
" gx to execute script
vnoremap <silent>gx :Execute<CR>
nnoremap <expr>gx misc#xoper('Execute')
nnoremap <silent>gxx :Execute!<CR>
