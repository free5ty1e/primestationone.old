#!/bin/bash

cowsay -f mech-and-cow Updating RetroPie packages specific to the PrimeStation One...
cowsay -f elephant Updating the LinApple Apple 2 emulator...
sudo ~/RetroPie-Setup/retropie_packages.sh linapple
cowsay -f elephant-in-snake Removing and reinstalling SDL 2...
sudo ~/RetroPie-Setup/retropie_packages.sh sdl remove
sudo ~/RetroPie-Setup/retropie_packages.sh sdl
cowsay -f stegosaurus Updating mupen64plus N64 emulator...
sudo ~/RetroPie-Setup/retropie_packages.sh mupen64rpi
sudo ~/RetroPie-Setup/retropie_packages.sh mupen64plus
cowsay -f stegosaurus Updating SNES emulators...
sudo ~/RetroPie-Setup/retropie_packages.sh pisnes
sudo ~/RetroPie-Setup/retropie_packages.sh snes9x
sudo ~/RetroPie-Setup/retropie_packages.sh armsnes
sudo ~/RetroPie-Setup/retropie_packages.sh pocketsnes
cowsay -f stegosaurus Updating DOS emulators...
sudo ~/RetroPie-Setup/retropie_packages.sh rpix86
sudo ~/RetroPie-Setup/retropie_packages.sh dosbox
sudo ~/RetroPie-Setup/retropie_packages.sh fastdosbox
cowsay -f stegosaurus Updating Atari emulators...
sudo ~/RetroPie-Setup/retropie_packages.sh hatari
cowsay -f stegosaurus Updating Amiga emulators...
sudo ~/RetroPie-Setup/retropie_packages.sh uae4all
cowsay -f stegosaurus Updating PSX emulators...
sudo ~/RetroPie-Setup/retropie_packages.sh psxlibreto
cowsay -f stegosaurus Updating Genesis emulators...
sudo ~/RetroPie-Setup/retropie_packages.sh dgen
sudo ~/RetroPie-Setup/retropie_packages.sh picodrive
cowsay -f stegosaurus Updating Intellivision emulators...
sudo ~/RetroPie-Setup/retropie_packages.sh jzintv
cowsay -f stegosaurus Updating Minecraft...
sudo ~/RetroPie-Setup/retropie_packages.sh minecraft

#Currently breaks C64 emulator and doesn't build the replacement one yet
#installC64emulator.sh

cowsay -f stegosaurus Updating RetroArch...
sudo ~/RetroPie-Setup/retropie_packages.sh retroarch
cowsay -f stegosaurus Updating EmulationStation...
sudo ~/RetroPie-Setup/retropie_packages.sh emulationstation
