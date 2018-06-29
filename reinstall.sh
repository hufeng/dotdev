#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#brew tap homebrew/cask

# browser
echo "google-chrome"
brew cask install google-chrome
echo "google-chrome-canary"
brew cask install google-chrome-canary
echo "firefox"
brew cask install firefox
echo "brave"
brew cask install brave

# language
echo "java"
brew cask install java
echo "clojure"
brew install leiningen
echo "golang"
brew install go 
echo "erlang"
brew install erlang 
echo "elixir"
brew install elixir 

## editor
echo "nvim"
brew install nvim
echo "vscode"
brew cask install visual-studio-code

## android 
echo "android"
brew cask install homebrew/cask-versions/java8
brew cask install android-sdk
#export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
brew cask install android-studio

##misc
echo "ack"
brew install ack
echo "cscope"
brew install cscope
echo "zookeeper"
brew install zookeeper
echo "maven"
brew install maven
echo "docker"
brew cask install docker
echo "hyper" 
brew cask install hyper 
echo "fish"
brew cask install fish 
echo "dash"
brew cask install dash 
echo "github"
brew cask install github 

