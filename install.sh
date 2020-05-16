#!/bin/bash

set -e

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


cp ./.vimrc ~/.vimrc
cp -a ./.vim_runtime/. ~/.vim_runtime/
