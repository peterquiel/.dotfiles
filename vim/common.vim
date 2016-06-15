syntax on
filetype plugin indent on
set re=1            " use new regexp engine

set incsearch
set ignorecase
set smartcase
set hlsearch
" Use <esc> to clear the highlighting of :set hlsearch.
nnoremap <leader><esc> :noh<return><esc>

set nocompatible    " not care about vi compat
set modelines=0
set showmode
set showcmd
set wrap
set textwidth=120
set formatoptions=qrn1
set relativenumber
set number
" offset wehen scorlling
set scrolloff=10
set ruler
set backspace=indent,eol,start
set laststatus=2
set clipboard=unnamed,unnamedplus " makes unnamed reg sames "*, 

" if expandtab is on, tabs will be replaced by the number of tabstop spaces
" if tabs shoulb be used, set noexpandtab is your friend.
set expandtab
set copyindent
"set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

set smartindent
set cindent
set cinoptions+=j1
set autoindent

set hidden

set wildmenu
set wildmode=list:longest
set completeopt=longest,menuone


" movement for colmak layout and left hand navigation.
" -------------------------------------
" -- configure motion for my colmak layout, as a left hand person.
" ------------------------------------
"reverse map the default navigation mapping.
imap jj <Esc>

noremap h d
noremap H D
noremap j s
noremap k t
noremap K T
noremap l r

noremap r h
noremap d l
noremap s gk
noremap t gj
"navigation from function to function, when using curly braces langs, behaves in Python the same way due to python mode.
noremap S 10k
noremap T 10j
"navigate word wise if using capital letters
noremap R b
noremap D w
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

nnoremap <up> mz :m .-2<cr>`z ==
nnoremap <down> mz :m .+1<cr>`z ==
nnoremap <right> mz :> <cr>`z
nnoremap <left> mz :< <cr>`z
vnoremap <up> :m '<-2<cr>gv=gv
vnoremap <down> :m '>+1<cr>gv=gv

" spilt vertical with pipe and horizontaly with minus
map <C-w>\| :vsp<CR>
map <C-w>- :sp<CR>
map <C-w>T :resize +4<CR>
map <C-w>S :resize -4<CR>
map <C-w>D :vertical resize +10<CR>
map <C-w>R :vertical resize -10<CR>
map <C-f>  :tabp<cr>
map <C-p>  :tabn<cr>

" always want to jump to the exact place instead of the line
nnoremap ' `

" make dot operator available in visual mode
vnoremap . :normal .<CR>

" map undo to ctrl + u
nnoremap <C-u>  <C-r>

let java_highlight_functions="style"

if v:version > 703 || v:version == 703 && has("patch541")
    set formatoptions+=j " Delete comment character when joining commented lines
endif

" the ; after tags makes vim look for the file upwards, the .gtags file is generateb by the guten_tags plugin
set tags=./.tags;,./.gtags;,~/.vim/.tags
" always ask if there are more tags matching.
noremap <C-]> g<C-]>

au BufRead *.gradle set syntax=groovy

" Search for the select text when using # or * search in visual mode.
" Taken from https://github.com/godlygeek/vim-files/blob/master/plugin/vsearch.vim
function! s:VSetSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    " Use this line instead of the above to match matches spanning across lines
    "let @/ = '\V' . substitute(escape(@@, '\'), '\_s\+', '\\_s\\+', 'g')
    call histadd('/', substitute(@/, '[?/]', '\="\\%d".char2nr(submatch(0))', 'g'))
    let @@ = temp
endfunction

vnoremap * :<C-u>call <SID>VSetSearch()<CR>/<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>?<CR>
