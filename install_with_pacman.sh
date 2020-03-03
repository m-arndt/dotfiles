#!/bin/bash
set -x

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DOTFILES_ROOT=$SCRIP_DIR

$SCRIPT_DIR/install-scripts/bash-config.sh

$SCRIPT_DIR/install-scripts/yay.sh

$SCRIPT_DIR/install-scripts/tmux_pacman.sh
$SCRIPT_DIR/install-scripts/vim_pacman.sh
$SCRIPT_DIR/install-scripts/zsh_pacman.sh