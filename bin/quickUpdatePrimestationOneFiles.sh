#!/bin/bash
cd ~/primestationone
echo Updating latest PrimeStationOne files from git repo...
git pull
echo Installing PrimeStationOne files to their proper locations....
bin/installPrimeStationOneFiles
echo Updating latest RetroPie-Setup files from git repo...
cd ~/RetroPie-Setup
git pull
cd ~