#!/bin/bash
cowsay -f eyes Configuring first USB stick to be our new root filesystem!  Using /dev/sda1...
df -h
ls /media/usb0
read -p "Press any key to continue or CTRL-C to cancel using /dev/sda1... " -n1 -s

#sudo umount /dev/sda1

