#!/bin/bash
cd ~/primestationone
echo Updating latest PrimeStationOne files from git repo...
git pull
bin/installPrimeStationOneFiles
echo Updating latest RetroPie-Setup files from git repo...
cd ~/RetroPie-Setup
git pull
cd ~