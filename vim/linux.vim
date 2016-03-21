" -- configure how to work with multiple windows
"  this uses the https://github.com/christoomey/vim-tmux-navigator plugin
" ------------------------------------
let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 1

nnoremap <silent> <C-r> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-t> :TmuxNavigateDown<cr>
nnoremap <silent> <C-s> :TmuxNavigateUp<cr>
nnoremap <silent> <C-d> :TmuxNavigateRight<cr>


