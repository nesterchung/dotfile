" Always enable spell check, my grammar is horrible
set spell

" enable mouse support
set mouse=a

" Spell-check Markdown files
autocmd FileType markdown setlocal spell

" Spell-check Git messages
autocmd FileType gitcommit setlocal spell

set spellfile=$HOME/.config/nvim/spell/en.utf-8.add
set complete+=kspell


" config colortheme
let g:yadr_disable_solarized_enhancements = 1
set background=light
let g:seoul256_background = 256
let g:seoul256_srgb = 1
colo seoul256-light

" config vimwiki
au BufRead,BufNewFile *.wiki set filetype=vimwiki
":autocmd FileType vimwiki nmap <leader>d :VimwikiMakeDiaryNote

" config for golang
" autocmd FileType go set omnifunc=gocomplete#Complete
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <Leader>i <Plug>(go-info)

let g:go_fmt_autosave = 0
let g:go_fmt_command = "goimports"
