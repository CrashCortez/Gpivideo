# Gpivideo
Launch videos right from the main menu of Eulationstation, and allows you to treat video files as roms.

Gpivideo uses mpv as the player, and uses the advanced controller framework for the gpi by [SinisterSpatula](https://github.com/SinisterSpatula/Gpi2). 

Themes for the Gpi made by [KALEL1981](https://github.com/KALEL1981) are already themed for the video "system".

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

Add the following you es_systems.cfg
```
  <system>
    <name>videos</name>
    <fullname>Videos</fullname>
    <path>/home/pi/RetroPie/roms/videos</path>
    <extension>.avi .AVI .mp4 .MP4 .mov .MOV</extension>
    <command>/opt/retropie/supplementary/runcommand/runcommand.sh 0 _SYS_ video %ROM%</command>
    <platform>videos</platform>
    <theme>videos</theme>
  </system>
```
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


FAQ 
-------
Q: Does this work on the CM3 or the Pi3a+ cart mods?
----
A: I have had it tested on the CM3 version worked well with the extra power, I have not had it tested on the pi3a+ mod. 

Q: Will this work with any retropie setup?
----
A: Yes, but you will have to setup the controls yourself if you are not using the GPi case. May I suggest using the [xboxdrv](https://github.com/RetroPie/RetroPie-Setup/wiki/Universal-Controller-Calibration-&-Mapping-Using-xboxdrv) and setting up a system like SinisterSpatula did, I have started over at [RetroMPV](https://github.com/CrashCortez/RetroMPV) if you want to help with controller mappings.

Q: Will it play  other file formats?
----
A: Yes, but I only tested the 3 I listed. you will have to edit the es_systems.cfg and add the extra extentions. I would check to see if MPV plays the type you want to use.

Q: Even after running the setup my system will not show, even with video files in my rom folder.
----
A: you probally have a modified es_systems.cfg in your /opt/retropie/configs/all/emulationstation folder. If you do eirther run the line below in putty or mannually modify or delete your es_systems.cfg. The location of your es_systems.cfg should be in etc/emulationstation.

How to rename and save just in case
```
sudo mv /opt/retropie/configs/all/emulationstation/es_systems.cfg /opt/retropie/configs/all/emulationstation/es_systems.cfg.old
```
the es_systems.cfg goes into /etc/emulationstation or /opt/retropie/configs/all/emulationstation

Or manually add the following your es_systems.cfg
```
  <system>
    <name>videos</name>
    <fullname>Videos</fullname>
    <path>/home/pi/RetroPie/roms/videos</path>
    <extension>.avi .AVI .mp4 .MP4 .mov .MOV</extension>
    <command>/opt/retropie/supplementary/runcommand/runcommand.sh 0 _SYS_ video %ROM%</command>
    <platform>videos</platform>
    <theme>videos</theme>
  </system>
```
# See you at the Movies.

| [YouTube](https://www.youtube.com/channel/UCwnTzGTRsNpen-2Nz38yGAQ) | [Facebook](https://www.facebook.com/crash.cortez.75) | [Twitter](https://twitter.com/CrashGaming14) |
| --- | --- | --- |
