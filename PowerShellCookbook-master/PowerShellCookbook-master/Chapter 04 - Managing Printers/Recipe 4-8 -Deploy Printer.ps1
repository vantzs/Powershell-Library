﻿# 1. Map a printer by using Printui.dll:

$PrinterPath = "\\PSRV\SGCP1"
rundll32.exe printui.dll,PrintUIEntry /q /in /n$PrinterPath

# 2. Set the default printer by using Printui.dll:
$PrinterPath = "\\PrntSrv\Accounting HP"
rundll32 printui.dll,PrintUIEntry /y /n$PrinterPath

# 3. Delete a printer by using Printui.dll:
$PrinterPath = "\\PrntSrv\Accounting HP"
rundll32.exe printui.dll,PrintUIEntry /q /dn /n$PrinterPath




# 4. Map a printer by using WMI:
$PrinterPath = "\\PrntSrv\Accounting HP"
([wmiclass]"Win32_Printer").AddPrinterConnection($PrinterPath)

# 5. Set the default printer by using WMI:
$PrinterPath = "\\PrntSrv\Accounting HP"
$filter = "DeviceID='$($PrinterPath.Replace('\','\\'))'"
(Get-WmiObject -Class Win32_Printer -Filter $filter).SetDefaultPrinter()

#6. Remove a printer by using WMI:
$PrinterPath = "\\PrntSrv\Accounting HP"
$filter = "DeviceID='$($PrinterPath.Replace('\','\\'))'"
(Get-WmiObject -Class Win32_Printer -Filter $filter).Delete()

#7. Map a printer by using WScript
$PrinterPath = "\\PrntSrv\Accounting HP"
(New-Object -ComObject WScript.Network).AddWindowsPrinterConnection($PrinterPath)

#8. Set the default printer by using WScript:
$PrinterPath = "\\PrntSrv\Accounting HP"
(New-Object -ComObject WScript.Network).
SetDefaultPrinter($PrinterPath)

#9. Remove a printer by using WScript:
$PrinterPath = "\\PrntSrv\Accounting HP"
(New-Object -ComObject WScript.Network).RemovePrinterConnection($PrinterPath



