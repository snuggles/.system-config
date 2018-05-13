#!/usr/bin/sh

## Ruby

# Setup RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
echo progress-bar > ~/.curlrc
curl -sSL https://get.rvm.io | bash

# Install Ruby
rvm install ruby-2.4.3

# Install powder/pow
gem install powder
powder install

