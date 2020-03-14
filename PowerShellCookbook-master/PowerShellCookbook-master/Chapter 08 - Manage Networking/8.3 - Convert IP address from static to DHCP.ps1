﻿# Recipe 8.3 - Converting IP address from static to DHCP

# 1.Get the existing IP address information
$IPType = 'IPv4'
$Adapter = Get-NetAdapter |
    Where-Object Status -eq 'up'
$Interface = $Adapter |
    Get-NetIPInterface -AddressFamily $IPType
$IfIndex = $Interface.ifIndex
$IfAlias = $Interface.Interfacealias
Write-Output -InputObject $IFAlias
Get-NetIPAddress -InterfaceIndex $Ifindex -AddressFamily $IPType

# 2. Set the interface to get its address from DHCP:
Set-NetIPInterface -InterfaceIndex $IfIndex -DHCP Enabled

# 3. Test the results:
Get-NetIPAddress -InterfaceIndex $Ifindex -AddressFamily $IPType