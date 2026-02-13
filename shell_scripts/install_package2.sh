#!/bin/bash



if [ $# -eq 0 ]; then
	echo "Enter package name to be installed"
	echo "Usage: $0 <package_name>"
	echo "Example: $0 nginx"
	exit 1
fi


if dpkg -s $1 &>/dev/null; then
	echo " Package already installed....."
	exit 1
else
        echo "Updating System and Installing $1"
	sudo apt-get update
	sudo apt install $1 -y
fi

