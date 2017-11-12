#!/bin/bash

echo Installing Xcode Tools
xcode-select –install

echo See if homebrew is installed
if test ! $(which brew)
then
  echo "Installing Homebrew for you."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

echo Install cask
brew tap caskroom/cask

echo Installing CLI Applications
brew install \
    git \
    zsh \
    zsh-completions \
    bash-completion \
    zsh-syntax-highlighting \
    dfu-util \
    jsonpp \
    mongodb \
    python3 \
    tree \
    tldr \
    wget

echo Installing Oh-My-Zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo Installing GUI Applications
echo Development Apps
echo Manually install zsh/oh-my-zsh/jetbrains/vmwarefusion/jdk/nodejs
brew cask install \
    iterm2 \
    filezilla \
    macdown \
    sourcetree \
    sublime-text \
    docker \
    mysqlworkbench

echo Productivity Apps
echo Manually install google-drive/airmail/office suite/adobe suite
brew cask install \
    google-chrome \
    karabiner-elements \
    alfred \
    divvy \
    the-unarchiver \
    caffeine \
    dropbox \
    evernote \
    goofy \
    slack

echo Media Apps
brew cask install \
    vlc \
    mplayerx \
    openemu \
    plex-media-server \
    spotify

echo Other Apps
echo Manually install sophos
brew cask install \
    flux \
    little-snitch \
    bartender \
    istat-menus \
    cleanmymac \
    beamer \
    calibre \
    carbon-copy-cloner \
    onyx

echo Cleaning up after homebrew
brew cleanup
brew cask cleanup
brew cask alfred link

