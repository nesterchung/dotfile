" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'     " git support
Plugin 'scrooloose/nerdtree'    " file system explorer
Plugin 'tpope/vim-surround'     " surroundings - parentheses, brackets, quotes, XML tags, and more.
Plugin 'junegunn/fzf.vim'       " fzf love vim       
Plugin 'majutsushi/tagbar'      " Vim plugin that displays tags in a window, ordered by scope
Plugin 'scrooloose/nerdcommenter' " commenting
Plugin 'fatih/vim-go'           " Go development plugin for Vim
Plugin 'morhetz/gruvbox'
Plugin 'ervandew/supertab'
Plugin 'vimwiki/vimwiki'
Plugin 'w0rp/ale'

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
