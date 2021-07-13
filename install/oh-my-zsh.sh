
#!/usr/bin/env bash

# Install Oh My Zsh
if ! [ -x "$(command -v omz)" ]; then
  echo 'Error: Oh My Zsh is not installed.' >&2
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else 
  echo "Oh My Zsh is already installed"
fi