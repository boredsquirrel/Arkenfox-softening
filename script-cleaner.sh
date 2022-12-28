#!/bin/sh

#This script will remove unnessecary "first setup" lines from the arkenfox-softening script

cd ~/.scripts/

# creating the profile folder
sed -i '2,3d' arkenfox-script-*.sh

# setting up the profile, starting it, messages
sed -i '56,73d' arkenfox-script-*.sh

# add new notification
printf """
notify-send 'Arkenfox' 'Firefox Arkenfox user.js updated'""" >> arkenfox-script-*.sh

# remove itself
rm ~/script-cleaner.sh
