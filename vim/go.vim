" config for golang
" autocmd FileType go set omnifunc=gocomplete#Complete
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <Leader>i <Plug>(go-info)
let g:go_fmt_autosave = 0
let g:go_fmt_command = "goimports"

