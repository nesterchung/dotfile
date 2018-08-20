" If installed using Homebrew
set rtp+=/usr/local/opt/fzf
" If installed using git
"set rtp+=~/.fzf

nmap <leader>gr "zyiw:exe "Ag ".@z.""<CR>

" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>gf :GFiles<CR>
nnoremap <silent> <leader>e :FZF -m<CR>
