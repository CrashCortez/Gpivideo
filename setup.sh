#!/bin/bash
print "Setting up Files and Folders"
wait 5 
clear
cd /opt/retropie/configs
sudo mkdir video
cd video
sudo wget https://raw.githubusercontent.com/CrashCortez/Gpivideo/master/video/emulators.cfg
cd
cd /home/pi/RetroPie/roms
sudo mkdir videos
sudo chmod -R 777 videos
cd
sudo chown -R pi:pi /home/pi/RetroPie/roms
cd /etc/emulationstation
print "Renaming your es_systems.cfg to es_systems.cfg.old"
wait 5
clear
sudo mv es_systems.cfg es_systems.cfg.old
sudo wget https://raw.githubusercontent.com/CrashCortez/Gpivideo/master/es_systems.cfg
cd
print "Installing MPV"
sudo apt-get install mpv
clear
print "GPI will now reboot, dont for get to put some .avi .mp4 .mov files in your videos roms folder."
wait 5
clear
print "See you at the Movies - Crash"
wait 5
sudo reboot
