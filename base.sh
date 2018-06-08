#!/usr/bin/env zsh

# exports
export DOTFILES=$HOME/dotfile
export RCFILES=$DOTFILES/.rcfiles
export DROPBOX_HOME=$HOME/Dropbox/
export NOTE_FIELS=$DROPBOX_HOME/markdown

# paths
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$DOTFILES/binref

#extras can use for your home or companay settings
#papth to expends your path
#extras for other settings you don't what to commit
for file in $RCFILES/.{exports,path,aliases,functions,prompt,extras,androidenv,custom}; do 
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done
unset file

