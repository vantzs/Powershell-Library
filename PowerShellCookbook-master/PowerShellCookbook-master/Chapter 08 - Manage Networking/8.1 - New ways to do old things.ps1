﻿# Recipe 8.1 - New ways to do old things

# 1. Ipconfig vs new cmdlets

# 1. Ipconfig vs new cmdlets

# Two variations on the old way
ipconfig.exe
ipconfig.exe /all

# The new Way
Get-NetIPConfiguration

# Related cmdlets - but not for the book...
Get-NetIPInterface
Get-NetAdapter

# 2. Pinging a computer
#    RUN THIS FROM SRV1...

# The old way
Ping DC1.Reskit.Org -4

# The New way
Test-NetConnection DC1.Reskit.Org

# And some new things Ping does not really do!

Test-NetConnection DC1.Reskit.Org -port 389 -InformationLevel Detailed

Test-NetConnection SRV2 -CommonTCPPort SMB


# 3. Sharing folders run from DC1

# The old way to use a shared folder
net use X:  \\Srv1\c$

# The new way using  an SMB  cmdlet
New-SMBMapping -LocalPath 'Y:' -RemotePath \\Srv1\c$

# See what is shared the old way:
net use

# And the new way
Get-SMBMapping

# 4. - sharing a folder

# Now share the old way
net share foo=c:\foo
# and the new way
New-SmbShare -Path C:\foo -Name Foo2
# And see what has been shared the old way
net share
# and the new way
Get-SmbShare

# 5. Getting DNS Configuration
# The Old way to see the DNS Client Cache
ipconfig /displaydns
# Vs
Get-DnsClientCache

# 6. Clear the dnsclient client cache the old way
Ipconfig /flushdns
# Vs the new way
Clear-DnsClientCache


# 5. DNS Lookups
Nslookup foo.bar
Resolve-DnsName -Name Foo.bar -Type ALL
#

<# undo
Get-SmbMapping x: | Remove-SmbMapping -force
Get-SmbMapping y: | Remove-SmbMapping -confirm:$false
Get-SMBSHARE FOO* | Remove-SMBShare
#>
