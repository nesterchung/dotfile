#!/bin/zsh
for file in $RC_DIR/{nvmrc,go,ruby,fzf,aws,fasd,blog}.sh; do
  safe_source $file
done
unset file
