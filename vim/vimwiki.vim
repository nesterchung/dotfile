" https://www.dailydrip.com/blog/vimwiki.html
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.wiki'}]
au BufRead,BufNewFile *.wiki set tabstop=2 shiftwidth=2 expandtab
":autocmd FileType vimwiki nmap <leader>d :VimwikiMakeDiaryNote
