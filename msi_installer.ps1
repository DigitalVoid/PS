<#
.SYNOPSIS
Insallation of MSI packages.
.DESCRIPTION
The script installs MSI packages. Then restarts the machine.
Replace \path\to\*.msi with the location of the MSI.
.NOTES
File Name : msi_installer.ps1
Author    : massili
Requires  : PowerShell V2
.LINK
https://www.github.com/massili
#>

Start-Process "\path\to\msi\application1.msi" -ArgumentList "/QN /norestart" -Wait
Start-Process "\path\to\msi\application2.msi" -ArgumentList "/QN /norestart" -Wait
Restart-Computer
