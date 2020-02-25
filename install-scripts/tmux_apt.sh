#!/bin/bash
set -x

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DOTFILES_ROOT=$(dirname "$SCRIP_DIR")

sudo apt update
sudo apt install tmux

$SCRIPT_DIR/tmux-config.sh
