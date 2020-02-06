# Gpivideo
Gpivideo uses mpv as the player, and uses the advanced controller framework for the gpi by [SinisterSpatula](https://github.com/SinisterSpatula/Gpi2). 

Themes for the Gpi made by [KALEL1981](https://github.com/KALEL1981) are already themed for the video "system".

FAQ 
-------
Q: Will this work with any retropie setup?
----
A: Yes, but you will have to setup the controls yourself if you are not using the GPi case. May I suggest using the xboxdrv and setting up a system like SinisterSpatula did.

Q: Will it play  other file formats?
----
A: Yes, but I only tested the 3 I listed. you will have to edit the es_systems.cfg and add the extra extentions. I would check to see if MPV plays the type you want to use.

Q: Even after running the setup my system will not show, even with video files in my rom folder.
----
A: you probally have a modified es_systems.cfg in your /opt/retropie/configs/all/emulationstation folder. If you do eirther run the line below in putty or mannually modify or delete your es_systems.cfg. the location your es_systems.cfg should be in etc/emulationstation.

How to rename and save just in case
```
sudo mv /opt/retropie/configs/all/emulationstation/es_systems.cfg /opt/retropie/configs/all/emulationstation/es_systems.cfg.old
```

# Lets get to it!

Script install
--------
Using putty, after connecting to your Gpi, copy and pate this into you terminal and hit enter.
```
wget https://raw.githubusercontent.com/CrashCortez/Gpivideo/master/setup.sh && sudo chmod a+x setup.sh && sudo ./setup.sh
```
Using fillzilla or WinSCP put some .mp4 , .mov , or .avi files in your newly created /home/pi/RetroPie/roms/videos folder. 

Some testers said that they recieed a permmisions issue, if this happens, on the Gpi it self go into go into RetroPie-Setup -> Configurations/Tools -> resetromdir (the one that reset the ownership of the roms folders). 

Restart Emulationstation or Reboot the gpi and your new "system" will be there. treat your .mp4, .mov, .avi's as if they were roms.

Manual install
-------
```
suod apt-get install mpv
```

Using Filezilla or WinSCP put the folders and files in the folowing locations. You might need root access.

the video folder goes in /opt/retropie/configs

the videos folder goes in /home/pi/RetroPie/roms

the es_systems.cfg goes into /etc/emulationstation or /opt/retropie/configs/all/emulationstation

the system.png is for your theme and note that theme folder needs to be named videos

# Controls
hold select and start to exit 

right qucik skip forward

left quick skip back

up longer skip forward

down longer skip back 

A button pause

B button mute

X chapter next

Y chapter previous

R subtitles toggles on/of

L subtitles language toggle

start volume up

slect volume down

# See you at the Movies.
