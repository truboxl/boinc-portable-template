:: Set up the current directory as temporary PATH where boinc.exe and
:: boincmgr.exe are located
pushd %~dp0

:: Start BOINC with this directory as working directory
set DIR=appdata

:: Default is 31416
set PORT=31417

start "" boinc.exe --dir %DIR% --gui_rpc_port %PORT% --detach_console --allow_multiple_clients --allow_remote_gui_rpc
