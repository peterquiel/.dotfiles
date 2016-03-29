" External plugins
" inspired by https://github.com/jbe/.vim/blob/master/plugins.vim
" vimplug see https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'kien/ctrlp.vim' 
Plug 'SirVer/ultisnips' 
Plug 'Yggdroot/indentLine' 
Plug 'vim-scripts/vim-auto-save' 
Plug 'jelera/vim-javascript-syntax' 
Plug 'jez/vim-superman' 
Plug 'christoomey/vim-tmux-navigator' 
Plug 'Lokaltog/vim-powerline' 
Plug 'altercation/vim-colors-solarized' 
Plug 'scrooloose/syntastic' 
Plug 'tpope/vim-surround' 
Plug 'tpope/vim-fugitive' 

call plug#end()

" -------------------------------------
" -- configure nerd tree stuff
" ------------------------------------
" toggle nerd tree with ctrl-n
if exists(":NERDTreeToggle")
	map <C-n> :NERDTreeToggle<CR>
	let g:NERDTreeDirArrowExpandable = '▸'
	let g:NERDTreeDirArrowCollapsible = '▾'
endif

" -------------------------------------
" -- configuration of indet plugin.
" ------------------------------------
if exists(":IndentLinesToggle")
  "vertical line indentation
  let g:indentLine_color_term = 239
  let g:indentLine_color_gui = '#09AA08'
  let g:indentLine_char = '│'
endif


" -------------------------------------
" -- configuration of the autosave plugin
" ------------------------------------
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
" let g:auto_save_postsave_hook = 'TagsGenerate'  " this will run :TagsGenerate after each save

let g:Powerline_symbols = 'fancy'

" -------------------------------------
" -- configuration of ctrlp plugin
"  see https://github.com/kien/ctrlp.vim/blob/master/doc/ctrlp.txt#L119 vor more info
" ------------------------------------
if exists(":CtrlP")
	let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlPMixed'
	let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
  let g:ctrlp_cache_dir = $HOME.'/.vim/ctrlp/cache'
	let g:ctrlp_max_files = 0
	" t new tab, h horizontal split, v vertical split and r current window.
	let g:ctrlp_open_new_file = 'r'
	let g:ctrlp_open_multiple_files = 'v'
	map <F6>  :CtrlPClearCache<CR> 
	"Take from http://stackoverflow.com/questions/2372307/opening-files-in-vim-using-fuzzy-search
	if executable('ag')
		" Use Ag over Grep
		let grepprg='ag\ --nogroup\ --nocolor'

		" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
		let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
	endif
	  let g:ctrlp_prompt_mappings = {
		    \ 'PrtBS()':              ['<bs>', '<c-]>'],
		    \ 'PrtDelete()':          ['<del>'],
		    \ 'PrtDeleteWord()':      ['<c-w>'],
		    \ 'PrtClear()':           ['<c-u>'],
		    \ 'PrtSelectMove("j")':   ['<c-t>', '<down>'],
		    \ 'PrtSelectMove("k")':   ['<c-s>', '<up>'],
		    \ 'PrtSelectMove("t")':   ['<Home>', '<kHome>'],
		    \ 'PrtSelectMove("b")':   ['<End>', '<kEnd>'],
		    \ 'PrtSelectMove("u")':   ['<PageUp>', '<kPageUp>'],
		    \ 'PrtSelectMove("d")':   ['<PageDown>', '<kPageDown>'],
		    \ 'PrtHistory(-1)':       ['<c-n>'],
		    \ 'PrtHistory(1)':        ['<c-p>'],
		    \ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
		    \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
		    \ 'AcceptSelection("t")': ['<c-t>'],
		    \ 'AcceptSelection("v")': ['<c-v>', '<RightMouse>'],
		    \ 'ToggleFocus()':        ['<s-tab>'],
		    \ 'ToggleRegex()':        ['<c-l>'],
		    \ 'ToggleByFname()':      ['<c-h>'],
		    \ 'ToggleType(1)':        ['<c-f>', '<c-up>'],
		    \ 'ToggleType(-1)':       ['<c-b>', '<c-down>'],
		    \ 'PrtExpandDir()':       ['<tab>'],
		    \ 'PrtInsert("c")':       ['<MiddleMouse>', '<insert>'],
		    \ 'PrtInsert()':          ['<c-\>'],
		    \ 'PrtCurStart()':        ['<c-a>'],
		    \ 'PrtCurEnd()':          ['<c-e>'],
		    \ 'PrtCurLeft()':         ['<c-r>', '<left>', '<c-^>'],
		    \ 'PrtCurRight()':        ['<c-d>', '<right>'],
		    \ 'PrtClearCache()':      ['<F5>'],
		    \ 'PrtDeleteEnt()':       ['<F7>'],
		    \ 'CreateNewFile()':      ['<c-y>'],
		    \ 'MarkToOpen()':         ['<c-z>'],
		    \ 'OpenMulti()':          ['<c-o>'],
		    \ 'PrtExit()':            ['<esc>', '<c-c>', '<c-g>'],
		    \ }
endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
