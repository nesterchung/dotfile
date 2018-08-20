# config for FZF FD 
safe_source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND="rg --files --sort-files $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"

_fzf_compgen_path() {
  # FIXME try to use rigrep , but rg not supporot query empty folder.
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}
