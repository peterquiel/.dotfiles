let mapleader = ","

nnoremap <leader>q  :q!<cr>

" formatting shortcuts
" ff = fix format
nnoremap <leader>ff  mzgg=G`z
" af = autoformat 
nnoremap <leader>af :Autoformat <cr>

"step through quick fixes.
nnoremap <leader>t  :cn<cr>
nnoremap <leader>s  :cp<cr>

" fs = from source. Find and move cursor to current nerd tree.
nnoremap <leader>fs :NERDTreeFind<cr>

nnoremap <leader>uu i<cr><Esc>:.-1read !uuid<cr>kJxJx
" write file as root
nnoremap <leader>wr :write !sudo tee > /dev/null % <cr>
" write file and touch the file in order to make sure the last modified has been updated, then redraw the panel.
nnoremap <leader>wf :write <cr> :silent !touch % <cr> :redraw! <cr>

" search and replace shortcuts.

"replace selected word in the current buffer by ..
nnoremap <leader>nos :nohlsearch<CR>
" replace the currently selected text by ...
vnoremap <leader>rs y :%s/<c-r>"/
" search the selected word in path.
vnoremap <leader>ss y :grep! "<c-r>""
" search word under cursor with grep.
nnoremap <leader>sw :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" replace the curent word 
nnoremap <leader>rm * :%s//

" ctrlp access 
nnoremap <leader>pt :CtrlPTag<cr>
nnoremap <leader>pm :CtrlPMixed<cr>
nnoremap <leader>pb :CtrlPBufTagAll<cr>
nnoremap <leader>pl :CtrlPLine<cr>

" edit ultra edit snipets
nnoremap <leader>ue :UltiSnipsEdit<cr>

" yank filename to clipboard
nnoremap <Leader>yf :let @*=expand("%:t")<cr>:echo "Copied file name to clipboard"<cr>

" window and tab navigation
" maximize window: increase the width of the current window
nnoremap <leader>mw 100<C-w>>
" equal windows : makes all windows sized equally
nnoremap <leader>ew <C-w>=
" new tab
nnoremap <leader>tn :tabnew <cr>
" move the current tab to the right
nnoremap <leader>tr :+tabmove <cr>
" move the current tab to the left
nnoremap <leader>tl :-tabmove <cr>

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
