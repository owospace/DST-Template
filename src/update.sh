#!/bin/bash

##
# Configuration Options for Don't Starve Together Server
## 

install_dir="$HOME/dontstarvetogether_dedicated_server"

##
# Function calls
## 
function fail()
{
	echo Error: "$@" >&2
	exit 1
}

function chkIntegrity()
{
	if [ ! -e "$1" ]; then
		fail "Missing file: $1"
	fi
}

##
# SteamCMD Update/Install dedicated server app
##
steamcmd +force_install_dir "$install_dir" +login anonymous +app_update 343050 validate +quit

##
# Integrity check
##
chkIntegrity "$install_dir/bin64"

cd "$install_dir/bin64" || fail
