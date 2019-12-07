:: Set up the current directory as temporary PATH where boinc.exe and boincmgr.exe are located
pushd %~dp0

:: Default is localhost
set HOST=localhost

:: Default is 31416
set PORT=31417

:: Remember to set the password other than this here and gui_rpc_auth.cfg
set PASSWORD=boinc

:: --autostart --systray to start minimise
start "" boincmgr.exe --namehost %HOST% --gui_rpc_port %PORT% --password %PASSWORD% --multiple
