#!/bin/bash

#$(dirname "$SCRIPT")/installzsh.sh

apt install byobu

ln -v -b -s $(dirname "$SCRIPT")/Config/.byobu ~

