#!/bin/bash
set -x

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DOTFILES_ROOT=$(dirname "$SCRIP_DIR")

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh