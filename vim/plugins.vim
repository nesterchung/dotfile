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


" Semantic language support
" Plugin 'zchee/deoplete-jedi'

" Plugins that connect Vim with language servers, we have two choice 

"Plugin 'autozimu/LanguageClient-neovim'  "After bundle install, shoud run install.sh"
" Or
" Plugin 'prabirshrestha/async.vim'
" Plugin 'prabirshrestha/vim-lsp'

if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif

Plugin 'morhetz/gruvbox'
Plugin 'ervandew/supertab'
Plugin 'vimwiki/vimwiki'

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" ==== NERD tree
" Open the project tree and expose current file in the nerdtree with Ctrl-\
" " calls NERDTreeFind iff NERDTree is active, current window contains a modifiable file, and we're not in vimdiff
function! OpenNerdTree()
  if &modifiable && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
  else
    NERDTreeToggle
  endif
endfunction
nnoremap <silent> <C-\> :call OpenNerdTree()<CR>
" Make nerdtree look nice
"let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" If installed using Homebrew
set rtp+=/usr/local/opt/fzf
" If installed using git
"set rtp+=~/.fzf
cnoreabbrev fzf Files

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

nmap <F12> :TagbarToggle<CR>

" https://vimawesome.com/plugin/the-nerd-commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" configuration vimwiki
" https://www.dailydrip.com/blog/vimwiki.html
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.wiki'}]
