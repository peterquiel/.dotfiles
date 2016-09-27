let mapleader = ","

nnoremap <leader>q  :q!<cr>

" fix indent of complete buffer and jump back to last position
nnoremap <leader>ff  mzgg=G`z
nnoremap <leader>af :Autoformat <cr>

"step through quick fixes.
nnoremap <leader>t  :cn<cr>
nnoremap <leader>s  :cp<cr>

nnoremap <leader>fs :NERDTreeFind<cr>
"nnoremap <LEADER>, :TagbarToggle<CR>

nnoremap <leader>uu i<cr><Esc>:.-1read !uuid<cr>kJxJx
" write file as root
nnoremap <leader>wr :write !sudo tee > /dev/null % <cr>
nnoremap <leader>wf :write <cr> :silent !touch % <cr> :redraw! <cr>

"replace selected word in the current buffer by ..
nnoremap <leader>nos :nohlsearch<CR>
vnoremap <leader>rf y :%s/<c-r>"/
vnoremap <leader>ss y :Ag <c-r>" <CR>
" search word under cursor with grep.
nnoremap <leader>sw :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

nnoremap <leader>pt :CtrlPTag<cr>
nnoremap <leader>pm :CtrlPMixed<cr>
nnoremap <leader>pb :CtrlPBufTagAll<cr>
nnoremap <leader>pl :CtrlPLine<cr>

nnoremap <leader>ue :UltiSnipsEdit<cr>

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
