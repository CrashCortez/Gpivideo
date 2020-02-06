#!/bin/bash
print "Setting up Files and Folders"
cd /opt/retropie/configs
sudo mkdir video
sudo wget https://github.com/CrashCortez/Gpivideo/blob/master/video/emulators.cfg
cd
cd /pi/RetroPie/roms
mkdir videos
cd
cd /etc/emulationstation
sudo cp es_systems.cfg es_systems.cfg.old
sudo weget https://github.com/CrashCortez/Gpivideo/blob/master/es_systems.cfg
cd
print "Installing MPV"
sudo apt-get install mpv
sudo reboot
