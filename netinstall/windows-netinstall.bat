:: TODO automatically find boinc*.exe setup in current directory to begin extraction
:: For now, drag and drop boinc*.exe setup to this script to start network install mode
cmd /min /c "set __COMPAT_LAYER=RUNASINVOKER && start "" %* /V /a"
