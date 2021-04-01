##########
# Win 10 / Server 2016 / Server 2019 Initial Setup Script - Tweak library
# Author: Michael Urspringer <michael@urspringer.de>
# Version: v1.0 / 01.04.2021
##########

#  Show all drive letters before drive label
Function ShowAllDriveLettersBeforeDriveLabel {
	Write-Output "Show all drive letters before drive label..."
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowDriveLettersFirst" -Type DWord -Value 4
}

#  (Default) Show all drive letters after drive label
Function ShowAllDriveLettersAfterDriveLabel {
	Write-Output "Show all drive letters after drive label..."
	Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowDriveLettersFirst" -ErrorAction SilentlyContinue
}

# (Default) Disable Network protection
Function DisableNetworkProtection {
	Write-Output "Disable Network protection..."
	Set-MpPreference -EnableNetworkProtection Disabled
}

# Enable Network protection
Function EnableNetworkProtection {
	Write-Output "Enable Network protection..."
	Set-MpPreference -EnableNetworkProtection Enabled
}

