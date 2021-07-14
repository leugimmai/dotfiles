#!/usr/bin/env bash

if [ "$#" -ne 1  ]; then
        echo "Usage: install.sh <home_directory>"
        echo "Pass the Home Directory"
        exit 1
fi

homedir=$1
dotfiles_dir=${homedir}/development/dotfiles

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}


dotfiles=".aliases .exports .gitignore_global .tmux.conf .zshrc"

# for file in ${dotfiles}; do
#  echo "Creating symlink to $file"
#  ln -sf ${dotfiles_dir}/${file} ${homedir}/${file}
# done

# Run the HomeBrew Script
# ./install/brew.sh

# Run Oh My ZSH Script
# ./install/oh-my-zsh.sh

# Run Vim Script 
# ./install/vim.sh