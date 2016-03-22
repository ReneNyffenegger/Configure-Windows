
@rem
@rem Needs Admin privileges
@rem
@rem assoc .pl=PerlScript
@rem ftype PerlScript=perl.exe %1 %*
@rem


@reg add HKCU\Software\Classes\.pl      /t REG_SZ /d PerlScript /f

@rem
@rem  Note
@rem    If there are multiple perls in %PATH%, the following
@rem    construct will find the "last" perl executable, not the first.
@rem
@for /f "usebackq" %%a in (`where perl.exe`) do @set perl_location=%%a

@aeg add HKCU\Software\Classes\PerlScript\shell\open\command /t REG_SZ /d "%perl_location% %%1 %%*" /f
