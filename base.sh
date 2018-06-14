#!/usr/bin/env zsh
bindkey -v

# exports
export DOTFILES=$HOME/dotfile
export RC_DIR=$DOTFILES/rcs
export DROPBOX_HOME=$HOME/Dropbox/
export NOTE_DIR=$DROPBOX_HOME/markdown
export RESUME_DIR=$DROPBOX_HOME/resume/archive

# paths
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$DOTFILES/binref

#basic functions
safe_source() {
    test -r $1 && [ -f $file ] && source $1
}

for file in $RC_DIR/{exports,path,aliases,functions,prompt,extras,androidenv,custom}.sh; do 
    safe_source $file
done
unset file

# color
safe_source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"
