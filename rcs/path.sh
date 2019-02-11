#!/bin/sh
#
path_add() {
  test -r $1 && export PATH=$PATH:$1 || echo "$1 not found"
}

# Customize Paths
#path_add $ANT_HOME/bin
path_add $GRADLE_HOME/bin
path_add $GOROOT/bin
path_add "/usr/local/opt/coreutils/libexec/gnubin"
path_add "/usr/local/opt/openssl/bin"

#python
# path_add $HOME/anaconda2/bin

# vim: ts=2 sw=2
