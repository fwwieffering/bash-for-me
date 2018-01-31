#!/bin/bash

### NEED TO INSTALL ITERM2 prior to running this
# this was assembled post-fact and may not actually work

# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# replace mac git
brew install git bash-completion
# replace mac utils with gnu utils
brew install --with-default-names coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt
# install pyenv and pyenv-virtualenv
brew install pyenv pyenv-virtualenv

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/dotfiles/iterm2"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true



source ~/.bash_profile
bind -f ~/.inputrc
