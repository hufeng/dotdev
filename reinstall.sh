# install zsh
echo "install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# chrome
echo "google-chrome"
brew cask install google-chrome

# firefox
echo "firefox"
brew cask install firefox

# brave
echo "brave"
brew cask install brave

# java
echo "java"
brew cask install java

# clojure
echo "clojure"
brew install leiningen

# golang
echo "golang"
brew install go 

# erlang
echo "erlang"
brew install erlang 

# elixir
echo "elixir"
brew install elixir 

# neovim
echo "nvim"
brew install nvim

# vscode
echo "vscode"
brew cask install visual-studio-code

## android 
echo "android-studio"
#brew cask install homebrew/cask-versions/java8
#brew cask install android-sdk
#export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
brew cask install android-studio

##sharp tools
echo "ack"
brew install ack

# cscope
echo "cscope"
brew install cscope

# maven
echo "maven"
brew install maven

# docker
echo "docker"
brew cask install docker

# fish
echo "fish"
brew cask install fish 

# dash
echo "dash"
brew cask install dash 

# github
echo "github"
brew cask install github 

