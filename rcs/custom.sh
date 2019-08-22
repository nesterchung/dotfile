alias gw='./gradlew --offline' 
alias gwc='gw clean'
alias gapprm='adb uninstall com.grindrapp.android'

GRINDR_REVIEWERS="freesamael, JacksonHuang, eugene.chen, w4a2y4, chris.wu, saket.dandawate, phillip.hsu, fire, ricardo.becerra, nick.penna, Guoyang, evanlin, JianCong, alex.lin"
export PATH="$PATH:/$HOME/dev/arcanist/bin/"
source ~/dev/grindr-3.0-android/scripts/aliases.sh
alias open=nautilus
alias o=open

alias arcd="arc diff --reviewers '$GRINDR_REVIEWERS' "

alias grstart="adb shell monkey -p com.grindrapp.android -c android.intent.category.LAUNCHER 1"
alias gruninstall="adb uninstall com.grindrapp.android"
alias bundletool="java -jar $DOTFILES/bin/bundletool-all-0.7.2.jar"
alias fd=fdfind
