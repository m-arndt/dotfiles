#!/bin/bash

SCRIPT_DIR=$(dirname $(realpath "$0"))
DOTFILES_ROOT=$(dirname "$(dirname $(realpath "$0"))")

ln -v -b -s $DOTFILES_ROOT/Config/.zshrc ~/.zshrc

ln -v -b -s $DOTFILES_ROOT/Config/.dir_colors ~/.dir_colors

git clone https://github.com/powerline/fonts.git --depth=1
(cd fonts; ./install.sh)
rm -rf fonts