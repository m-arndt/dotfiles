#!/bin/bash

SCRIPT_DIR=$(dirname $(realpath "$0"))

$SCRIPT_DIR/install-scripts/bash-config.sh

$SCRIPT_DIR/install-scripts/tmux_apt.sh
$SCRIPT_DIR/install-scripts/vim_apt.sh
$SCRIPT_DIR/install-scripts/zsh_apt.sh