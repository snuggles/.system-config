#!/usr/bin/sh

## macOS Preferences

# Set hostname
sudo scutil --set HostName "MacMini"

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1

# Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Store screenshots in subfolder on desktop
mkdir ~/Desktop/Screenshots
defaults write com.apple.screencapture location ~/Desktop/Screenshots


# Setup Zgen
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"


## Github
ssh-keygen -t rsa -b 4096 -C "carsten@`hostname -s`"

# Copy public key to Github.com
cat ~/.ssh/id_rsa.pub

# Test connection
ssh -T git@github.com

# Git global config
git config --global user.name "Carsten Pettersson"
git config --global user.email "carsten@petterssons.dk"
git config --global github.user snuggles
git config --global github.token <token_here>

git config --global core.editor "code -w"
git config --global color.ui true
