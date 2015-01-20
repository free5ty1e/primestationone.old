#!/bin/bash

cd ~
sudo apt-get install git libsdl1.2-dev autoconf libgtk2-dev libxxf86dga-dev libxxf86vm-dev libesd0-dev
git clone github.com/cebix/macemu
cd ~/macemu/BasiliskII/src/Unix
sudo aclocal ; autoconf
sudo autoreconf -I ./m4
sudo ./configure --enable-sdl-video --enable-sdl-audio --disable-vosf --disable-jit-compiler --without-gtk
sudo make install
