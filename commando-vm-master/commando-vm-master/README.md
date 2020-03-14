                                                                   
       _________                                           .___      
       \_   ___ \  ____   _____   _____ _____    ____    __| _/____  
       /    \  \/ /  _ \ /     \ /     \\__  \  /    \  / __ |/  _ \ 
       \     \___(  <_> )  Y Y  \  Y Y  \/ __ \|   |  \/ /_/ (  <_> )
        \______  /\____/|__|_|  /__|_|  (____  /___|  /\____ |\____/ 
               \/             \/      \/     \/     \/      \/       
                        C O M P L E T E  M A N D I A N T                    
                             O F F E N S I V E   V M                        
                                   Version 1.1                                 
               _____________________________________________________          

                                   Developed by                                
                                   Jake Barteaux                               
                                 Proactive Services  
                                  Blaine Stancill                           
                                    Nhan Huynh   
                     FireEye Labs Advanced Reverse Engineering                            
______________________________________________________________________________ 

<p align="center">
  <img width="300" src="https://github.com/fireeye/commando-vm/blob/master/Commando.png?raw=true" alt="Commando VM"/>
</p>  

Welcome to CommandoVM - a fully customized, Windows-based security distribution for penetration testing and red teaming.



Installation (Install Script)
=============================

Requirements
------------
* Windows 7 Service Pack 1 or Windows 10
* 60 GB Hard Drive
* 2 GB RAM

Instructions
------------
1. Create and configure a new Windows Virtual Machine
  * Ensure VM is updated completely. You may have to check for updates, reboot, and check again until no more remain 
* Take a snapshot of your machine!
* Download and copy `install.ps1` on your newly configured machine. 
* Open PowerShell as an Administrator
* Enable script execution by running the following command:
  * `Set-ExecutionPolicy Unrestricted`
* Finally, execute the installer script as follows:
  * `.\install.ps1`
  * You can also pass your password as an argument: `.\install.ps1 -password <password>`
  
The script will set up the Boxstarter environment and proceed to download and install the Commando VM environment. You will be prompted for the administrator password in order to automate host restarts during installation. If you do not have a password set, hitting enter when prompted will also work.


Installing a new package
========================

Commando VM uses the Chocolatey Windows package manager. It is easy to install a new package. For example, enter the following command as Administrator to deploy Github Desktop on your system:

    cinst github


Staying up to date
==================

Type the following command to update all of the packages to the most recent version:

    cup all


Installed Tools
===============

### Active Directory Tools
- Remote Server Administration Tools (RSAT)
- SQL Server Command Line Utilities
- Sysinternals

### Command & Control
- Covenant
- PoshC2
- WMImplant
- WMIOps

### Developer Tools
- Dep
- Git
- Go
- Java
- Python 2
- Python 3 (default)
- Ruby
- Ruby Devkit
- Visual Studio 2017 Build Tools (Windows 10)
- Visual Studio Code

### Evasion
- CheckPlease
- Demiguise
- DefenderCheck
- DotNetToJScript
- Invoke-CradleCrafter
- Invoke-DOSfuscation
- Invoke-Obfuscation
- Invoke-Phant0m
- Not PowerShell (nps)
- PS>Attack
- PSAmsi
- Pafishmacro
- PowerLessShell
- PowerShdll
- StarFighters

### Exploitation
- ADAPE-Script
- API Monitor
- CrackMapExec
- CrackMapExecWin
- DAMP
- EvilClippy
- Exchange-AD-Privesc
- FuzzySec's PowerShell-Suite
- FuzzySec's Sharp-Suite
- Generate-Macro
- GhostPack
  - Rubeus
  - SafetyKatz
  - Seatbelt
  - SharpDPAPI
  - SharpDump
  - SharpRoast
  - SharpUp
  - SharpWMI
- GoFetch
- Impacket
- Invoke-ACLPwn
- Invoke-DCOM
- Invoke-PSImage
- Invoke-PowerThIEf
- Kali Binaries for Windows
- LuckyStrike
- MetaTwin
- Metasploit
- Mr. Unikod3r's RedTeamPowershellScripts
- NetshHelperBeacon
- Nishang
- Orca
- PSReflect
- PowerLurk
- PowerPriv
- PowerSploit
- PowerUpSQL
- PrivExchange
- Ruler
- SharpExchangePriv
- SharpExec
- SpoolSample
- UACME
- impacket-examples-windows
- vssown

### Information Gathering
- ADACLScanner
- ADExplorer
- ADOffline
- ADRecon
- BloodHound
- dnsrecon
- Get-ReconInfo
- GoWitness
- Nmap
- PowerView
  - Dev branch included
- SharpHound
- SharpView
- SpoolerScanner

### Networking Tools
- Citrix Receiver
- OpenVPN
- Proxycap
- PuTTY
- Telnet
- VMWare Horizon Client
- VMWare vSphere Client
- VNC-Viewer
- WinSCP
- Windump
- Wireshark

### Password Attacks
- ASREPRoast
- CredNinja
- DSInternals
- Get-LAPSPasswords
- Hashcat
- Internal-Monologue
- Inveigh
- Invoke-TheHash
- KeeFarce
- KeeThief
- LAPSToolkit
- MailSniper
- Mimikatz
- Mimikittenz
- RiskySPN
- SessionGopher

### Reverse Engineering
- DNSpy
- Flare-Floss
- ILSpy
- PEview
- Windbg
- x64dbg

### Utilities
- 7zip
- Adobe Reader
- AutoIT
- Cmder
- CyberChef
- Gimp
- Greenshot
- Hashcheck
- Hexchat
- HxD
- Keepass
- MobaXterm
- Mozilla Thunderbird
- Neo4j Community Edition
- Pidgin
- Process Hacker 2
- SQLite DB Browser
- Screentogif
- Shellcode Launcher
- Sublime Text 3
- TortoiseSVN
- VLC Media Player
- Winrar
- yEd Graph Tool

### Vulnerability Analysis
- AD Control Paths
- Egress-Assess
- Grouper2
- NtdsAudit
- zBang

### Web Applications
- Burp Suite
- Fiddler
- Firefox
- OWASP Zap
- Subdomain-Bruteforce

### Wordlists
- FuzzDB
- PayloadsAllTheThings
- SecLists

## Changelog:
1.1 - April 30 2019
- Added AD-Control-Paths https://github.com/ANSSI-FR/AD-control-paths/releases
- Added DefenderCheck https://github.com/matterpreter/DefenderCheck
- Added dnsrecon https://github.com/darkoperator/dnsrecon
- Added EvilClippy https://github.com/outflanknl/EvilClippy
- Added NtdsAudit https://github.com/Dionach/NtdsAudit
- Added SharpExec https://github.com/anthemtotheego/SharpExec
- Added Subdomain-Bruteforce https://github.com/visualbasic6/subdomain-bruteforce
- Fixed issue #18 with PATH 
- Added Commando Logos with transparent backgrounds to $Home\Pictures
- Pinned Firefox to Taskbar
- Fixed misspellings in Readme #42/#43
- Added Ruby and Ruby Devkit #1
- Updated Rubeus package to current version (1.4.2) #31

1.0.2 - April 10 2019
- Added missing 'seclists.fireeye' package to packages.json

1.0.1 - March 31 2019
- Used https instead of http to install boxstarter

Legal Notice
============
<pre>This download configuration script is provided to assist penetration testers
in creating handy and versatile toolboxes for offensive engagements. It
provides a convenient interface for them to obtain a useful set of pentesting Tools directly from their original sources. Installation and use of this script
is subject to the Apache 2.0 License.
 
You as a user of this script must review, accept and comply with the license
terms of each downloaded/installed package listed below. By proceeding with the
installation, you are accepting the license terms of each package, and
acknowledging that your use of each package will be subject to its respective
license terms.

List of package licenses:

http://technet.microsoft.com/en-us/sysinternals/bb469936
https://github.com/stufus/ADOffline/blob/master/LICENCE.md
https://github.com/HarmJ0y/ASREPRoast/blob/master/LICENSE
https://github.com/BloodHoundAD/BloodHound/blob/master/LICENSE.md
https://github.com/Arvanaghi/CheckPlease/blob/master/LICENSE
https://github.com/cobbr/Covenant/blob/master/LICENSE
https://github.com/byt3bl33d3r/CrackMapExec/blob/master/LICENSE
https://github.com/Raikia/CredNinja/blob/master/LICENSE
https://github.com/MichaelGrafnetter/DSInternals/blob/master/LICENSE.md
https://github.com/tyranid/DotNetToJScript/blob/master/LICENSE
https://github.com/FortyNorthSecurity/Egress-Assess/blob/master/LICENSE
https://github.com/cobbr/Elite/blob/master/LICENSE
https://github.com/GoFetchAD/GoFetch/blob/master/LICENSE.md
http://www.gnu.org/licenses/gpl.html
https://github.com/Kevin-Robertson/Inveigh/blob/master/LICENSE.md
https://github.com/danielbohannon/Invoke-CradleCrafter/blob/master/LICENSE
https://github.com/rvrsh3ll/Misc-Powershell-Scripts/blob/master/LICENSE
https://github.com/danielbohannon/Invoke-Obfuscation/blob/master/LICENSE
https://github.com/Kevin-Robertson/Invoke-TheHash/blob/master/LICENSE.md
https://github.com/denandz/KeeFarce/blob/master/LICENSE
https://github.com/HarmJ0y/KeeThief/blob/master/LICENSE
https://github.com/gentilkiwi/mimikatz
https://github.com/nettitude/PoshC2/blob/master/LICENSE
https://github.com/Mr-Un1k0d3r/PowerLessShell/blob/master/LICENSE.md
https://github.com/G0ldenGunSec/PowerPriv/blob/master/LICENSE
https://github.com/p3nt4/PowerShdll/blob/master/LICENSE.md
https://github.com/FuzzySecurity/PowerShell-Suite/blob/master/LICENSE
https://github.com/PowerShellMafia/PowerSploit/blob/master/LICENSE
https://github.com/PowerShellMafia/PowerSploit/blob/master/LICENSE
https://github.com/dirkjanm/PrivExchange/blob/master/LICENSE
https://github.com/Mr-Un1k0d3r/RedTeamPowershellScripts/blob/master/LICENSE.md
https://github.com/cyberark/RiskySPN/blob/master/LICENSE.md
https://github.com/GhostPack/Rubeus/blob/master/LICENSE
https://github.com/GhostPack/SafetyKatz/blob/master/LICENSE
https://github.com/NickeManarin/ScreenToGif/blob/master/LICENSE.txt
https://github.com/GhostPack/Seatbelt
https://github.com/danielmiessler/SecLists/blob/master/LICENSE
https://github.com/Arvanaghi/SessionGopher
https://github.com/GhostPack/SharpDPAPI/blob/master/LICENSE
https://github.com/GhostPack/SharpDump/blob/master/LICENSE
https://github.com/tevora-threat/SharpView/blob/master/LICENSE
https://github.com/GhostPack/SharpRoast/blob/master/LICENSE
https://github.com/GhostPack/SharpUp/blob/master/LICENSE
https://github.com/GhostPack/SharpWMI/blob/master/LICENSE
https://github.com/leechristensen/SpoolSample/blob/master/LICENSE
https://github.com/vletoux/SpoolerScanner/blob/master/LICENSE
http://www.sublimetext.com/eula
https://github.com/HarmJ0y/TrustVisualizer/blob/master/LICENSE
https://github.com/hfiref0x/UACME/blob/master/LICENSE.md
https://github.com/FortyNorthSecurity/WMIOps/blob/master/LICENSE
https://github.com/FortyNorthSecurity/WMImplant/blob/master/LICENSE
http://www.adobe.com/products/eulas/pdfs/Reader10_combined-20100625_1419.pdf
http://www.rohitab.com/apimonitor
http://www.autoitscript.com/autoit3/docs/license.htm
https://portswigger.net/burp
http://www.citrix.com/buy/licensing/agreements.html
https://github.com/cmderdev/cmder/blob/master/LICENSE
https://github.com/nccgroup/demiguise/blob/master/LICENSE.txt
http://www.telerik.com/purchase/license-agreement/fiddler
https://www.mozilla.org/en-US/MPL/2.0/
https://github.com/fireeye/flare-floss
https://github.com/fuzzdb-project/fuzzdb/blob/master/_copyright.txt
https://www.gimp.org/about/
https://www.google.it/intl/en/chrome/browser/privacy/eula_text.html
https://github.com/sensepost/gowitness/blob/master/LICENSE.txt
https://github.com/hashcat/hashcat/blob/master/docs/license.txt
https://www.gnu.org/licenses/gpl-2.0.html
https://mh-nexus.de/en/hxd/license.php
https://github.com/SecureAuthCorp/impacket/blob/master/LICENSE
https://github.com/SecureAuthCorp/impacket/blob/master/LICENSE
https://www.kali.org/about-us/
http://keepass.info/help/v2/license.html
https://github.com/putterpanda/mimikittenz
http://mobaxterm.mobatek.net/license.html
http://neo4j.com/open-source-project/
https://github.com/samratashok/nishang/blob/master/LICENSE
https://svn.nmap.org/nmap/COPYING
https://github.com/Ben0xA/nps/blob/master/LICENSE
https://openvpn.net/index.php/license.html
https://www.microsoft.com/en-us/servicesagreement/
https://github.com/joesecurity/pafishmacro/blob/master/LICENSE
https://hg.pidgin.im/pidgin/main/file/f02ebb71b5e3/COPYING
http://www.proxycap.com/eula.pdf
http://www.chiark.greenend.org.uk/~sgtatham/putty/licence.html
https://support.microsoft.com/en-us/gp/mats_eula
https://raw.githubusercontent.com/sqlitebrowser/sqlitebrowser/master/LICENSE
http://technet.microsoft.com/en-us/sysinternals/bb469936
http://www.mozilla.org/en-US/legal/eula/thunderbird.html
http://www.videolan.org/legal.html
http://www.vmware.com/download/eula/universal_eula.html
https://www.vmware.com/help/legal.html
https://www.realvnc.com/legal/
https://code.visualstudio.com/License
http://go.microsoft.com/fwlink/?LinkID=251960
http://opensource.org/licenses/BSD-3-Clause
https://winscp.net/docs/license
http://www.gnu.org/copyleft/gpl.html
https://github.com/x64dbg/x64dbg/blob/development/LICENSE
https://www.yworks.com/products/yed/license.html
http://www.apache.org/licenses/LICENSE-2.0
https://github.com/Dionach/NtdsAudit/blob/master/LICENSE
https://github.com/ANSSI-FR/AD-control-paths/blob/master/LICENSE.txt

</pre>