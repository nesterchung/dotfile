# the better terminal experience
Recommand to use iTerm2, zsh m rezto, neovim
建議使用 iTerm2, zsh m rezto, neovim

Guide - [http://mikebuss.com/2014/02/02/a-beautiful-productive-terminal-experience/]

zsh plugins - [https://github.com/unixorn/awesome-zsh-plugins]

## Better promopt with git simple
(branch) >

## better android developer envirmoent

## better file search to save you life
Recommand to use fzf fd ripgrep nnn vidir

## tools need to install first
brew install ripgrep
brew install fd

## better vim
use nvim instead vim, no why

## better ai??
install [https://github.com/gleitz/howdoi]

## orgainze your vim
just source base.sh !

brew install neovim 
pip2 install --user --upgrade neovim
pip3 install --user --upgrade neovim
gem install neovim

* [ ] create config

mkdir -p ~/.config/nvim
nvim ~/.config/nvim/init.vim

Add following 

  ```
    set runtimepath+=~/.vim,~/.vim/after
    set packpath+=~/.vim
    
    source ~/.vimrc
  ```


# vim command

sifht-K - find man page
n  <C-\>       * :call OpenNerdTree()<CR>
n  <C-S>       * :RelatedSpecVOpen<CR> --?
n  ,sl         * :RunItermSpringSpecLine<CR>
n  ,ss         * :RunItermSpringSpec<CR>
n  ,rl         * :RunItermSpecLine<CR>
n  ,rs         * :RunItermSpec<CR>


# test zsh loading time
`time zsh -i -c exit`

# zsh queick refference
zsh conditional-expressions [http://zsh.sourceforge.net/Doc/Release/Conditional-Expressions.html]
