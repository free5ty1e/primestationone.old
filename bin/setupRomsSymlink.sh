#!/bin/bash

#Link linkedroms to actual location of roms (USB? SD?)
MAIN_ROMS_LOCATION="/media/usb/RetroPie/roms"
ROMS_SYMLINK_LOCATION="~/linkedroms"
if [ -d "$MAIN_ROMS_LOCATION" ]; then
    if [ -L "$MAIN_ROMS_LOCATION" ]; then
        # It is a symlink!
        # Symbolic link specific commands go here.


    else
        # It's a directory!
        # Directory command goes here.

    fi
else
    # Does not exist!
    ln -s $MAIN_ROMS_LOCATION $ROMS_SYMLINK_LOCATION

fi

#ln -s ~/RetroPie/roms/ ~/linkedroms


