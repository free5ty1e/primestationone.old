#!/bin/bash

cowsay -f stegosaurus Updating C64 emulators...
pushd ~
sudo ~/RetroPie-Setup/retropie_packages.sh vice remove
rootdir="/opt/retropie"
source "/home/pi/primestationone/lib/helpers.sh"
sudo mkdir -p "$rootdir/emulators"
sudo -rf "$rootdir/emulators/vice-2.4"
sudo mkdir "$rootdir/emulators/vice-2.4"
cp ~/primestationone/vice-2.4.12.tar.gz ~/vice-2.4.tar.gz
tar xzvf ~/vice-2.4.tar.gz -C ~/
sudo cp -rv ~/vice-2.4.12/* "$rootdir/emulators/vice-2.4/"
sudo apt-get -y install vim libice-dev libreadline-dev libsdl1.2-dev libxt-dev libxmu-dev libxaw7-dev libx11-dev
pushd "$rootdir/emulators/vice-2.4"
sudo ./configure --prefix="$rootdir/emulators/vice-2.4/installdir" --enable-sdlui --without-pulse --with-sdlsound -with-x=no
sudo make
popd
setESSystem "C64" "c64" "~/RetroPie/roms/c64" ".crt .CRT .d64 .D64 .g64 .G64 .t64 .T64 .tap .TAP .x64 .X64 .zip .ZIP" "$rootdir/supplementary/runcommand/runcommand.sh 4 \"$rootdir/emulators/vice-2.4/installdir/bin/x64 -sdlbitdepth 16 %ROM%\"" "c64" "c64"
cowsay -f stegosaurus Installing C64 ROMS for various models...
sudo ~/RetroPie-Setup/retropie_packages.sh c64roms
popd