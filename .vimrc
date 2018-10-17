set number
set nowrap
set sidescroll=2

"Skip initialization for vim-tiny or vim-small.
if 0 | endif

scriptencoding utf-8
set encoding=utf-8
set fileencodings=utf-8,cp932

if isdirectory(expand('~/.vim/lightline.vim'))
  set runtimepath+=~/.vim/lightline.vim
  let g:lightline = {
    \ 'colorscheme': 'wombat'
    \ }
  set noshowmode
else
  set statusline=%f\ %m%r%h%w%=\[%{&ff}][%{&fenc!=''?&fenc:&enc}]%y\ %3p%%\ %4l:%3c
endif

if v:version >= 800 && has('python3')
  if isdirectory(expand('~/.vim/denite.nvim'))
    set runtimepath+=~/.vim/denite.nvim
    nnoremap ,uu :<C-u>Denite -mode=normal file_rec<CR>
    call denite#custom#map('normal', "<Down>", '<denite:move_to_next_line>')
    call denite#custom#map('normal', "<Up>", '<denite:move_to_previous_line>')
    call denite#custom#map('insert', "<Down>", '<denite:move_to_next_line>')
    call denite#custom#map('insert', "<Up>", '<denite:move_to_previous_line>')
  endif
else
  if isdirectory(expand('~/.vim/unite.vim'))
    set runtimepath+=~/.vim/unite.vim
    nnoremap ,uu :<C-u>Unite file_rec<CR>
  endif
endif

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

if has("autocmd")
  autocmd FileType gitconfig setlocal noexpandtab
endif

syntax enable
filetype plugin indent on

