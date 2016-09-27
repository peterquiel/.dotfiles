let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 1

nnoremap <silent> <C-r> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-t> :TmuxNavigateDown<cr>
nnoremap <silent> <C-s> :TmuxNavigateUp<cr>
nnoremap <silent> <C-d> :TmuxNavigateRight<cr>
if executable('ag')
    set grepprg=ag\ --vimgrep\ --ignore\ target\ --ignore\ node_modules
    set grepformat=%f:%l:%c:%m
    command! -nargs=+ -bang Ag silent! grep <args> | redraw! | botright copen
endif

" create a new Ag command, taken from https://robots.thoughtbot.com/faster-grepping-in-vim
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

"let $TMPDIR = '/tmp/vim-' . $USER
"silent! call mkdir($TMPDIR, '', 0700)
""In case /tmp get's clean out, make a new tmp directory for vim:
"command! Mktmpdir call mkdir(fnamemodify(tempname(),":p:h"),"",0700)

