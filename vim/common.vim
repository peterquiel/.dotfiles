syntax on
filetype plugin indent on
set re=1            " use new regexp engine

set incsearch
set ignorecase
set smartcase
set smarttab
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
set clipboard=unnamed " makes unnamed reg sames "*, 

" use spaces to indent and not tabs
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent
set cindent
set cinoptions+=j1
"set tabstop=2
"set shiftwidth=2
"set softtabstop=2
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
"navigation paragraph wise when using capital letters
noremap S {
noremap T }
"navigate worde wise if using capital letters
noremap R b
noremap D w
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" spilt vertical with pipe and horizontaly with minus
map <C-w>\| :vsp<CR>
map <C-w>- :sp<CR>
map <C-w>T :resize +4<CR>
map <C-w>S :resize -4<CR>
map <C-w>D :vertical resize +10<CR>
map <C-w>R :vertical resize -10<CR>

" always want to jump to the exact place instead of the line
nnoremap ' `

" make dot operator available in visulamode
vnoremap . :normal .<CR>

" map undo to ctrl + u
nnoremap <C-u>  <C-r>

let java_highlight_functions="style"

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif
" the ; after tags makes vim look for the file upwards
set tags=./.tags;,~/.vim/.tags
noremap <C-]> g<C-]>

au BufRead *.gradle set syntax=groovy
