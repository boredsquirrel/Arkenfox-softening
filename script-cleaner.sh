#!/bin/sh

#This script will remove unnessecary "first setup" lines from the arkenfox-softening script

cd ~/Tools/Scripts

# creating the profile folder
sed -i '2,5d' arkenfox-script.sh

# setting up the profile, starting it, messages, appstarter creation, downloading of this script
sed -i '67,102d' arkenfox-script.sh

# add new notification
printf """
notify-send 'Arkenfox' 'Firefox Arkenfox user.js updated'""" >> arkenfox-script-native.sh

# remove itself
rm script-cleaner.sh
