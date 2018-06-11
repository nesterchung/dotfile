so $DOTFILES/vim/minimal-vimrc.vim
so $DOTFILES/vim/plugins.vim
so $DOTFILES/vim/deoplete.vim
so $DOTFILES/vim/key-binding.vim
so $DOTFILES/vim/nerdtree.vim
so $DOTFILES/vim/fzf.vim
so $DOTFILES/vim/color.vim
so $DOTFILES/vim/vimwiki.vim
so $DOTFILES/vim/go.vim

set list
set listchars=tab:▸\ ,eol:¬
set ignorecase  " make auto complete ignorecase
set smartcase
" make search case-senstive 
nnoremap / /\C

" Always enable spell check, my grammar is horrible
set spell
set mouse=a     " enable mouse support
" Spell-check Markdown files
autocmd FileType markdown setlocal spell
" Spell-check Git messages
autocmd FileType gitcommit setlocal spell
set spellfile=$HOME/.config/nvim/spell/en.utf-8.add
set complete+=kspell
