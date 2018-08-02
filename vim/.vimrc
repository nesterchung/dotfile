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

set termguicolors
set list
set listchars=tab:▸\ ,eol:¬
set ignorecase  " make auto complete ignorecase
set smartcase

" Always enable spell check, my grammar is horrible
set spell
set mouse=a     " enable mouse support
set clipboard=unnamed "yank to pbcopy"
" Spell-check Markdown files
autocmd FileType markdown setlocal spell
" Spell-check Git messages
autocmd FileType gitcommit setlocal spell
set spellfile=$HOME/.config/nvim/spell/en.utf-8.add
set complete+=kspell
nmap <silent> <leader>s :set spell!<CR>
nmap <silent> <F2> ]s

command! -nargs=* Wrap set wrap linebreak
