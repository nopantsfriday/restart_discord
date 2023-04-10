[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://raw.githubusercontent.com/nopantsfriday/restart_discord/main/LICENSE)
<br>Feel free to use, copy, fork, modify, merge, publish or distribute the script and/or parts of the script.
# About
Every now and then Discord does not recognize my sound devices. Only a restart of Discord helps. Tired of manually restarting Discord, I wrote a simple script to restart Discord.

# Description
 The script kills running processes of ```discord.exe``` and restarts it by using Discord's updater ```Update.exe -ArgumentList --processStart Discord.exe -WorkingDirectory $env:LOCALAPPDATA\Discord```.
# Installation and usage

1. Download [restart-discord.ps1](https://github.com/nopantsfriday/restart_steam_client/blob/main/restart-discord.ps1)

2. Right click ```Run with PowerShell```
