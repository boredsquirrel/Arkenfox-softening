#!/bin/bash
mkdir -P ~/.local/bin
cd ~/.local/bin
wget https://raw.githubusercontent.com/trytomakeyouprivate/Arkenfox-softening/main/arkenfox-script.sh

#flatpak
sed -i 's/"~/.mozilla/firefox/"/"~/.var/app/org.mozilla.firefox/.mozilla/firefox/"/g' arkenfox-script.sh
#snap
sed -i 's/"~/.mozilla"/"~/snap/firefox/common/.mozilla"/g' arkenfox-script.sh

while true; do
    read -p "Do you want to disable Letterboxing, risking a lack of privacy for convenience? (y/n) " yn
    case $yn in
        [Yy]* ) printf """
# Disable Letterboxing ----------------
sed -i 's/resistFingerprinting.letterboxing", true/resistFingerprinting.letterboxing", false/g' user.js""" >> arkenfox-script.sh && break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done


while true; do
    read -p "Do you want to enable Captive Portal functionality, using captive.kuketz.de (This also disables HTTPS-only mode, second browser is strongly recommended) ? (y/n) " yn
    case $yn in
        [Yy]* ) while true; do
            read -p "Do you want to use a custom Captive portal server (Any http-only server)? (y/n) " yn
            case $yn in
                [Yy]* ) read -p "Enter a http:// URL: " URL&& break;;
                [Nn]* ) URL='http://www.captive.kuketz.de'&& break;;
                * ) echo "Please answer yes or no.";;
            esac
        done
        printf """
# Allow Captive Portals: --------------
sed -i 's/user_pref(canonicalURL", ";/canonicalURL", "http://www.captive.kuketz.de/g' user.js
sed -i 's/portal-service.enabled", false/portal-service.enabled", true/g' user.js
sed -i 's/network.connectivity-service.enabled", false/network.connectivity-service.enabled", true/g' user.js
sed -i 's/https_only_mode", true/https_only_mode", false/g' user.js
""" >> arkenfox-script.sh && break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "(Interface) Do you want to force in-line minimize/maximize/close buttons (No titlebar)? (y/n) " yn
    case $yn in
        [Yy]* ) printf""" 
# Enable Pocket news (Start page) ------
sed -i 's/discoverystreamfeed", false/discoverystreamfeed", true/g' user.js && break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

printf """
fi""" >> arkenfox-script.sh

chmod +x arkenfox-script.sh
sh arkenfox-script.sh
