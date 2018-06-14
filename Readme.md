# the better terminal experience
Recommend to use iTerm2, zsh zepreto, neovim

Guide - [http://mikebuss.com/2014/02/02/a-beautiful-productive-terminal-experience/]

zsh plugins - [https://github.com/unixorn/awesome-zsh-plugins]

## Better prompt with git simple
(branch) >

## better android developer environment

## better file search to save you life
fzf fd ripgrep nnn vidir

## better vim
use nvim instead vim


get start vim https://github.com/mhinz/vim-galore

## better ai??
install [https://github.com/gleitz/howdoi]

## nvim configure

```
mkdir -p ~/.config/nvim
cat > ~/.config/nvim/init.vim << EOF
set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.vimrc
EOF
```

Basic Vim, provide minimums

Navigation
git support
golang support
autocomplate
spell check
mouse on
easy copy paste
fuzzy search
snippet
comment

Other vim plugs should move to vim.after and be


# vim command

shift-K - find man page
n  <C-\>       * :call OpenNerdTree()<CR>
n  <C-S>       * :RelatedSpecVOpen<CR> --?
n  ,sl         * :RunItermSpringSpecLine<CR>
n  ,ss         * :RunItermSpringSpec<CR>
n  ,rl         * :RunItermSpecLine<CR>
n  ,rs         * :RunItermSpec<CR>


`]s` next spell error 
`zg` add word to good word

# test zsh loading time
`time zsh -i -c exit`

# Zsh quick reference
Zsh conditional-expressions [http://zsh.sourceforge.net/Doc/Release/Conditional-Expressions.html]
