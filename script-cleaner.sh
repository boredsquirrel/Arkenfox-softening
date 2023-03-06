#!/bin/sh

#This script will remove unnessecary "first setup" lines from the arkenfox-softening script

cd ~/Tools/Scripts

# creating the profile folder
sed '2,7d' arkenfox-script.sh

# setting up the profile, starting it, messages, appstarter creation, downloading of this script
sed '53,125d' arkenfox-script.sh

# remove itself
rm script-cleaner.sh
