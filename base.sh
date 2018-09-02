#!/usr/bin/env zsh
bindkey -v

# exports
# Workaround need to escape "^" symbol in zsh
# https://github.com/robbyrussell/oh-my-zsh/issues/449
unsetopt nomatch
export HISTCONTROL=ignoreboth:erasedups
export DOTFILES=$HOME/dotfile
export RC_DIR=$DOTFILES/rcs
export DROPBOX_HOME=$HOME/Dropbox/
export NOTE_DIR=$DROPBOX_HOME/markdown
export RESUME_DIR=$DROPBOX_HOME/resume/archive
#basic functions
source $HOME/dotfile/rcs/basic.sh

# paths
set_env PATH=$PATH:$HOME/bin
set_env PATH=$PATH:$DOTFILES/binref


for file in $RC_DIR/{set_envs,exports,path,aliases,functions,prompt,extras,androidenv,custom}.sh; do 
    safe_source $file
done
unset file

# color
safe_source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"
