"Skip initialization for vim-tiny or vim-small.
if 0 | endif

set encoding=utf-8
scriptencoding utf-8

if isdirectory(expand('~/.vim/lightline.vim'))
  set runtimepath+=~/.vim/lightline.vim
  let g:lightline = {
    \ 'colorscheme': 'wombat'
    \ }
else
  set statusline=%f\ %m%r%h%w%=\[%{&ff}][%{&fenc!=''?&fenc:&enc}]%y\ %3p%%\ %4l:%3c
endif

set number
set nowrap
set list
set listchars=tab:›\ ,trail:-,extends:»,precedes:«
set showcmd
set laststatus=2
set showtabline=2

set autoindent
set smartindent
set shiftwidth=4

set tabstop=4
set softtabstop=4
set expandtab

set ignorecase
set smartcase
set hlsearch

syntax enable
filetype plugin indent on

