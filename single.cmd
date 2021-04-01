REM Admin
@powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Win10.ps1" -include "%~dp0Win10.psm1"  -include "%~dp0urs.psm1" RequireAdmin ShowAllDriveLettersBeforeDriveLabel EnableNetworkProtection WaitForKey 

REM Non-Admin
REM @powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Win10.ps1" -include "%~dp0Win10.psm1"  -include "%~dp0urs.psm1" XXXXX WaitForKey 