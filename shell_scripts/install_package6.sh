#!/bin/bash

count=$#
script_name=$0
package_name=$1

check_args(){


	if [ $count -eq 0 ]; then
		echo "Enter package name to be installed"
		echo "Usage: $script_name <package_name>"
		echo "Example: $script_name nginx"
		exit 1
	fi
}

install_package(){


	if dpkg -s $package_name &>/dev/null; then
		echo " Package already installed....."
		exit 1
	else
        	echo "Updating System and Installing $package_name"
		sudo apt-get update
		sudo apt install $package_name -y
	fi
}

check_args
install_package 

exit 1
