" vim-dispatch
"
" I prefer not run in terminal UI unless absolutely needed, in
" which case the order has to change (eg. `iterm` before `headless`)
let g:dispatch_handlers = [
  \ 'headless',
  \ 'iterm',
  \ 'x11',
  \ ]
" pandoc
let g:pandoc_enable_make_after_save=0
let g:pandoc_output_type='pdf'
