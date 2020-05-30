@echo off

rem Turn off most sounds.
rem
rem Verify with c:\windows\system32\MMSYS.CPL

reg add "HKEY_CURRENT_USER\AppEvents\Schemes"                                             /t REG_SZ /d ".None"  /f

rem
rem Pressing tab in cmd.exe when no completion is possible,
rem Default value: C:\Windows\media\Windows Exclamation.wav (Compare with .Default\SystemExclamation)
rem 
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\.Default\.Current"             /t REG_SZ /d ""       /f

reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\AppGPFault\.Current"           /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\Close\.Current"                /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\CriticalBatteryAlarm\.Current" /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Current"        /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceDisconnect\.Current"     /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceFail\.Current"           /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\FaxBeep\.Current"              /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\LowBatteryAlarm\.Current"      /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\MailBeep\.Current"             /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\Maximize\.Current"             /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\MenuCommand\.Current"          /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\MenuPopup\.Current"            /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\Minimize\.Current"             /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\Open\.Current"                 /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\PrintComplete\.Current"        /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\RestoreDown\.Current"          /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\RestoreUp\.Current"            /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemAsterisk\.Current"       /t REG_SZ /d ""       /f

rem
rem Trying to open inexisting registry key in regedit etc.
rem Default value: C:\Windows\media\Windows Exclamation.wav (Compare with .Default\.Default)
rem
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemExclamation\.Current"    /t REG_SZ /d ""       /f

reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemExit\.Current"           /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemHand\.Current"           /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemNotification\.Current"   /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\SystemQuestion\.Current"       /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\WindowsLogoff\.Current"        /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\WindowsLogon\.Current"         /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\WindowsUAC\.Current"           /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\BlockedPopup\.current"         /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\EmptyRecycleBin\.Current"      /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\FaxError\.current"             /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\FaxLineRings\.current"         /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\FaxSent\.current"              /t REG_SZ /d ""       /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\FeedDiscovered\.current"       /t REG_SZ /d ""       /f

rem Another file or directory is clicked in explorer:
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\Navigating\.Current"           /t REG_SZ /d ""       /f

reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\Explorer\SecurityBand\.current"         /t REG_SZ /d ""       /f
