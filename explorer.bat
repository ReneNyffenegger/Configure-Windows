@rem Disable autoplay
@rem ----------------
@reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" /v DisableAutoplay     /t REG_DWORD /d 1 /f

@rem Show file extensions
@rem --------------------
@reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"         /v HideFileExt          /t REG_DWORD  /d 0 /f
                                                                                                                               
@rem Show hidden files (1: Show, 2: Don't show)                                                                                
@rem ------------------------------------------                                                                                
@reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"         /v Hidden               /t REG_DWORD  /d 1 /f
                                                                                                                               
@rem Really, show ALL hidden Files                                                                                             
@rem -----------------------------------                                                                                       
@reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"         /v SuperHidden          /t REG_DWORD  /d 0 /f 
@reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"         /v ShowSuperHidde       /t REG_DWORD  /d 1 /f 

@rem Don't change case in file names
@rem Commented as it seems to be ok in Windows 7 anyway.
@rem @reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"    /v DontPrettyPath       /t REG_DWORD  /d 1 /f

@rem Don't ask to search the internet for the correct program when opening a file with an unknown extension
@rem ------------------------------------------------------------------------------------------------------
@reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"         /v NoInternetOpenWith   /t REG_DWORD  /d 1 /f

@rem What difference does this value make?
@reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"         /v NoSimpleStartMenu    /t REG_DWORD  /d 1 /f
