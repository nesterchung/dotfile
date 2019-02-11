safe_source $RC_DIR/siterwellrc
path_add /Users/nester/tools/arcanist/bin
safe_source /Users/nester/tools/arcanist/resources/shell/bash-completion
alias gw='./gradlew --offline' 
alias gwc='gw clean'
alias gapprm='adb uninstall com.grindrapp.android'

GRINDR_REVIEWERS="freesamael, JacksonHuang, eugene.chen, w4a2y4, chris.wu, saket.dandawate, phillip.hsu, fire, ricardo.becerra, nick.penna, Guoyang, evanlin, JianCong, alex.lin"

alias arcd="arc diff --reviewers '$GRINDR_REVIEWERS' "

alias grstart="adb shell monkey -p com.grindrapp.android -c android.intent.category.LAUNCHER 1"
alias gruninstall="adb uninstall com.grindrapp.android"
alias bundletool="java -jar $DOTFILES/bin/bundletool-all-0.7.2.jar"
