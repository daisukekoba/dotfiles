if !empty(globpath(&runtimepath, 'plugin/lightline.vim'))
  let g:lightline = { 'colorscheme': 'wombat' }
  set noshowmode
else
  set statusline=%f\ %m%r%h%w%=\[%{&ff}][%{&fenc!=''?&fenc:&enc}]%y\ %3p%%\ %4l:%3c
endif
