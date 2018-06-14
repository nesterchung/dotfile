" configuration vimwiki
" https://www.dailydrip.com/blog/vimwiki.html
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.wiki'}]
" config vimwiki
au BufRead,BufNewFile *.wiki set filetype=vimwiki
":autocmd FileType vimwiki nmap <leader>d :VimwikiMakeDiaryNote

