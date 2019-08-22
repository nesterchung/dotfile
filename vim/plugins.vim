" File              : /Users/nester/dotfile/vim/plugins.vim
" Date              : 03.08.2018
" Last Modified Date: 03.08.2018
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'     " git support
Plugin 'scrooloose/nerdtree'    " file system explorer
Plugin 'tpope/vim-surround'     " surroundings - parentheses, brackets, quotes, XML tags, and more.
Plugin 'tpope/vim-unimpaired'   " use [q ]q [Q [Q
Plugin 'junegunn/fzf.vim'       " fzf love vim       
Plugin 'majutsushi/tagbar'      " Vim plugin that displays tags in a window, ordered by scope
Plugin 'scrooloose/nerdcommenter' " commenting
Plugin 'fatih/vim-go'           " Go development plugin for Vim
Plugin 'morhetz/gruvbox'
Plugin 'ervandew/supertab'
Plugin 'mattn/calendar-vim'
Plugin 'vimwiki/vimwiki'
Plugin 'freitass/todo.txt-vim'
Plugin 'w0rp/ale'
Plugin 'rhysd/vim-clang-format'
Plugin 'gregsexton/gitv'
Plugin 'alpertuna/vim-header'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'
Plugin 'asciidoc/vim-asciidoc'
Plugin 'udalov/kotlin-vim'
Plugin 'elixir-editors/vim-elixir'
Plugin 'slashmili/alchemist.vim'
Plugin 'mhinz/vim-mix-format'

if has('nvim')
    Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plugin 'Shougo/deoplete.nvim'
    Plugin 'roxma/nvim-yarp'
    Plugin 'roxma/vim-hug-neovim-rpc'
endif

call vundle#end()            " required
filetype plugin indent on    " required

" TagBar
nmap <F12> :TagbarToggle<CR>
