#!/bin/bash

##
# -- Configuration
# Usually, the defaults are fine. But 
# you are welcome to change these as you see fit.
# 
# Please avoid editing anything after this segment.
# Unless you *know what you are doing*
##

install_dir="$HOME/dontstarvetogether_dedicated_server"
cluster_name="MyDediServer"
dontstarve_dir="$HOME/.klei/DoNotStarveTogether"



##
# Function calls (provided by Klei themselves) <3
## 

function fail()
{
	echo Error: "$@" >&2
	exit 1
}

function check_for_file()
{
	if [ ! -e "$1" ]; then
		fail "Missing file: $1"
	fi
}



##
# Validation Process (in case of misconfiguration)
##

check_for_file "$dontstarve_dir/$cluster_name/cluster.ini"
check_for_file "$dontstarve_dir/$cluster_name/cluster_token.txt"
check_for_file "$dontstarve_dir/$cluster_name/Master/server.ini"
check_for_file "$dontstarve_dir/$cluster_name/Caves/server.ini"
check_for_file "$install_dir/bin64"
cd "$install_dir/bin64" || fail



##
# Run the server.
##

screen -d -m -S master ./dontstarve_dedicated_server_nullrenderer_x64 -cluster $CLUSTER_NAME -shard Master
screen -d -m -S caves ./dontstarve_dedicated_server_nullrenderer_x64 -cluster $CLUSTER_NAME -shard Caves