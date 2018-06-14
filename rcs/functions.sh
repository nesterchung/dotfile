#!/bin/sh
for file in $RC_DIR/{nvmrc,go,ruby,fzf,aws,fasd}.sh; do
  safe_source $file
done
unset file

# copy from tj's apex
uname_os() {
  os=$(uname -s | tr '[:upper:]' '[:lower:]')
  echo "$os"
}
uname_arch() {
  arch=$(uname -m)
  case $arch in
    x86_64) arch="amd64" ;;
    x86) arch="386" ;;
    i686) arch="386" ;;
    i386) arch="386" ;;
    aarch64) arch="arm64" ;;
    armv5*) arch="arm5" ;;
    armv6*) arch="arm6" ;;
    armv7*) arch="arm7" ;;
  esac
  echo ${arch}
}
uname_os_check() {
  os=$(uname_os)
  case "$os" in
    darwin) return 0 ;;
    dragonfly) return 0 ;;
    freebsd) return 0 ;;
    linux) return 0 ;;
    android) return 0 ;;
    nacl) return 0 ;;
    netbsd) return 0 ;;
    openbsd) return 0 ;;
    plan9) return 0 ;;
    solaris) return 0 ;;
    windows) return 0 ;;
  esac
  echo "$0: uname_os_check: internal error '$(uname -s)' got converted to '$os' which is not a GOOS value. Please file bug at https://github.com/client9/shlib"
  return 1
}
is_masosx(){
   uname_os_check()
   case "$os" in
     darwin) return 0 ;;
   esac
   return 1
}
set_env() {
  k=$1
  v=$2
  export $k=$v
  if is_masosx; then
    launchctl setenv $k $v
  fi
}