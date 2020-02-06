# Gpivideo
Gpivideo uses mpv as the player, and uses the advanced controller framework for the gpi by [SinisterSpatula](https://github.com/SinisterSpatula/Gpi2). 

Themes for the Gpi made by [KALEL1981](https://github.com/KALEL1981) are already themed for the video "system".

FAQ 
-------
Q: Will this work with any retropie setup?
A: Yes, but you will have to setup the controls yourself if you are not using the GPi case. May I suggest using the xboxdrv and setting up a system like SinisterSpatula did.

# Lets get to it!

Script install
--------
```
wget https://raw.githubusercontent.com/CrashCortez/Gpivideo/master/setup.sh && sudo chmod a+x setup.sh && sudo ./setup.sh
```
Put some .mp4 , .mov , or .avi files in your /home/pi/RetroPie/roms/videos folder

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
