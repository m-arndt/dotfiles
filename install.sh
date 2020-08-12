#!/bin/bash

export SOURCE=${BASH_SOURCE[0]:-$0}
export DOTFILES_ROOT=$(cd -P "$(dirname "$SOURCE")" > /dev/null 2>&1 && pwd)

PACMAN_CMD=$(type -p pacman)
APT_GET_CMD=$(type -p apt-get)



if [[ ! -z $PACMAN_CMD ]]; then
    export PACKAGE_MANAGER="pacman"
elif [[ ! -z $APT_GET_CMD ]]; then
    export PACKAGE_MANAGER="apt"
else
    echo "error cannot identify package manager"
    exit 1;
fi

for item in $DOTFILES_ROOT/install/*
do
    printf "\n\n\n\n\n"
    basename=$(basename $item)
    read -p "Install ${basename%".sh"}? [yn] " -n 1 -r
    echo # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        if [[ -d $item ]]
        then
            $item/PACKAGE_MANAGER.sh
            $item/config.sh
        else
            $item
        fi
    fi
done