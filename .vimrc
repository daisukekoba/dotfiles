set number
set nowrap
set sidescroll=2
set sidescrolloff=5

"Skip initialization for vim-tiny or vim-small.
if 0 | endif

scriptencoding utf-8
set encoding=utf-8
set fileencodings=utf-8,cp932

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

"Plugins are managed by Vim8 packages.
packloadall

for f in sort(split(globpath(&runtimepath, 'config/*.vim')))
  execute 'source' f
endfor

if has("autocmd")
  autocmd FileType gitconfig setlocal noexpandtab
endif

syntax enable
filetype plugin indent on

