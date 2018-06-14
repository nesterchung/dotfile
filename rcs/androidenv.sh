#!/bin/sh
# Android Settings
## Customize Exports
export ANDROID_BUILD_TOOLS_VERSION="26.0.1"
export ANDROID_SDK_PATH=/usr/local/share/android-sdk
export ANDROID_NDK_PATH=$HOME/dev/android-ndk-r10e
export ANDROID_HOME=/usr/local/share/android-sdk
export ANDROID_SDK_ROOT=$ANDROID_SDK_PATH

# Customize Paths
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/build-tools/$ANDROID_BUILD_TOOLS_VERSION
export PATH=$PATH:$ANDROID_NDK_ROOT

alias adb='adb-peco'
alias dumpsys="adb shell dumpsys "
function apkv() {
  aapt dump badging $1 | grep version
}
