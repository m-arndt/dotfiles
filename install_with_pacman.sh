#!/bin/bash
set -x

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DOTFILES_ROOT=$SCRIP_DIR

$SCRIPT_DIR/install-scripts/bash-config.sh

$SCRIPT_DIR/install-scripts/yay.sh

$SCRIPT_DIR/install-scripts/tmux-pacman.sh
$SCRIPT_DIR/install-scripts/vim-pacman.sh
$SCRIPT_DIR/install-scripts/zsh-pacman.sh