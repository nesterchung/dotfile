" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'tpope/vim-fugitive'     " git support
Plugin 'scrooloose/nerdtree'    " file system explorer
Plugin 'tpope/vim-surround'     " surroundings - parentheses, brackets, quotes, XML tags, and more.
Plugin 'junegunn/fzf.vim'       " fzf love vim       
Plugin 'scrooloose/syntastic'   " Syntax checking hacks for vim
Plugin 'sirver/ultisnips'       " UltiSnips - The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips!
Plugin 'honza/vim-snippets'     " Snippets are separated from the engine.
Plugin 'majutsushi/tagbar'      " Vim plugin that displays tags in a window, ordered by scope
Plugin 'scrooloose/nerdcommenter' " commenting


Plugin 'autozimu/LanguageClient-neovim'

if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif

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



" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


nmap <F12> :TagbarToggle<CR>


" https://vimawesome.com/plugin/the-nerd-commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1


" configuration vimwiki
" https://www.dailydrip.com/blog/vimwiki.html
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.wiki'}]


