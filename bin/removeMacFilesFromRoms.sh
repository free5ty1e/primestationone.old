#!/bin/bash
sudo find /home/pi/linkedroms/ -name \._* -type f -print0 | xargs -0 sudo rm -f
