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
    alias vi-rc-${filename}="${EDITOR} ${RC_DIR}/${filename}"
done

alias vi-rcs="vim \$(fd . $RC_DIR/ -t f | fzf --preview 'head  {}')"

# utils for search google 
alias ggg='googler -n 7 -c ru -l ru'

alias vim="nvim"
alias m='vimr'
alias o="open"
alias ptt="ssh bbsu@ptt.cc"
alias R="source $HOME/.zshrc"
alias tmux="TERM=screen-256color-bce tmux"
alias ssh='TERM=xterm-256color ssh'

# list my repos
alias ls-repos="curl -s https://api.github.com/users/nesterchung/repos | jq -c '.[] | {name,html_url}'"

unset filename
unset file
unset cvname
unset topic
