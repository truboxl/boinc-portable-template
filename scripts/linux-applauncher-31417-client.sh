#!/usr/bin/env bash
# BOINC on Linux is a mess
# There is no one BOINC runs on all Linux distro

# Recommend install BOINC client and manager from distro's package manager to
# automatically install missing dependencies or better yet compile BOINC
# yourself
# Then start BOINC in user method rather than systemd method if you dont like
# messing /var/lib/boinc

# Note that this probably wont be as portable as running off USB but you can
# definitely migrate to another distro more easily

PATH=${PATH}:$PWD
if [ $(which boinc) == '' ]; then
    echo -e 'BOINC client is not installed.\n'
    exit 1
fi

# Start BOINC with this directory as working directory
DIR="appdata"

# Default is 31416
PORT="31417"

boinc --dir "$DIR" --gui_rpc_port "$PORT" --daemon --allow_multiple_clients --allow_remote_gui_rpc
