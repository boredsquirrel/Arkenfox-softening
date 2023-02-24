#/bin/bash
mkdir -P ~/Tools/Scripts/
cd ~/Tools/Scripts/
wget https://raw.githubusercontent.com/trytomakeyouprivate/Arkenfox-softening/main/arkenfox-script.sh

# Modify to work with Flatpak
sed -i 's/"~/.mozilla/firefox/"/"~/.var/app/org.mozilla.firefox/.mozilla/firefox/"/g' arkenfox-script.sh

while true; do
    read -p "Do you want to disable Letterboxing, risking a lack of privacy for convenience? (y/n) " yn
    case $yn in
        [Yy]* ) sed -i 's/"#sed -i 's/resistFingerprinting.letterboxing"/"sed -i 's/resistFingerprinting.letterboxing"/g' arkenfox-script.sh;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

chmod +x arkenfox-script.sh
sh arkenfox-script.sh
