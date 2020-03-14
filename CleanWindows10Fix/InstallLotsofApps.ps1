## Install Chocolatey
#Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

## Install Lots of Apps
$Packages = 'github-desktop', 'viscosity', 'slack', 'Firefox', 'google-chrome-for-enterprise', 'mobaxterm', 'wsl', 'wsl-ubuntu-1804', 'onlyoffice', 'brave', 'citrix-workspace', 'epicgamelauncher', 'steam', 'discord', 'greenshot', 'joplin', 'keybase', 'heidisql', 'notepadplusplus', 'authy-desktop', 'dashlane', 'dashlane-chrome', 'lastpass', 'lastpass-for-applications', 'ci-cd-assets-vscode', 'terraform', 'foxitreader', 'intellijidea-community', 'zoom'
ForEach ($PackageName in $Packages)
{
    choco install $PackageName -y
}

## Set Time Zone
& C:\Windows\system32\tzutil /s "Eastern Standard Time"

## Enable Remote Desktop
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0

## Open Firewall Remote Desktop
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

## Enable Authentication via RDP
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -name "UserAuthentication" -Value 1

## Rename Computer
$computername = "Mjolnir"
if ($env:computername -ne $computername) {
	Rename-Computer -NewName $computername
}
Restart-Computer