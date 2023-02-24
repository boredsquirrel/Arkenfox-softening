#/bin/bash
mkdir -P ~/Tools/Scripts/
cd ~/Tools/Scripts/
wget https://raw.githubusercontent.com/trytomakeyouprivate/Arkenfox-softening/main/arkenfox-script.sh

# Modify to work with Flatpak
sed -i 's/"~/.mozilla/firefox/"/"~/.var/app/org.mozilla.firefox/.mozilla/firefox/"/g' arkenfox-script.sh

while true; do
    read -p "Do you want to disable Letterboxing, risking a lack of privacy for convenience? (y/n) " yn
    case $yn in
        [Yy]* ) printf """
# Disable Letterboxing ----------------
sed -i 's/resistFingerprinting.letterboxing", true/resistFingerprinting.letterboxing", false/g' user.js""" >> arkenfox-script.sh && exit;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done


while true; do
    read -p "Do you want to enable Captive Portal functionality, using captive.kuketz.de? (y/n) " yn
    case $yn in
        [Yy]* ) printf """

# Allow Captive Portals: --------------
sed -i 's/user_pref(canonicalURL", ";/canonicalURL", "http://www.captive.kuketz.de/g' user.js
sed -i 's/portal-service.enabled", false/portal-service.enabled", true/g' user.js
sed -i 's/network.connectivity-service.enabled", false/network.connectivity-service.enabled", true/g' user.js""" >> arkenfox-script.sh && exit;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done


while true; do
    read -p "Do you want to enable Pocket news (minimal) (only working using Firefox' startpage) ? (y/n) " yn
    case $yn in
        [Yy]* ) printf""" 
# Enable Pocket news (Start page) ------
sed -i 's/discoverystreamfeed", false/discoverystreamfeed", true/g' user.js
sed -i 's/topstories", false/topstories", true/g' user.js
sed -i 's/highlights.includePocket", false/highlights.includePocket", true/g' user.js""" >> arkenfox-script.sh && exit;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

chmod +x arkenfox-script.sh
sh arkenfox-script.sh
