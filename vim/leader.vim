
let mapleader = ","

nnoremap <leader>q  :q!<cr>

" fix indent of complete buffer and jump back to last position
nnoremap <leader>ff  mzgg=G`z
nnoremap <leader>af :Autoformat <cr>

"step through quick fixes. 
nnoremap <leader>t  :cn<cr>
nnoremap <leader>s  :cp<cr>


nnoremap <leader>fs :NERDTreeFind<cr>
nnoremap <LEADER>, :TagbarToggle<CR>


" write file as root
nnoremap <leader>wr :write !sudo tee > /dev/null % <cr>

"replace selected word in the current buffer by ..
nnoremap <leader>nos :nohlsearch<CR>
vnoremap <leader>rf y :%s/<c-r>"/
vnoremap <leader>ss y :Ag <c-r>" <CR>

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
