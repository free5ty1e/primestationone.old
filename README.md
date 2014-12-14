primestationone
===============

PrimeStation One: A Set of Scripts and Tools For a Ready-To-Go RetroPie with PS3 controls set up and wifi and bluetooth and PS3 bluetooth


Basic Usage:
    Install RetroPie (https://github.com/petrockblog/RetroPie-Setup) either via writing an SD card image downloaded from their site or building from sources (recommended, but this takes 24-36 hours!).  Once you can type "emulationstation" from the command line and get into the basic EmulationStation interface and see one or two entries, you can continue with the PrimeStation One overlay scripts.

    Set up an SSH key on your remote computer / laptop that you will be using to interface with the Pi, so that you can ssh and scp into the Pi without typing a password every time.

    Enter the PrimeStationOne folder you cloned from GitHub, and type:
        ./primeStationOneCopyFilesToPi 192.168.1.134

    Once this finishes copying files to your Pi, SSH into the Pi:
        ssh pi@192.168.1.134
    
    In the Pi, type the following to initiate the installation of all the goodness:
        bin/primeStationOneSetup

    Once this script completes, you should end up in the RetroPie-Setup/retropie_setup.sh menu, and you can just exit at this point if you'd like and restart (as your Pi may or may not have updated its firmware in the process as part of the self updating stuffs).  Note:  You can now type "restart" to restart the thing or "off" to turn off the thing.

    At this point, there is a menu entry in the EmulationStation Settings menu page (script page) to update_primestation_one.sh, which you can also type in a command terminal.  It will perform a git pull to retrieve the latest verison of the setup script and supporting files, and run the bin/primeStationOneSetup again to ensure the latest things are thinged for your maximum thingness.

    The ~/splashscreen.png file can also be shown by typing display_splashscreen_quick_reference.sh, or selecting this script from the Settings page in Emulationstation.  This also shows the layout of the PS3 controller for the auxiliary and management functions of RetroArch for most emulators (those with libretocores, of course).

So far mainly tested with the RetroPie image v2.3 downloaded from their site and written to SD card using a dd command.  Not sure if the very latest RetroPie built from sources will work correctly with these files, but we plan to test it soon!


FUTURE:
    Menu system to handle running services, both for the current session and for all future sessions (services enabled / disabled upon startup).  The PrimeStation One can do a lot, and sometimes its nice to turn some unused features off!



Comments / suggestions / contributions to the code welcome!  

Twitter: @ChrisPaiano
