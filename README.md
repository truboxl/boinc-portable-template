# BOINC Portable Template

A collection of scripts that can easily set up multiple BOINC clients in a portable way, fast.

## How To

### Extract BOINC binaries from installer (Windows)

1. Download BOINC installer (without Virtualbox) from https://boinc.berkeley.edu/download.php into `netinstall` folder
2. Drag and drop the `boinc_******_windows_x86_64.exe` to `windows-netinstall.bat`
3. Ignore the error and proceed
4. Choose the `netinstall\temp1` folder, it should extract `BOINC.msi` and proceeds netinstall mode
5. Choose the `netinstall\temp2` folder for network location folder
6. Ignore the error and finish "installation"
7. The binaries now live in `netinstall\temp2\Program Files 64\BOINC`

### BOINC Portable (Windows)

1. Copy all the contents in `netinstall\temp2\Program Files 64\BOINC` to `portable` folder
2. Copy all the files with `windows-` prefix from `scripts` folder to `portable` folder
3. Copy `appdata` folder into `portable` folder
4. The `portable` folder is ready to be deployed / copied to a USB stick
5. **Remember to change the password in `portable\appdata\gui_rpc_auth.cfg` and `portable\windows-applauncher-31417-manager.bat`**

### BOINC Portable (Linux)

Please read `scripts/linux-applauncher-31417-client.sh` for more information. Then follow steps 2-5 in the Windows guide above with `linux-` prefix, `.sh` extension, and `/` instead.

(Optional) Disable BOINC service from running upon next login using `systemctl disable boinc-client`

## Starting BOINC Portable

1. **Please check the scripts content before running the scripts! Edit them to suit your needs.**
1. Run script with `-applauncher-31417-client` suffix to start client in their respective OS.
3. Run script with `-applauncher-31417-manager` suffix to start manager in their respective OS. (optional after first config)

## FAQ

1. What is `-31417-` doing in the script names?

   To identify the scripts that launch BOINC using port 31417, nothing particular special. To actually change the port, edit the scripts.

2. What does `windows-registry-clear.reg` do?

   Erases registry `HKEY_CURRENT_USER\Software\Space Sciences Laboratory, U.C. Berkeley` that mostly responsible for BOINC settings

   *\*\*Useful in resetting BOINC manager in Wine\*\**

3. What does `windows-shortcut-startup.bat` do?

   Allow user to access to Start Up folder. Add shortcuts of the scripts to the Start Up folder to allow BOINC to start at next Windows login as if it was done like using installer. Close but not quite.

4. Can I use the same `appdata` folder on different OS, GPU etc.?

   **Do not do such a thing! You will end up with rejected tasks anyway!**

   Make a new folder instead.

5. Benefits of doing exactly all of this?

   * Does not mess with [Registry](https://github.com/BOINC/boinc/issues/824) (Windows)
   * Easy deployment of portable BOINC on a USB stick (Windows)
   * Easy migration of BOINC data (format PC, etc.)
   * Not trusting 3rd party BOINC Portable builds, here are just user readable/editable scripts
   * Easy customization of configuration for running BOINC (multiple clients etc.)

6. Disadvatages of doing all of this?

   * **UNSUPPORTED SET UP** (don't expect official support from here on out)
   * Messing with computation result due to different configuration (OS, libraries, CPU, GPU, drivers etc.)
   * Screensaver does not work (deprecated in Windows 10 1709 anyway)
   * 3rd party apps wont work (distantly remembers a core pinning app for BOINC, snake oil or not)

7. Can I ... ?

   MIT License-d so just do whatever. It's a mere concept rather than actually solving the problem.

## TODO

1. Long term goal is to truly automate all the stuff, and output to a single directory that can copied to a USB stick and run it from there.

2. ACTUAL long term goal is not do any of this at all. BOINC should have the option for ZIP/TAR like binary distribution like the rest of FOSS. These issues may be fixed with BOINC 8.0 release I hope.
