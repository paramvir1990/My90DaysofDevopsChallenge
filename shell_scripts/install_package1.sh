#!/bin/bash

read -p "Enter package name: " package_name


if dpkg -s $package_name &>/dev/null; then
	echo " Package already installed....."
	exit 1
else
        echo "Updating System and Installing $package_name"
	sudo apt-get update
	sudo apt install $package_name -y
fi

exit 1
