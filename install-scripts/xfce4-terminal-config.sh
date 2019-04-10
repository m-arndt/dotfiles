#!/bin/bash

SCRIPT_DIR=$(dirname $(realpath "$0"))
DOTFILES_ROOT=$(dirname "$(dirname $(realpath "$0"))")

mkdir -p ~/.local/share/xfce4/terminal/colorschemes
ln -v -b -s $DOTFILES_ROOT/Config/.local/share/xfce4/terminal/colorschemes/monokai-dark.theme ~/.local/share/xfce4/terminal/colorschemes/monokai-dark.theme

