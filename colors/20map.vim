" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" ';' to get to the command line quickly
noremap ; :| ounmap ;
" ',' to repeat char search forward
noremap , ;| ounmap ,
" '\,' to repeat char search backward
noremap <leader>, ,| ounmap <leader>,
" improved auto completion: <Tab>, <CR>, <Esc>, <Up>, <Down>, <PageUp>, <PageDown>
" <C-X><C-F> is now able to expand wildcards
inoremap <C-X><C-F> <C-R>=misc#complete('[[:fname:]*?]\+', 'file')<CR>
inoremap <expr><Tab> search('\v\k{3}%#', 'bn', line('.')) ? "\<C-N>" : "\<Tab>"
inoremap <expr><CR> pumvisible() ? "\<C-Y>" : "\<CR>"
inoremap <expr><Esc> pumvisible() ? "\<C-E>" : "\<Esc>"
inoremap <expr><Up> pumvisible() ? "\<C-P>" : "\<Up>"
inoremap <expr><Down> pumvisible() ? "\<C-N>" : "\<Down>"
inoremap <expr><PageUp> pumvisible() ? "\<PageUp>\<C-P>\<C-N>" : "\<PageUp>"
inoremap <expr><PageDown> pumvisible() ? "\<PageDown>\<C-N>\<C-P>" : "\<PageDown>"
" <Space> to toggle fold
nnoremap <Space> za
" [count]<F8>/[count]<S-F8> to switch colorscheme
nnoremap <silent><F8> :<C-U>call misc#switchcolor(v:count1)<CR>
nnoremap <silent><S-F8> :<C-U>call misc#switchcolor(-v:count1)<CR>
" <F12> to open terminal
nnoremap <silent><F12> :terminal<CR>
" <Ctrl-N> to add new tab
nnoremap <silent><C-N> :$tabnew<CR>
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
" [count]<BS> to open "File Explorer" (vim-drvo)
nnoremap <expr><silent><BS> ":\<C-U>edit %:p"..repeat(':h', v:count1).."\<CR>"
" '\=' to cd to the current file's directory
nnoremap <leader>= :lcd %:p:h <Bar> pwd<CR>
" '\p' to show what function we are in (like 'diff -p')
nnoremap <leader>p :echo getline(search('^[[:alpha:]$_]', 'bcnW'))<CR>
" '\x' to execute command and put output into a buffer
" '\X' to eval expression and put result into a buffer
nnoremap <silent><leader>x :put =trim(execute(input(':', '', 'command')))<CR>
nnoremap <silent><leader>X :put =eval(input('=', '', 'expression'))<CR>
" '\h' to show the current highlight group
nnoremap <silent><leader>h :Highlight!<CR>
" gc to toggle comments
noremap <silent><expr>gc oper#mapto('Comment!')| ounmap gc
nnoremap <silent>gcc :Comment!<CR>
" gs to sort lines
noremap <silent><expr>gs oper#mapto('sort', v:none, 'sort')| ounmap gs
nnoremap <silent>gss :sort<CR>
" gt to trim trailing whitespace
noremap <silent><expr>gt oper#mapto('Trim')| ounmap gt
nnoremap <silent>gtt :Trim<CR>
" gx to execute script
noremap <silent><expr>gx oper#mapto('Execute')| ounmap gx
nnoremap <silent>gxx :Execute<CR>
