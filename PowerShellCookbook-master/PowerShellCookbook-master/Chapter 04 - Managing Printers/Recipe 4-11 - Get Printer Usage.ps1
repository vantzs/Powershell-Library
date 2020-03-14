﻿# 1. Run WevtUtil to turn on printer monitoring.
# wevtutil.exe sl "Microsoft-Windows-PrintService/Operational" /enabled:true

# 2. Define a function

 Function Get-PrinterUsage {
[cmdletbinding()]
Param()

# 2.1 Get events from the print server event log
$Dps = Get-WinEvent -LogName Microsoft-Windows-PrintService/Operational |
             Where-Object ID -eq 307 

Foreach ($Dp in $Dps) {

# 2.2 Ceate a hash table3 with an event log  record
   $Document          = [ordered] @{}

# 2.3 Populate the hash table with properties from the 
# Event log entry
   $Document.Id       = $dp.Properties[0].value
   $Document.Type     = $dp.Properties[1].value
   $Document.User     = $dp.Properties[2].value
   $Document.Computer = $dp.Properties[3].value
   $document.Printer  = $dp.Properties[4].value
   $document.Port     = $dp.Properties[5].value
   $document.Bytes    = $dp.Properties[6].value
   $document.Pages    = $dp.Properties[7].value

# 2.4 Create an object for this printer usage entry
 $UEntry = New-Object PSObject -Property $document 

# 2.5 And give it a more relecant tyhpe name
 $UEntry.pstypenames.clear()
 $UEntry.pstypenames.add("Packt.PrintUsage")

# 2.6 Output the entry
 $UEntry
} # End of foreach

} # End of function

# 3.0 Set and use an alias to get printer usage
Set-Alias -Name Gpru  -Value Get-PrinterUsage
Gpru | Format-Table