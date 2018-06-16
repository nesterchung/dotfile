#!/bin/sh
vi-note(){
  topic=$1
  $EDITOR $NOTE_DIR/${topic}.md
}
#markdown alias
for topic in {android,ios,git,dp,kt}; do
    alias vi-note-${topic}="$EDITOR $NOTE_DIR/${topic}.md";
done

for file in $RESUME_DIR/resume*.md(.); do
    filename=$(basename -- $file)
    cvname=${filename%.*}
    alias vi-resume-${cvname}="${EDITOR} ${RESUME_DIR}/${cvname}.md"
done

for file in $RC_DIR/*(.) ; do
    filename=$(basename -- $file)
    alias vi-rc-${filename:1}="${EDITOR} ${RC_DIR}/${filename}"
done

# utils for search google 
alias ggg='googler -n 7 -c ru -l ru'

alias vim="nvim"
alias m='vimr'
alias o="open"
alias ptt="ssh bbsu@ptt.cc"

unset filename
unset file
unset cvname
unset topic
