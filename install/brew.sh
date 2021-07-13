#!/usr/bin/env bash

if ! [ -x "$(command -v brew)" ]; then
  echo 'Error: brew is not installed.' >&2
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Brew is already installed"
fi

# Install Brew Packages
packages="zsh git pyenv htop tmux neovim bat fzf"

for package in ${packages}; do
if ! [ -x "$(command -v $package)" ]; then
  echo "Error: $package is not installed."
  brew install $package
else 
  echo "$package already installed"
fi
done

# # Install Casks
# brew tap homebrew/cask-fonts
# brew cask install font-source-code-pro