#!/bin/sh

notify-send -a "Arkenfox-install" -t 4000 "Preparation" "Please close Firefox, if it is running."

mkdir ~/.mozilla/firefox/ARKENFOX

cd ~/.mozilla/firefox/ARKENFOX/

wget -O https://raw.githubusercontent.com/arkenfox/user.js/master/user.js

# enable Firefox sync (disabled on Librewolf) ----------
sed -i 's/identity.fxaccounts.enabled", false/identity.fxaccounts.enabled", true/g' user.js

# allow search engine shortcuts --------
sed -i 's/keyword.enabled", false/keyword.enabled", true/g' user.js

# allow new version notes -----------
sed -i 's/user_pref("browser.startup.homepage_override.mstone", "ignore");/#user_pref("browser.startup.homepage_override.mstone", "ignore");/g' user.js

# Restore session, don't autodelete everything ------------------------
sed -i 's/startup.homepage", "about:blank"/startup.homepage", 3/g' user.js
printf """
user_pref("browser.history_expire_days",7);""" >> user.js
printf """
user_pref("browser.sessionstore.restore_pinned_tabs_on_demand",true);""" >> user.js
sed -i 's/sanitizeOnShutdown", true/sanitizeOnShutdown", false/g' user.js
sed -i 's/clearOnShutdown.cache", true/clearOnShutdown.cache", false/g' user.js
sed -i 's/clearOnShutdown.history", true/clearOnShutdown.history", false/g' user.js
sed -i 's/clearOnShutdown.sessions", true/clearOnShutdown.sessions", false/g' user.js

# Cosmetic: prevent Amazon, Google etc. from being pinned to the Newtabpage should you use it
printf """
user_pref("browser.newtabpage.pinned","");""" >> user.js
printf """
# remove Google & co. from "top sites"
user_pref("browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts.havePinned","");""" >> user.js

# Cosmetic: use system colors
sed -i 's/system_colors", false/system_colors", true/g' user.js

# Improve speed through more caching
sed -i 's/cache.disk.enable", false/cache.disk.enable", true/g' user.js

# Allow WebGL
sed -i 's/webgl.disabled", true/webgl.disabled", false/g' user.js

# Create a profile called Arkenfox and set it as default

cd ~/.mozilla/firefox/

printf"""[Profile2]
Name=Arkenfox
IsRelative=1
Path=ARKENFOX
""" >> profiles.ini

notify-send -a "Arkenfox-install" -t 20000 "Info" "The softened Arkenfox profile has been created. Under 'about:profiles' you can access the normal Profile for Banking sites and others that may not work. Firefox will open, choose the profile 'Arkenfox' to continue."

firefox -P 

zenity --info --text="Please install NoScript and disable WebGL on all levels, \n Default, Trusted and Untrusted. You can enable it manually. \." --title="Warning!"

xdg-open https://addons.mozilla.org/en-US/firefox/addon/noscript/

notify-send -a "Arkenfox install" -t 15000 "Captive Portal" '"captive.kuketz.de" will be used to detect captive portals. You can change it in the settings of "arkenfox-script"'

xdg-open http://captive.kuketz.de

xdg-open https://github.com/trytomakeyouprivate/Arkenfox-softening/blob/main/Addon-recommendations.md

printf """[Desktop Entry]
Exec=~/Tools/Scripts/arkenfox-script.sh
GenericName=Downloads the latest Arkenfox version, applies softening
Icon=preferences-web-browser-ssl
Name=Update Arkenfox""" > ~/.local/share/applications/Update-Arkenfox.desktop

notify-send -a "Arkenfox install" -t 10000 "Updater" 'An Appstarter called "Update Arkenfox" has been created. Use that once in a while to keep your settings up to date.'

cd ~

wget https://github.com/trytomakeyouprivate/Arkenfox-softening/raw/main/script-cleaner.sh

chmod +x script-cleaner.sh
sh script-cleaner.sh

fi
