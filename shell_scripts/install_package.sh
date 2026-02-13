#!/bin/bash

read -p "Enter package name: " package_name

echo "Updating System and Installing $package_name"

sudo apt-get update
sudo apt install $package_name -y

