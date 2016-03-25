@rem Run as administrator (regedit seems to require it)
@rem
@rem
@rem Note: the /s flag in regedit is for «silent»
@rem
@rem      Set size, color, copy/paste ability etc
@rem      for cmd.exe:

@regedit /s console.reg

@call explorer.bat

@call environment.variables.bat

@call sound.bat

@call assoc_ftype_perl.bat

@call office.bat

@call misc.bat
