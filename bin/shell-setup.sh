
#!/usr/bin/sh

# Install zgen
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"

# Setup ~/.zshrc
cp ~/.system-config/dotfile-zshrc ~/.zshrc

# Run ZSH so that everything intializes
zsh

# Change user shell to zsh
chsh

# PENDING
