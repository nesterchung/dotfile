#!/bin/sh
export ANDROID_BUILD_TOOLS_VERSION="27.0.3"
#export ANDROID_NDK_PATH=$HOME/dev/android-ndk-r10e
export GRADLE_HOME=/usr/local/opt/gradle
export ANDROID_SDK_PATH=/usr/local/share/android-sdk
export ANDROID_HOME=/usr/local/share/android-sdk
export ANDROID_SDK_ROOT=$ANDROID_SDK_PATH

export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/build-tools/$ANDROID_BUILD_TOOLS_VERSION
export PATH=$PATH:$ANDROID_NDK_ROOT
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`



alias adb='adb-peco'
alias dumpsys="adb shell dumpsys "
alias adb-ls-data="adb shell ls -Rl /data/data | peco"
alias adb-data="adb_dir /data/data"
alias adb-storage="adb_dir /storage"
alias adb-data-pull="adb-data | _adb_pull"
alias adb-install="adb install -r -d \`fd -I -t f apk\$ | peco\`" # select apk from current folder and install to device
alias adb-screencap="adb shell screencap -p | sed 's/\r//' > adb_\`date +%Y%m%d%H%M%S\`.png"
alias adb-setting-start="adb shell am start -n com.android.settings/.Settings"
alias adb-dump-activity="adb shell dumpsys activity"
alias adb-dump-service="adb shell dumpsys service"
alias adb-launch="adb_launch "
alias adb-remove="adb_remove"
alias ktlint-fzf='ktlint -F $(fd -e kt | fzf)'
alias ktlint-changes='git diff --name-only | rg kt | xargs ktlint -F'
alias adb-list-packages="adb shell pm list packages | awk -F ":" '{print $2}'"
alias systrace="python $ANDROID_HOME/platform-tools/systrace/systrace.py"
# todo to get all package install in devices
#alias gfxinfo="dumpsys gfxinfo "

function apkv() {
  aapt dump badging $1 | grep version
}

_adb_pull() {
    read p && adb pull $p
}

adb_dir() {
    local dir=$1
    adb shell du $dir | awk -F '\t' '{print $2}' | peco
}

adb_launch() {
    adb shell monkey -p $1 -c android.intent.category.LAUNCHER 1
}
adb_remove() {
    adb shell pm uninstall $1
}
