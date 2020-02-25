#!/bin/bash
set -x

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DOTFILES_ROOT=$(dirname "$SCRIP_DIR")

#ln -b -s /path/to/file /path/to/symlink

$SCRIPT_DIR/thefuck.sh

ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.bashrc ~/.bashrc
ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.bash_aliases ~/.bash_aliases
