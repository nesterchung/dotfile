" https://www.dailydrip.com/blog/vimwiki.html
"let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.wiki'}]
" config vimwiki
au BufRead,BufNewFile *.wiki set sw=2 ts=2 tw=102
au FileType vimwiki inoremap <script> <silent> <buffer> date<Tab> <C-R>=strftime("%Y-%m-%d")<CR>
au FileType vimwiki inoremap <script> <silent> <buffer> time<Tab> <C-R>=strftime("%H:%M:%S")<CR>
:autocmd FileType vimwiki nmap <leader>d :VimwikiMakeDiaryNote<CR>
function! ToggleCalendar()
  execute ":Calendar"
  if exists("g:calendar_open")
    if g:calendar_open == 1
      execute "q"
      unlet g:calendar_open
    else
      g:calendar_open = 1
    end
  else
    let g:calendar_open = 1
  end
endfunction
:autocmd FileType vimwiki map c :call ToggleCalendar()<CR>

