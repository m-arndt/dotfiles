#!/bin/bash

#$(dirname "$SCRIPT")/installzsh.sh

sudo apt install byobu

ln -v -b -s $(dirname "$SCRIPT")/Config/.byobu ~

