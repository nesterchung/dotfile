" https://www.dailydrip.com/blog/vimwiki.html
"let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.wiki'}]
" config vimwiki
au BufRead,BufNewFile *.wiki set sw=2 ts=2 tw=102
":autocmd FileType vimwiki nmap <leader>d :VimwikiMakeDiaryNote
