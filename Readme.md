nester's dotfile
===

Recommend to use iTerm2, zsh zepreto, neovim

Guide - [http://mikebuss.com/2014/02/02/a-beautiful-productive-terminal-experience/]

zsh plugins - [https://github.com/unixorn/awesome-zsh-plugins]

prompt use pure


search/file utils
---
fzf fd ripgrep nnn vidir

better vim
---
use nvim instead vim

get start vim https://github.com/mhinz/vim-galore

help tools
---

howdoi [https://github.com/gleitz/howdoi]

neovim
---


```
mkdir -p ~/.config/nvim
cat > ~/.config/nvim/init.vim << EOF
set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.vimrc
EOF
```

simple plugin list

* [X] Navigation
* [X] git support
* [X] golang support
* [X] spell check
* [X] mouse on
* [ ] fuzzy search
* [ ] snippet
* [ ] comment

Other vim plugs should move to vim.after and be

```
shift-K - find man page
n  <C-\>       * :call OpenNerdTree()<CR>
n  <C-S>       * :RelatedSpecVOpen<CR> --?
n  ,sl         * :RunItermSpringSpecLine<CR>
n  ,ss         * :RunItermSpringSpec<CR>
n  ,rl         * :RunItermSpecLine<CR>
n  ,rs         * :RunItermSpec<CR>
```

`]s` next spell error 
`zg` add word to good word
`gx` open url with brwoser

`c-\` open NERDTree
`,g` grep word on cursor

Zsh quick reference
---
Zsh conditional-expressions [http://zsh.sourceforge.net/Doc/Release/Conditional-Expressions.html]

test zsh startup time

`time zsh -i -c exit`


cheetsheet
---



TODO
---

* [ ] complete install script
* [ ] install script support options, ask user to install tools
* [ ] vim install script
* [ ] more android studio script
* [ ] provider cheetsheet
