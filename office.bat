@rem
@rem                 http://superuser.com/a/633281/16610
@rem

@rem Don't correct TWo INitial CApitals
@reg add HKCU\software\microsoft\office\14.0\word\options\assist /v fTwoInitialCaps_24_1 /t REG_DWORD  /d 0 /f

@rem don't capitalize first letter of sentence
@reg add HKCU\software\microsoft\office\14.0\word\options\assist /v fInitialCap_32_1     /t REG_DWORD  /d 0 /f

@rem Don't capitalize names of days
@reg add HKCU\software\microsoft\office\14.0\word\options\assist /v fCapDayNames_48_1    /t REG_DWORD  /d 0 /f

@rem Don't correct accidental usage of cAPS LOCK key
@reg add HKCU\software\microsoft\office\14.0\word\options\assist /v fCapsLock_40_1       /t REG_DWORD  /d 0 /f

@rem Don't replace text as you type
@reg add HKCU\software\microsoft\office\14.0\word\options\assist /v fCorrectTyping_16_1  /t REG_DWORD  /d 0 /f

@rem Don't correct keyboard setting
@reg add HKCU\software\microsoft\office\14.0\word\options\assist /v fCorrectkeyboard_64_1 /t REG_DWORD  /d 0 /f

@rem Don't capitalize first letters of table cells
@reg add HKCU\software\microsoft\office\14.0\word\options\assist /v fCapTable_232_1       /t REG_DWORD  /d 0 /f
