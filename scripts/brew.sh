#/bin/sh

brew update
brew upgrade 

brew isntall cask
brew install coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getop moreutilst

# Instead find grep fuzzy search
brew install fd ripgrep fzf fasd

# file system operate tools
brew install vidir nnn

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-set --with-default-names

brew install googler  # google search cli 
brew install wget curl
brew nvim
brew install openssh
brew install git
brew install get-flow
brew install imagemqgick --with-webp
brew install tree
brew install howdoi
brew install jq # json format tools
brew install par # text indent formant
brew tap neovim/neovim
brew install neovim
brew install hub
brew install peco
brew install infer # bugs detected
brew install shyiko/ktlint/ktlint
gem install adb-peco

# python
brew cask install Caskroom/cask/anaconda

#ruby?

brew cleanup

sudo pip install cmakelint
