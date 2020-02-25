#!/bin/bash
set -x

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DOTFILES_ROOT=$(dirname "$SCRIP_DIR")

mkdir -p ~/.local/share/xfce4/terminal/colorschemes
ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.local/share/xfce4/terminal/colorschemes/monokai-dark.theme ~/.local/share/xfce4/terminal/colorschemes/monokai-dark.theme

