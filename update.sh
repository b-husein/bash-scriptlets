#!/bin/bash

# Prior to running the script, set permission: chmod +x update.sh
# after that execute: ./update.sh

# The purpose of this script is to automatically
# update and upgrade packages on Ubuntu (Debian).

# to update the package index files to get the latest list 
# of available packages in the repositories.
sudo apt-get update

# to update all the packages presently installed in 
# our Linux system to their latest versions.
sudo apt-get upgrade -y

# If previous commands were executed successfully:
echo "Your system has been updated and upgraded."


