#!/usr/bin/env zsh
bindkey -v

# exports
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


for file in $RC_DIR/{set_envs,path,aliases,functions,prompt,extras,androidenv,custom}.sh; do 
    safe_source $file
done
unset file

# color
safe_source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"
