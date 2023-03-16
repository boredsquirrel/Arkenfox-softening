@echo off

:: This script will remove unnecessary "first setup" lines from the arkenfox-softening script

cd %userprofile%\Tools\Scripts

:: creating the profile folder
type arkenfox-script.sh | more +7 > arkenfox-script-cleaned.sh

:: setting up the profile, starting it, messages, appstarter creation, downloading of this script
type arkenfox-script-cleaned.sh | more +50 > arkenfox-script-cleaned2.sh

:: remove itself
del script-cleaner.bat
