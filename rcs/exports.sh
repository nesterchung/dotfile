#!/usr/bin/env zsh

#EDITOR CONFIGURES
export VISUAL="nvim"
export EDITOR="nvim"
export VIDIR_EDITOR="nvim"
export GIT_EDITOR="nvim"

export VAGRANT_DEFAULT_PROVIDER=virtualbox

export ANT_HOME=/usr/local/opt/ant


# todo move to .cpp
# cpp configures 
# export CC=/usr/local/bin/x86_64-apple-darwin15.6.0-gcc-4.7.4
# export CXX=/usr/local/bin/x86_64-apple-darwin15.6.0-g++-4.7
export CC=/usr/bin/clang
export CXX=/usr/bin/clang++
export GTEST_DIR=/Users/nester/dev/googletest/googletest
export GMOCK_DIR=/Users/nester/dev/googletest/googlemock

export LESS_TERMCAP_so=$'\E[30;43m'
# vim: ts=2 sw=2