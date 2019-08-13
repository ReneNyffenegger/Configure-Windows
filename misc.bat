@rem Time in milliseconds it takes to open a cascading menu in the start menu
@rem ------------------------------------------------------------------------
@reg add "HKEY_CURRENT_USER\Control Panel\Desktop"   /v MenuShowDelay /t REG_DWORD /d 50 /f
