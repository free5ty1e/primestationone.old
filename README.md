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


So far mainly tested with the RetroPie image v2.3 downloaded from their site and written to SD card using a dd command.  Not sure if the very latest RetroPie built from sources will work correctly with these files, but we plan to test it soon!


FUTURE:
    Menu system to handle running services, both for the current session and for all future sessions (services enabled / disabled upon startup).  The PrimeStation One can do a lot, and sometimes its nice to turn some unused features off!



Comments / suggestions / contributions to the code welcome!  

Twitter: @ChrisPaiano
