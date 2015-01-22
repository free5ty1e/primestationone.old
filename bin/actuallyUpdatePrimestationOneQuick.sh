#!/bin/bash
cowsay -f stimpy Quick-updating the PrimeStation One!
cd ~/primestationone
echo Installing PrimeStationOne files to their proper locations....
bin/installPrimeStationOneFiles
echo Ensuring all required apt packages are installed...
installAptPackages
echo Updating latest RetroPie-Setup files from git repo...
cd ~/RetroPie-Setup
git pull
cd ~

echo =====================> Launching mplayer config 4 pi script...
mplayerConfigForPi

echo =====================> Installing system status page auto updater cronjob...
installCronUpdateForSysStatusHomepage

echo =====================> Installing PrimeStation One onReboot autoupdater cronjob...
installCronRebootAutoQuickUpdatePrimeStationOne