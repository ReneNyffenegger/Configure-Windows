@rem Turn off spell checking in internet explorer and applications hosting the web browser control (WebOC).
@rem Add name of application under key FEATURE_SPELLCHECKING.
@rem
@rem @reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Intenet Explorer\MAIN\FeatureControl\FEATURE_SPELLCHECKING" /v iexplore.exe /t REG_DWORD /d 0 /f
     @reg add  "HKEY_CURRENT_USER\Software\Microsoft\Intenet Explorer\MAIN\FeatureControl\FEATURE_SPELLCHECKING" /v iexplore.exe /t REG_DWORD /d 0 /f
