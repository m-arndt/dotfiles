#!/bin/sh

bl_device=/sys/class/backlight/radeon_bl0/brightness
echo $(($(cat $bl_device)-5)) | sudo tee $bl_device

