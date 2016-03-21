
source ~/.dotfiles/vim/leader.vim

syntax on
filetype plugin indent on
set re=1            " use new regexp engine

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
set scrolloff=20
set ruler
set backspace=indent,eol,start
set laststatus=2
set clipboard=unnamed " makes unnamed reg sames "*, 

set tabstop=2
set shiftwidth=2
set softtabstop=2
" use spaces to indent and not tabs
"set expandtab
set autoindent
set hidden

set wildmenu
set wildmode=list:longest

" movement for colmak layout and left hand navigation.
" -------------------------------------
" -- configure motion for my colmak layout, as a left hand person.
" ------------------------------------
noremap r h
noremap s gk
noremap S 10gk
noremap t gj
noremap T 10gj
noremap d l
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

noremap h d
noremap j s
noremap k t
noremap l r
" neio kjhl
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" spilt vertical with pipe and horizontaly with minus
map <C-w>\| :vsp<CR>
map <C-w>- :sp<CR>

" -------------------------------------
" -- configure search
" ------------------------------------
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
vnoremap // y/<C-R>"<CR>
"nnoremap <C-e> <C-R>
