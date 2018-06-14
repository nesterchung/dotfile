#RUBY_CONFIGURE_OPTS=--with-readline-dir="$(brew --prefix readline)" rbenv install 2.5.1

rbenv() {
  eval "$(command rbenv init -)"
  rbenv "$@"
}

#GEM_PATH=$(gem environment gempath | tr ":" "\n" | tail -1)
#path_add $GEM_PATH
