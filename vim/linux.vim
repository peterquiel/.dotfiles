let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 1

nnoremap <silent> <C-r> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-t> :TmuxNavigateDown<cr>
nnoremap <silent> <C-s> :TmuxNavigateUp<cr>
nnoremap <silent> <C-d> :TmuxNavigateRight<cr>

"let $TMPDIR = '/tmp/vim-' . $USER
"silent! call mkdir($TMPDIR, '', 0700)
""In case /tmp get's clean out, make a new tmp directory for vim:               
"command! Mktmpdir call mkdir(fnamemodify(tempname(),":p:h"),"",0700)  

