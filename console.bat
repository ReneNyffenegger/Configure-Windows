@rem
@rem Changing registry with "reg" commands rather than
@rem importing the with "regedit /s console.reg" because
@rem the latter somehow didn't seem to work from the
@rem console...
@rem

@reg add HKCU\console\%%SystemRoot%%_system32_cmd.exe
@reg add HKCU\console\%%SystemRoot%%_system32_cmd.exe /v ScreenColors     /t REG_DWORD /d        15
@reg add HKCU\console\%%SystemRoot%%_system32_cmd.exe /v ScreenBufferSize /t REG_DWORD /d 655294664
@reg add HKCU\console\%%SystemRoot%%_system32_cmd.exe /v WindowSize       /t REG_DWORD /d   5112008
@reg add HKCU\console\%%SystemRoot%%_system32_cmd.exe /v FontSize         /t REG_DWORD /d    655360
@reg add HKCU\console\%%SystemRoot%%_system32_cmd.exe /v FontFamily       /t REG_DWORD /d        54
@reg add HKCU\console\%%SystemRoot%%_system32_cmd.exe /v FontWeight       /t REG_DWORD /d       400
@reg add HKCU\console\%%SystemRoot%%_system32_cmd.exe /v QuickEdit        /t REG_DWORD /d         1
@reg add HKCU\console\%%SystemRoot%%_system32_cmd.exe /v FaceName         /t REG_SZ    /d  "Lucida Console"

