#!/bin/bash

#ln -b -s /path/to/file /path/to/symlink

SCRIPT_DIR=$(dirname $(realpath "$0"))
DOTFILES_ROOT=$(dirname "$(dirname $(realpath "$0"))")

ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.bashrc ~/.bashrc
ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.bash_aliases ~/.bash_aliases
