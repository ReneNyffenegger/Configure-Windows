@rem Run as administrator (regedit seems to require it)
@rem
@rem
@rem Note: the /s flag in regedit is for �silent�
@rem
@rem      Set size, color, copy/paste ability etc
@rem      for cmd.exe:
@regedit /s console.reg

@call registry.explorer.bat

@call environment.variables.bat

@call sound.bat
