so $DOTFILES/vim/minimal-vimrc.vim
so $DOTFILES/vim/plugins.vim
so $DOTFILES/vim/deoplete.vim
so $DOTFILES/vim/key-binding.vim

so $DOTFILES/vim/color.vim

set list
set listchars=tab:▸\ ,eol:¬
set ignorecase  " make auto complete ignorecase
set smartcase

" Always enable spell check, my grammar is horrible
set spell
set mouse=a     " enable mouse support
" Spell-check Markdown files
autocmd FileType markdown setlocal spell
" Spell-check Git messages
autocmd FileType gitcommit setlocal spell
set spellfile=$HOME/.config/nvim/spell/en.utf-8.add
set complete+=kspell
nmap <silent> <leader>s :set spell!<CR>
nmap <silent> <F2> ]s



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

" set true color
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" If installed using Homebrew
set rtp+=/usr/local/opt/fzf
" If installed using git
" set rtp+=~/.fzf

