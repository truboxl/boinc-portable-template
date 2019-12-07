#!/usr/bin/env bash

PATH=${PATH}:$PWD
if [ $(which boincmgr) == '' ]; then
    echo -e 'BOINC manager is not installed.\n'
    exit 1
fi

# Default is localhost
HOST="localhost"

# Default is 31416
PORT="31417"

# Remember to set the password other than this here and gui_rpc_auth.cfg
PASSWORD="boinc"

# To start minimise, add --autostart --systray
boincmgr --namehost "$HOST" --gui_rpc_port "$PORT" --password "$PASSWORD" --multiple
