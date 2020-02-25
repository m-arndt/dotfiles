#!/bin/bash
set -x

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DOTFILES_ROOT=$(dirname "$SCRIP_DIR")

sudo pacman -S i3 i3blocks rofi feh

$SCRIPT_DIR/i3-config.sh
