" File              : /Users/nester/dotfile/vim/.vimrc
" Author            : Nester Chung <twntwn3838@gmail>
" Date              : 03.08.2018
" Last Modified Date: 03.08.2018
so $DOTFILES/vim/minimal-vimrc.vim
so $DOTFILES/vim/plugins.vim
so $DOTFILES/vim/deoplete.vim
so $DOTFILES/vim/key-binding.vim
so $DOTFILES/vim/nerdtree.vim
so $DOTFILES/vim/fzf.vim
so $DOTFILES/vim/color.vim
so $DOTFILES/vim/vimwiki.vim
so $DOTFILES/vim/go.vim
so $DOTFILES/vim/cpp.vim
so $DOTFILES/vim/todo.txt.vim
so $DOTFILES/vim/vim-header.vim

set termguicolors
set list
set listchars=tab:▸\ ,eol:¬
set ignorecase  " make auto complete ignorecase
set smartcase

"shell
au BufRead,BufNewFile *.sh set sw=2 ts=2 tw=72

"quick input date/time
au FileType vimwiki,asciidoc,markdown inoremap <script> <silent> <buffer> date<Tab> <C-R>=strftime("%Y-%m-%d")<CR>
au FileType vimwiki,asciidoc,markdown inoremap <script> <silent> <buffer> time<Tab> <C-R>=strftime("%H:%M:%S")<CR>

" Always enable spell check, my grammar is horrible
set spell
set mouse=a     " enable mouse support
set clipboard=unnamed "yank to pbcopy"
" Spell-check Markdown files
autocmd FileType markdown setlocal spell
" Spell-check Git messages
autocmd FileType gitcommit setlocal spell

autocmd BufNewFile,BufRead todo.txt set ft=todo
set spellfile=$HOME/.config/nvim/spell/en.utf-8.add
set complete+=kspell
nmap <silent> <leader>s :set spell!<CR>
nmap <silent> <F2> ]s

command! -nargs=* Wrap set wrap linebreak

let g:header_auto_add_header = 0
let g:header_field_author = 'Nester Chung'
let g:header_field_author_email = 'twntwn3838@gmail'
