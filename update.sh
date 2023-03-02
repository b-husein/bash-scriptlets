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
echo "Let's clear the terminal."
    sleep 5
    clear
# sleep command is a useful way to add pauses in your script.
    sleep 2 # pause for 2 seconds.
echo "Initializing autoremove and autoclean"
# to remove left over dependencies of packages you no longer have.
sudo apt autoremove -y
# to delete all unnecessary packages from package cache.
sudo apt autoclean -y
    sleep 1
echo "All done."

########## cron job ########

# To add a cron job to this script
# and schedule it to run every day at 15.00h
# follow the steps below:

# $ crontab -e
# add following parameters into file: 0 15 * * * /path/to/your/script.sh
# for example: 0 15 * * * /home/husein/Downloads/update.sh
# save and exit the crontab file.

# Parameters explained: 
# 0 - minutes
# 15 - hours 
# * - every day of the month
# * - every month
# * - every day of the week

############################