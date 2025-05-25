call plug#begin()
Plug 'tomtom/tcomment_vim'
call plug#end()

set encoding=utf-8
set t_Co=256
set background=dark
set scrolloff=5
set number
set ci
set ai
set cin
set ignorecase
set showmatch
set hlsearch
set incsearch
set lz
set mouse=a
set smarttab
set smartindent
set autoindent
set expandtab
set nobackup
set nowrap
set noswapfile
set smartcase
set clipboard=unnamedplus
set clipboard=unnamed
set tabstop=2
set shiftwidth=2
set softtabstop=2
set nocompatible
set belloff=all

syntax on
colorscheme default
filetype plugin indent on

autocmd FileType * set formatoptions-=r

inoremap jk <Esc>
nnoremap Y <S-v>:%y+<CR>
nnoremap ; :
nnoremap <Space> :noh<CR>
nnoremap <C-k> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <Space>n :tabnew
nnoremap <S-k> i<CR><ESC>
