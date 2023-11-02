# ConfigWALL
Sonicwall firewall configuration tool

## Purpose

This tool is supposed to be used to quickly get a new and out-of-the-box Sonicwall Firewall (TZ 370, TZ 470, etc.) set up with a base level of configuration and security. 

There is an included help.html document that can be accessed from the tools main menu or just opened directly. 

### Creating an EXE

Run.ps1 can be converted into a .exe file with the PS2EXE tool if you want to go that route. Then you can place this tool into C:\Program Files\ConfigWALL and create a shortcut on the desktop to that new executable.

Whether or not you create the executable, you will need to first run **run.ps1** because it installs Posh-SSH which is used to apply the configuration to the device.
