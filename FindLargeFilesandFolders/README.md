Find Large Files and Folders Script

Here is the basic flow of the script:

    Scan the drive for total space free and used
    Scan for the largest files
    List the size of all of the folders on the root dir
    Interactive scan of specific sub folders

Notes: As always with PowerShell, you will need to set the execution policy for your environment accordingly. There are variables at the top of the script that can be edited to change various settings like the drive, extensions, file size, amount of files to list (ie top 25) and so on.

Instructions:
1) Save to local machine as findlargefilesandfolders.ps1
1) Open PowerShell as Administrator
1) Set your execution policy in Powershell accordingly
1) Change directory to where the script is and execute it by typing .\findlargefilesandfolders.ps1

Example Output:
```PowerShell
16-Jun-2016-01-01

Total capacity of C: - 80 GB
Total space free on C: - 36 GB / 36,536 MB

Below are the 4 largest files on C:\ from largest to smallest:

Name          : CentOS-7-x86_64-DVD-1511.iso
Size In MB    : 4,129
Path          : C:\Users\Administrator\Downloads
LastWriteTime : 5/2/2016 3:03:48 PM

Name          : smartos-latest.vmwarevm.tar
Size In MB    : 1,910
Path          : C:\Users\Administrator\Downloads\smartos-latest.vmwarevm.tar
LastWriteTime : 3/28/2016 4:31:14 PM

Name          : Fedora-Live-Workstation-x86_64-23-10.iso
Size In MB    : 1,401
Path          : C:\Users\Administrator\Downloads
LastWriteTime : 3/24/2016 5:28:00 PM

Name          : VeeamBackup&Replication_9.0.0.902.iso
Size In MB    : 1,179
Path          : C:\Users\Administrator\Downloads
LastWriteTime : 1/18/2016 1:22:35 PM

Estimated subfolder sizes for C:\ :

Name                   Value   
----                   -----   
C:\Backup              8MB     
C:\bginfo              1MB     
C:\MinecraftServer     34MB    
C:\PerfLogs            0MB     
C:\Program Files       3,110MB
C:\Program Files (x86) 3,098MB
C:\Users               22,475MB
C:\VBRCatalog          0MB     
C:\Windows             17,589MB

Estimated folder sizes for c:\windows :

Name                                Value  
----                                -----  
c:\windows\ADFS                     1MB    
c:\windows\AppCompat                6MB    
c:\windows\apppatch                 11MB   
c:\windows\AppReadiness             0MB    
c:\windows\assembly                 1,793MB
c:\windows\Boot                     29MB   
c:\windows\Downloaded Program Files 0MB    
c:\windows\drivers                  0MB    
c:\windows\en-US                    0MB    
c:\windows\Fonts                    504MB  
c:\windows\Speech                   32MB   
c:\windows\System                   0MB    
c:\windows\System32                 3,096MB
c:\windows\SystemResources          6MB    
c:\windows\SysWOW64                 1,119MB
c:\windows\TAPI                     0MB    
c:\windows\Tasks                    0MB    
c:\windows\Temp                     20MB   
c:\windows\ToastData                0MB    
c:\windows\tracing                  0MB    
c:\windows\twain_32                 0MB       
c:\windows\Vss                      0MB    
c:\windows\Web                      3MB    
c:\windows\WinStore                 2MB    
c:\windows\WinSxS                   7,907MB
```
