" External plugins
"
" inspired by https://github.com/jbe/.vim/blob/master/plugins.vim
" vimplug see https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')
" displays vertical lines for indention.
Plug 'Yggdroot/indentLine'
" Displays folders and files in a explorer like tree.
Plug 'scrooloose/nerdtree' 
" Search and open files, Tags aso.
Plug 'ctrlpvim/ctrlp.vim' 
" Changes the working directory to the project root, when changing files.
Plug 'airblade/vim-rooter'
" doc can be found here: :help UltiSnips
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'

Plug 'Valloric/YouCompleteMe' 

" For different formatters, uses this by <leadea>af
Plug 'Chiel92/vim-autoformat'
" Filtype for Unix Man Pages.
Plug 'jez/vim-superman' 

" split window navigatigation between tmux and vim
Plug 'christoomey/vim-tmux-navigator' 
" The nice powerline plugin/
Plug 'itchyny/lightline.vim'
" theme for vim.
Plug 'altercation/vim-colors-solarized' 
" syntax checker plugin
Plug 'scrooloose/syntastic' 
" easy toggle comments for different languages.
Plug 'scrooloose/nerdcommenter'

" surround text with tags,braces aso.
Plug 'tpope/vim-surround' 
" the best vim git plugin ever..
Plug 'tpope/vim-fugitive' 
" shows small git changes icons in the sidebar. 
Plug 'airblade/vim-gitgutter'
" Async build plugin for vim.
Plug 'tpope/vim-dispatch'
" A repeat plugin, makes the '.' working with surround and other plugins.
Plug 'tpope/vim-repeat'
" A set of convenient mappings for vim 
Plug 'tpope/vim-unimpaired'

" the wike plugin.
Plug 'vimwiki/vimwiki'
" A simple file template plugin for vim.
Plug 'aperezdc/vim-template' 
" Formally known as zen coding.
Plug 'mattn/emmet-vim'

" Arduino lang support. Syntax, compilation and verification of arduino code.
Plug '4Evergreen4/vim-hardy'
" Syntax sugar and auto completion for arduino code.
Plug 'sudar/vim-arduino-syntax'
" diff visually marked pieces of text.
Plug 'AndrewRadev/linediff.vim'
" Support for adoc files
Plug 'asciidoc/vim-asciidoc'
" plugin for graphviz dot. Syntax, ultisnips, compiling, showing aso.
Plug 'wannesm/wmgraphviz.vim'
call plug#end()

"colorscheme distinguished
colorscheme solarized

" -------------------------------------
" -- configure nerd tree stuff
" ------------------------------------
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeMapOpenInTab='\t'
let g:NERDTreeMapOpenInTabSilent='G'
let g:NERDTreeMapOpenVSplit='v'
let g:NERDTreeMapActiveNode='d'
let g:NERDTreeMapOpenRecursively='D'
let g:NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1

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
"let g:syntastic_java_checkers = ['checkstyle', 'javac']
"let g:syntastic_java_javac_config_file_enabled = 1
"let g:syntastic_php_checkers = ['php']
"let g:syntastic_disabled_filetypes=['html']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_html_tidy_blocklevel_tags = ['']
let g:syntastic_html_tidy_ignore_errors = ['']
let g:loaded_syntastic_java_checkstyle_checker = 1
let g:syntastic_html_validator_parser='html5'

" -------------------------------------
" -- configuration of the ulti snippet
" ------------------------------------
noremap <C-tab> <nop>
"let g:UltiSnipsUsePythonVersion = 3
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" better key bindings for UltiSnipsExpandTrigger
" http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsListSnippets="<c-g>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.dotfiles/vim/UltiSnips"

" -------------------------------------
" -- configuration of you complete me plugin
" ------------------------------------
" configuring the omnifunc completion
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
"autocmd Filetype php  setlocal omnifunc=phpcomplete#CompletePHP
autocmd Filetype css  setlocal omnifunc=csscomplete#CompleteCSS noci
autocmd FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType html,xhtml setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType c setlocal omnifunc=ccomplete#CompleteCpp
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd BufNewFile,BufRead *.scss set ft=scss.css

" -------------------------------------
" -- configuration of the ctrlp plugin
" ------------------------------------
noremap <C-j> :CtrlPTag<cr>
set wildignore="node_modules,.git,bower_components,target"
let g:ctrlp_map = '<c-l>'
let g:ctrlp_show_hidden = 1
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
    let g:ctrlp_user_command = 'ag -S %s -l  --ignore target --ignore bower_components --ignore node_modules -f --nocolor -g ""'
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
" -------------------------------------
" -- configure javacomplete2 plugin
" ------------------------------------
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
let g:JavaComplete_ClosingBrace = 1
let g:JavaComplete_BaseDir = '~/.vim/.javacomplete_cache'
let g:JavaComplete_ImportOrder = ['java.', 'javax.', 'com.', 'org.', 'net.']
let g:JavaComplete_UseFQN = 1
let g:JavaComplete_MavenRepositoryDisable = 0
let g:JavaComplete_ClosingBrace = 1
"let g:JavaComplete_SourcesPath='/opt/Oracle_Java/jdk/src/'
"Add i.e. server libs a.s.o
"let g:JavaComplete_LibsPath
let g:JavaComplete_JavaviLogfileDirectory = '/tmp/'
let g:JavaComplete_JavaviDebug = 1


" -------------------------------------
" -- configure vim-easytags 
" ------------------------------------
let g:easytags_async=0
" set this to always if vim highlighting slows down, auto is default
let g:easytags_syntax_keyword = 'auto'
let g:easytags_file = '~/.vim/.tags'
" make easy tags look for tags file in project dir
let g:easytags_dynamic_files = 1
let g:easytags_include_members = 1
let g:easytags_python_enabled=1

" -------------------------------------
" -- configure surround plugin
" ------------------------------------
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

" -------------------------------------
" -- configure vim wiki plugin 
" ------------------------------------
let g:vimwiki_list = [{'path': '~/knowledgebase/', 'path_html': '~/knowledgebase/html','auto_export': '0',  'ext': '.wiki'}]

" -------------------------------------
" -- configure  ag search plugin
" ------------------------------------
" configure the ag search plugin
let g:ag_apply_qmappings=0
let g:ag_qhandler="copen 20"
let g:ag_highlight=1
let g:ag_apply_lmappings=0

" -------------------------------------
" -- configure  auto format plugin
" ------------------------------------
" configure autoformat plugin
let g:autoformat_verbosemode=1
" js beautifier, read https://www.npmjs.com/package/js-beautify
"let g:formatdef_htmlbeautify = '"html-beautify -E \"head,body,html,p,div,input,table,tr,th,a,span\" -f - -s ".shiftwidth()'

" -------------------------------------
" -- configure repeat plugin 
" ------------------------------------
" remove ReapeatUndo mapping from the repeat plugin because it destroys my C-rstd Windownaigation
nnoremap <C-k> <Plug>(RepeatRedo)

" -------------------------------------
" -- configure vim template plugin
" ------------------------------------
let g:templates_directory='~/.dotfiles/vim/vim-templates'
let g:templates_no_autocmd=1
let g:email = "peter.quiel@wallmedien.de"
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


" -------------------------------------
" -- configure easy grep 
" ------------------------------------
" configuration of easy grep
let g:EasyGrepCommand=1

" -------------------------------------
" -- configure  arduino syntax plugin
" ------------------------------------
let g:hardy_arduino_path='/home/pedda/local/arduino/arduino'
let g:hardy_arduino_options='--board arduino:avr:micro --port /dev/ttyACM3'


" -------------------------------------
" -- configure  indent plugin
" ------------------------------------
let g:indentLine_char = '┆'
let g:indentLine_color_term = 239

" -------------------------------------
" -- configure auto rooter 
" ------------------------------------
let g:rooter_silent_chdir = 1

" -------------------------------------
" -- configure Fugitive plugin 
" ------------------------------------
autocmd BufReadPost fugitive://* set bufhidden=delete

" -------------------------------------
" -- configure  light line / powerline
" ------------------------------------
let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ], [ 'fugitive','project',  'filename' ], ['ctrlpmark'] ],
            \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
            \ },
            \ 'component_function': {
            \   'project' : 'LightLineProject',
            \   'fugitive': 'LightLineFugitive',
            \   'filename': 'LightLineFilename',
            \   'fileformat': 'LightLineFileformat',
            \   'filetype': 'LightLineFiletype',
            \   'fileencoding': 'LightLineFileencoding',
            \   'mode': 'LightLineMode',
            \   'ctrlpmark': 'CtrlPMark',
            \ },
            \ 'component_expand': {
            \   'syntastic': 'SyntasticStatuslineFlag',
            \ },
            \ 'component_type': {
            \   'syntastic': 'error',
            \ },
            \ 'separator': { 'left': '⮀', 'right': '⮂' },
            \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
            \ }

function! LightLineModified()
    return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightLineReadonly()
    return &ft !~? 'help' && &readonly ? '⭤' : ''
endfunction

function! LightLineFilename()
    let fname = expand('%:p')
    if fname =~ getcwd() 
        let startindex = strlen(getcwd()) +1
        if strlen(fname) - startindex > 40
            let startindex = strlen(fname) - 40
        endif
        let fname = strpart(fname, startindex, strlen(fname) - startindex)
    endif
    return fname == 'ControlP' && has_key(g:lightline, 'ctrlp_item') ? g:lightline.ctrlp_item :
                \ fname == '__Tagbar__' ? g:lightline.fname :
                \ fname =~ '__Gundo\|NERD_tree' ? '' :
                \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
                \ &ft == 'unite' ? unite#get_status_string() :
                \ &ft == 'vimshell' ? vimshell#get_status_string() :
                \ ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
                \ ('' != fname ? fname : '[No Name]') .
                \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFugitive()
    try
        if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
            let mark = '⭠ '
            let branch = fugitive#head()
            return branch !=# '' ? mark.branch : ''
        endif
    catch
    endtry
    return ''
endfunction

function! LightLineProject()
    let path = split(getcwd(), '/')
    return get(path, len(path) -1)
endfunction

function! LightLineFileformat()
    return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightLineFiletype()
    return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightLineFileencoding()
    return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightLineMode()
    let fname = expand('%:t')
    return fname == '__Tagbar__' ? 'Tagbar' :
                \ fname == 'ControlP' ? 'CtrlP' :
                \ fname == '__Gundo__' ? 'Gundo' :
                \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
                \ fname =~ 'NERD_tree' ? 'NERDTree' :
                \ &ft == 'unite' ? 'Unite' :
                \ &ft == 'vimfiler' ? 'VimFiler' :
                \ &ft == 'vimshell' ? 'VimShell' :
                \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! CtrlPMark()
    if expand('%:t') =~ 'ControlP' && has_key(g:lightline, 'ctrlp_item')
        call lightline#link('iR'[g:lightline.ctrlp_regex])
        return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
                    \ , g:lightline.ctrlp_next], 0)
    else
        return ''
    endif
endfunction

let g:ctrlp_status_func = {
            \ 'main': 'CtrlPStatusFunc_1',
            \ 'prog': 'CtrlPStatusFunc_2',
            \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
    let g:lightline.ctrlp_regex = a:regex
    let g:lightline.ctrlp_prev = a:prev
    let g:lightline.ctrlp_item = a:item
    let g:lightline.ctrlp_next = a:next
    return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
    return lightline#statusline(0)
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'

function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
    return lightline#statusline(0)
endfunction

augroup AutoSyntastic
    autocmd!
    autocmd BufWritePost *.c,*.cpp call s:syntastic()
augroup END
function! s:syntastic()
    SyntasticCheck
    call lightline#update()
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0

