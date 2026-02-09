#!/bin/bash


check_args(){

	if [ $1 -eq 0 ]; then
		echo "Enter package name to be installed"
		echo "Usage: $2 <package_name>"
		echo "Example: $2 nginx"
		exit 1
	fi
}

install_package(){

	if dpkg -s $1 &>/dev/null; then
		echo " Package already installed....."
		exit 1
	else
        	echo "Updating System and Installing $1"
		sudo apt-get update
		sudo apt install $1 -y
	fi
}

#check_args $# $0
#install_package $1

#exit 1
