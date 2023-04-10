<#
.SYNOPSIS
    Restarting Discord.

.DESCRIPTION
     Every now and then Discord does not recognize my sound devices. Only a restart of Discord helps. Tired of manually restarting Discord, I wrote a simple script to restart Discord.

.PARAMETER Param1
    No parameters yet.

.EXAMPLE
    Example syntax for running the script or function
    PS C:\> restart-discord.ps1
.LINK
    https://github.com/nopantsfriday/restart_discord

.NOTES
    Filename: restart-discord.ps1
    Author: https://github.com/nopantsfriday
    Create date: 2023-04-10
    Version 1.0 - Initial release
#>

$discord_running = Get-Process -name discord -ErrorAction SilentlyContinue
if ($discord_running) {
    Write-Host "Stopping Discord" -ForegroundColor Yellow
    Stop-Process -Name Discord
    Write-Host "Waiting for Discord to shut down" -ForegroundColor Yellow
    Wait-Process -Name Discord
    Write-Host "Starting Discord" -ForegroundColor Cyan
    Start-Process -FilePath "Update.exe" -ArgumentList "--processStart Discord.exe" -WorkingDirectory $env:LOCALAPPDATA\Discord
}

if (!$discord_running) {
    Write-Host "Starting Discord" -ForegroundColor Cyan
    Start-Process -FilePath "Update.exe" -ArgumentList "--processStart Discord.exe" -WorkingDirectory $env:LOCALAPPDATA\Discord
}
function keypress_wait {
    param (
        [int]$seconds = 10
    )
    $loops = $seconds * 10
    Write-Host "Press any key to exit. (Window will automatically close in $seconds seconds.)" -ForegroundColor Yellow
    for ($i = 0; $i -le $loops; $i++) {
        if ([Console]::KeyAvailable) { break; }
        Start-Sleep -Milliseconds 100
    }
    if ([Console]::KeyAvailable) { return [Console]::ReadKey($true); }
    else { return $null ; }
}
keypress_wait