#!/bin/bash

SCRIPT_DIR=$(dirname $(realpath "$0"))

$SCRIPT_DIR/install-scripts/bash-config.sh

$SCRIPT_DIR/install-scripts/yay.sh

$SCRIPT_DIR/install-scripts/tmux-pacman.sh
$SCRIPT_DIR/install-scripts/vim-pacman.sh
$SCRIPT_DIR/install-scripts/zsh-pacman.sh