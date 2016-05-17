" External plugins
" 
"
" inspired by https://github.com/jbe/.vim/blob/master/plugins.vim
" vimplug see https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim' 

Plug 'rking/ag.vim'

" doc can be found here: :help UltiSnips
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'
Plug 'sudar/vim-arduino-snippets'
Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe' 
Plug 'shawncplus/phpcomplete.vim'
Plug 'vim-scripts/dbext.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'vim-scripts/vim-auto-save' 
Plug 'jez/vim-superman' 

" split window navigatigation between tmux and vim
Plug 'christoomey/vim-tmux-navigator' 
Plug 'Lokaltog/vim-powerline' 
Plug 'altercation/vim-colors-solarized' 
Plug 'scrooloose/syntastic' 
Plug 'scrooloose/nerdcommenter'

Plug 'tpope/vim-surround' 
Plug 'tpope/vim-fugitive' 
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'

"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-easytags'
"Plug 'maksimr/vim-translator'
Plug 'vimwiki/vimwiki'
Plug 'dkprice/vim-easygrep'
Plug 'aperezdc/vim-template' 
Plug 'mattn/emmet-vim'

"Java development
Plug 'artur-shaik/vim-javacomplete2'

" javascript plugins, these plugins are recommended by the vim-angular plugin.
Plug 'burnettk/vim-angular'
Plug 'jelera/vim-javascript-syntax' 
" Syntax Complete Plugin 
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'matthewsimo/angular-vim-snippets'
Plug 'claco/jasmine.vim'

" Arduino Development Plugins
Plug '4Evergreen4/vim-hardy'
Plug 'sudar/vim-arduino-syntax'
call plug#end()


"colorscheme distinguished
colorscheme solarized

" -------------------------------------
" -- configure nerd tree stuff
" ------------------------------------
" toggle nerd tree with ctrl-n
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeMapOpenInTab='\t'
let g:NERDTreeMapOpenVSplit='v'
let g:NERDTreeMapActiveNode='d'
let g:NERDTreeMapOpenRecursively='D'
let g:NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1
" -------------------------------------
" -- configuration of indet plugin.
" ------------------------------------
"vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'


" -------------------------------------
" -- configuration of the autosave plugin
" ------------------------------------
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
" let g:auto_save_postsave_hook = 'TagsGenerate'  " this will run :TagsGenerate after each save

let g:Powerline_symbols = 'fancy'

" -------------------------------------
" -- configuration of the syntastic
" ------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_shell="/bin/bash"
"only -Xlint will enable all warnings, but I don't want to see the missing serialUID warnings
" removed: serial
let g:syntastic_java_javac_options = '-Xlint:{auxiliaryclass,cast,classfile,deprecation,dep-ann,divzero,empty,fallthrough,finally,options,overloads,overrides,path,processing,rawtypes,static,try,unchecked,varargs}'
"let g:syntastic_java_checkers=['javac']
"let g:syntastic_java_javac_config_file_enabled = 1
let g:syntastic_php_checkers = ['php']
"let g:syntastic_disabled_filetypes=['html']
let g:syntastic_javascript_checkers = ['jshint']
" configure syntastic to recognize my own directives
let g:syntastic_html_tidy_blocklevel_tags = ['']
let g:syntastic_html_tidy_ignore_errors = ['']

" -------------------------------------
" -- configuration of the ulti snippet
" ------------------------------------
noremap <C-tab> <nop>
let g:UltiSnipsUsePythonVersion = 3
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" better key bindings for UltiSnipsExpandTrigger
" http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsListSnippets="<C-j>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" -------------------------------------
" -- configuration of you complete me plugin
" ------------------------------------
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabDefaultCompletionType = 'context'

" -------------------------------------
" -- configuration of the ctrlp plugin
" ------------------------------------
noremap <C-j> :CtrlPTag<cr>
let g:ctrlp_map = '<c-l>'
let g:ctrlp_cmd = 'CtrlPMRUFiles'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
let g:ctrlp_cache_dir = $HOME.'/.vim/ctrlp/cache'
let g:ctrlp_max_files = 0
" t new tab, h horizontal split, v vertical split and r current window.
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_open_multiple_files = 'v'
map <F5>  :ClearAllCtrlPCaches<CR> 
"Take from http://stackoverflow.com/questions/2372307/opening-files-in-vim-using-fuzzy-search
if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " -S: SmartCase -f follow symlings -l print files matches and not matching line, 
  let g:ctrlp_user_command = 'ag -S %s -l --hidden --ignore .git -f --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

"remove mepping in order to toggle fname in ctrlp
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
      \ 'ToggleRegex()':        ['<c-k>'],
      \ 'ToggleByFname()':      ['<c-h>'],
      \ 'ToggleType(1)':        ['<c-l>', '<c-up>'],
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

" configuration of the vim android/gradle plugin
let g:gradle_path =$GRADLE_HOME 
let g:android_sdk_path = $ANDROID_SDK_HOME
let g:android_adb_tool = "$ANDROID_SDK_HOME/platform-tools/adb"
let g:android_quickfix_show = 1

" configuration of the javacomplete2 plugin
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
let g:JavaComplete_ClosingBrace = 1
let g:JavaComplete_BaseDir = '~/.vim/.javacomplete_cache'
let g:JavaComplete_ImportOrder = ['java.', 'javax.', 'com.', 'org.', 'net.']

" configuring the omnifunc completion
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
autocmd Filetype php  setlocal omnifunc=phpcomplete#CompletePHP
autocmd Filetype css  setlocal omnifunc=csscomplete#CompleteCSS noci
autocmd FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType html,xhtml setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType c setlocal omnifunc=ccomplete#CompleteCpp
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" configuring tagbar plugin
" type :help tagbar for documentation
let g:tagbar_autoclose=1
let g:tagbar_autofocus=1
let g:tagbar_map_togglesort='j'
let g:tagbar_map_zoomwin='A' " same as nerdtree zoom

" configuration of vim-easytags
let g:easytags_async=0
" set this to always if vim highlighting slows down, auto is default
let g:easytags_syntax_keyword = 'always'
let g:easytags_file = '~/.vim/.tags'
" make easy tags look for tags file in project dir
let g:easytags_dynamic_files = 1
let g:easytags_include_members = 1
let g:easytags_python_enabled=1

" configuration of surround plugin
" mapping s to j because of my colemak left hand navigation with rstd. 
let g:surround_no_mappings= 1
nmap hj  <Plug>Dsurround
nmap cj  <Plug>Csurround
nmap cJ  <Plug>CSurround
nmap yj  <Plug>Ysurround
nmap yJ  <Plug>YSurround
nmap yjj <Plug>Yssurround
nmap yJj <Plug>YSsurround
nmap yJJ <Plug>YSsurround
xmap J   <Plug>VSurround
xmap gJ  <Plug>VgSurround
imap <C-J> <Plug>Isurround
imap <C-G>j <Plug>Isurround
imap <C-G>J <Plug>ISurround

" configure vim viki plugin
let g:vimwiki_list = [{'path': '~/knowledgebase/', 'path_html': '~/knowledgebase/html','auto_export': '0',  'ext': '.wiki'}]

" configure the ag search plugin
let g:ag_apply_qmappings=0
let g:ag_qhandler="copen 20"
let g:ag_highlight=1
let g:ag_apply_lmappings=0

" configure autoformat plugin
let g:autoformat_verbosemode=1
" js beautifier, read https://www.npmjs.com/package/js-beautify

" configure repeat plugin
" remove ReapeatUndo mapping from the repeat plugin because it destroys my C-rstd Windownaigation
nnoremap <C-k> <Plug>(RepeatRedo)

" configuring of vim-template plugin
let g:templates_directory='~/.dotfiles/vim/vim-templates'
let g:templates_no_autocmd=1
let g:email = "peter.quiel@gmail.com"
let g:user = "Peter Quiel"                                         
"let g:license = "Apache 2.0"
let g:templates_global_name_prefix='template_'
" The `g:templates_user_variables` variable allows to expand user-defined
" variables in templates. It should be set to an array, where each item is
" a two-element array: the first element is the name of the user-defined
" variable, and the second element the name of a function. For example,
" the following can be added to the user |vimrc|:
" >
"   let g:templates_user_variables = [
"       \   ['FULLPATH', 'GetFullPath'],
"           \ ]
"
"             function! GetFullPath()
"                 return expand('%:p')
"                   endfunction
"                   >
"                   This way, each occurrence of `%FULLPATH%` in a template will be replaced
"                   with the absolute path of the current file.
let g:templates_user_variables=[]

" configuration of easy grep
let g:EasyGrepCommand=1

" configure vim-javascript plugin
let g:javascript_enable_domhtmlcss = 1
let g:javascript_ignore_javaScriptdoc = 1

" configure javascript syntax plugin
" Configure used javascript libraries
" Possible values:
" jQuery: jquery
" underscore.js: underscore
" Lo-Dash: underscore
" Backbone.js: backbone
" prelude.ls: prelude
" AngularJS: angularjs
" AngularUI: angularui
" AngularUI Router: angularuirouter
" React: react
" Flux: flux
" RequireJS: requirejs
" Sugar.js: sugar
" Jasmine: jasmine
" Chai: chai
" Handlebars: handlebars
" Ramda: ramda
let g:used_javascript_libs = 'angularjs,angularui,angularuirouter,jasmine,chai'

" configuration of the vim-angular plugin
let g:angular_find_ignore = ['build/', 'dist/']
let g:angular_filename_convention = 'camelcased' " alternative is 'titlecased'
let g:angular_jasmine_version =2 

" configure arduino sdk location
let g:hardy_arduino_path='/home/pedda/local/arduino/arduino'
let g:hardy_arduino_options='--board arduino:avr:micro --port /dev/ttyACM3'
