<#
.SYNOPSIS
Uninstall Applications.
.DESCRIPTION
The script uninstalls an application based on its GUID.
Replace GUID in the script with the actual GUID of the application.
.NOTES
File Name : uninstall_application.ps1
Author    : massili
Requires  : PowerShell V2
.LINK
https://www.github.com/massili
#>
$application1 = Get-WmiObject -Class Win32_Product -namespace "root\cimv2" | Where-Object{$_.IdentifyingNumber -match "{GUID}"}

$application2 = Get-WmiObject -Class Win32_Product -namespace "root\cimv2" | Where-Object{$_.IdentifyingNumber -match "{GUID}"}

$application3 = Get-WmiObject -Class Win32_Product -namespace "root\cimv2" | Where-Object{$_.IdentifyingNumber -match "{GUID}"}

    if($application1 -ne $null)
        {
            (Start-Process -FilePath "msiexec.exe" -ArgumentList "/X {GUID} /QN /L* C:\Windows\Temp\application1.log /norestart" -Wait -Passthru).ExitCode
        }

    if($application2 -ne $null)
        {
            (Start-Process -FilePath "msiexec.exe" -ArgumentList "/X {GUID} /QN /L* C:\Windows\Temp\application2.log /norestart" -Wait -Passthru).ExitCode
        }

    if($application3 -ne $null)
        {
            (Start-Process -FilePath "msiexec.exe" -ArgumentList "/X {GUID} /QN /L* C:\Windows\Temp\application3.log /norestart" -Wait -Passthru).ExitCode
        }
Restart-Computer
