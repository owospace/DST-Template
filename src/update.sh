#!/bin/bash

##
# Install Directory
# This will be the directory which contains your dedicated server.
#
# As such, will contain folders such as 'bin', 'bin64', 'data', 'steamapps' and so forth.
## 

install_dir="$HOME/dontstarvetogether_dedicated_server"



##
# Function calls (provided by Klei themselves) <3
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
# Validate that the 'install_dir' is set correctly.
##
chkIntegrity "$install_dir/bin64"
cd "$install_dir/bin64" || fail



##
# Copy the workshop content file.
# Why do we do this? An explanation below...
#
# When updating & validating the server, the 'dedicated_server_mods_setup.lua' 
# file will be reverted to defaults (meaning it will be empty).
# Therefore, these workshop mods will not be enabled/added when starting a
# newly updated server. This *hopefully* fixes that.
##
cp "$install_dir/mods/dedicated_server_mods_setup.lua" "$HOME/dedicated_mods_backup.lua"



##
# Update the Don't Starve Together Dedicated Server
# This will also validate the files automatically.
##
steamcmd +force_install_dir "$install_dir" +login anonymous +app_update 343050 validate +quit



##
# Re-enable the Workshop Content.
# (see above for more details)
##
mv "$HOME/dedicated_mods_backup.lua" "$install_dir/mods/dedicated_server_mods_setup.lua"


