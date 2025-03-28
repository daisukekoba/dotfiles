set number
set nowrap
set sidescroll=2
set sidescrolloff=5

"Skip initialization for vim-tiny or vim-small.
if 0 | endif

set encoding=utf-8
set fileencodings=utf-8,cp932
scriptencoding utf-8

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

if has('mac') && $VIM == '/usr/share/vim'
  "
elseif v:version >= 802 || (v:version == 801 && has('patch'.360))
  set diffopt+=algorithm:histogram
endif

"Plugins are managed by Vim8 packages.
packloadall

for f in sort(split(globpath(&runtimepath, 'config/*.vim')))
  execute 'source' f
endfor

if has("autocmd")
  autocmd FileType gitconfig setlocal noexpandtab
  autocmd FileType sh,zsh setlocal shiftwidth=2 tabstop=2
  autocmd FileType javascript,typescript setlocal shiftwidth=2 tabstop=2
endif

syntax enable
filetype plugin indent on

