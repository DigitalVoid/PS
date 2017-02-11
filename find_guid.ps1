<#
.SYNOPSIS
Find GUID of installed applications.
.DESCRIPTION
Simple script to find the GUIDs of installed applications and format the output.
.NOTES
File Name : find_guid.ps1
Author    : massili
Requires  : PowerShell V2
.LINK
https://www.github.com/massili
#>

Get-WmiObject Win32_Product | Format-Table IdentifyingNumber, Name, LocalPackage
