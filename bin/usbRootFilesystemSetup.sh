#!/bin/bash
cowsay -f eyes Configuring first USB stick to be our new root filesystem!  Using /dev/sda1...
df -h
ls /media/usb0

read -p "Press any key to continue -- DO NOT RUN THIS IF YOU ALREADY ARE RUNNING YOUR PI ROOT FROM USB! -- or CTRL-C to cancel using /dev/sda1... " -n1 -s

echo Unmounting USB drive...
sudo umount /dev/sda1

echo Now we need to remove all partitions on the USB drive.
echo List partitions by typing p ENTER
echo Then press d <partition number> ENTER until no partitions remain such as:
echo d 4 ENTER d 3 ENTER d 2 ENTER d ENTER
echo Then press n p ENTER ENTER ENTER w ENTER to write changes...
sudo fdisk /dev/sda1

echo Making EXT4 filesystem on USB drive...
sudo mkfs.ext4 /dev/sda1

echo Check new filesystem...answer yes to any autofix prompts...
sudo e2fsck /dev/sda1

echo Mounting new USB filesystem...
sudo mount /dev/sda1 /media/usb0

echo Checking new storage volumes...
df -h

echo Installing package progressview pv so we can see something happening during the next big operation...
sudo apt-get install -y pv

echo Now actually transferring entire root filesystem to USB drive so we can boot from it...using pv with estimate of 4GB to transfer, so do not be alarmed if the progress does not reach 100 percent...
#sudo dd if=/dev/root of=/dev/sda1 bs=4M
pv --size 4000000000 /dev/root | sudo dd bs=4M of=/dev/sda1

#echo Now expanding filesystem to fill USB drive capacity...
#sudo resize2fs -p /dev/sda1
#df -h

echo Now replacing fstab and boot cmdline with versions that mount the USB as the root filesystem instead of the 2nd partition of the SD card, which we should be able to safely remove after this is complete...
sudo cp -v ~/primestationone/reference/fstabForUsb /etc/fstab
sudo cp -v ~/primestationone/reference/cmdlineForUsb.txt /boot/cmdline.txt

read -p "Press any key to continue rebooting... " -n1 -s
restart
