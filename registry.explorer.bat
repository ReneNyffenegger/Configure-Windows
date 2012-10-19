@rem Disable autoplay
@rem ----------------
@reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" /t REG_DWORD /v DisableAutoplay /d 1 /f

@rem Show file extensions
@rem --------------------
@reg add  "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v HideFileExt /d 0 /f

@rem Show hidden files (1: Show, 2: Don't show)
@rem ------------------------------------------
@reg add  "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v Hidden /d 1 /f

@rem Really, show ALL hidden Files
@rem -----------------------------------
@reg add  "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v SuperHidden     /d 0 /f 
@reg add  "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /t REG_DWORD /v ShowSuperHidden /d 1 /f 


