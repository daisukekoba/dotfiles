if v:version >= 800 && has('python3')
  if !empty(globpath(&runtimepath, 'plugin/denite.nvim'))
    nnoremap ,uu :<C-u>Denite -mode=normal file_rec<CR>
    call denite#custom#map('normal', "<Down>", '<denite:move_to_next_line>')
    call denite#custom#map('normal', "<Up>", '<denite:move_to_previous_line>')
    call denite#custom#map('insert', "<Down>", '<denite:move_to_next_line>')
    call denite#custom#map('insert', "<Up>", '<denite:move_to_previous_line>')
  endif
else
  if !empty(globpath(&runtimepath, 'plugin/unite.vim'))
    nnoremap ,uu :<C-u>Unite file_rec<CR>
  endif
endif
