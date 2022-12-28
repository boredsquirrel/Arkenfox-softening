# [Arkenfox](https://github.com/arkenfox/user.js)-softening
Harden Firefox, but not so much. Keep tabs, save history for a 7 days, enable cachig for speed, allow the start page with Pocket news but remove sponsored Sites and Google from the search.

I use this personally to make [Arkenfox](https://github.com/arkenfox/user.js) usable. It works pretty much like a normal Browser, but more secure! If you want the best security, use the Tor-Browser or even Whonix, Tails or QubesOS.

***WARNING***
This script enables WebGL, to run certain Map sites and Online-Games. [Use NoScript](https://addons.mozilla.org/en-US/firefox/addon/noscript/) and Block WebGL on Default, Trusted and Untrusted level. The few sites actually needing WebGL will probably tell you, and you can manually enable it. This is way better than having it blocked on all sites with a big complex user.js.

Firefox settings change a lot, for example the recent change from

`user_pref("browser.startup.page", 3);`to  `user_pref("browser.startup.homepage", 3);`


This makes updating always time-consuming so I am happy for help on this project! Just fork it and create a pull request for new versions if you like.

## How to use
I created a script automatically changing settings in Arkenfox or adding the needed lines to the File.

Choose the version you use and copy-paste the command into your Terminal (`Ctrl+Alt+T` and `Ctrl+Shift+V`)

If you are unsure what Firefox version you use, try these commands:
```
firefox
flatpak run org.mozilla.firefox
snap run firefox
```

### 1. Native Version
likely preinstalled, Ubuntu, Debian, Fedora, Arch, all should be the same (if not please create an Issue report)
```
mkdir ~/.scripts
cd ~/.scripts/
wget https://raw.githubusercontent.com/trytomakeyouprivate/Arkenfox-softening/main/arkenfox-script-native.sh
chmod +x arkenfox-script-native.sh
sh arkenfox-script-native.sh
```

### 2. Flatpak Version
Flathub recommended, containerized, works fine apart from KDEConnect and Keepass-browser Addons)
```
mkdir ~/.scripts
cd ~/.scripts/
wget https://raw.githubusercontent.com/trytomakeyouprivate/Arkenfox-softening/main/arkenfox-script-flatpak.sh
chmod +x arkenfox-script-flatpak.sh
sh arkenfox-script-flatpak.sh
```

### 3. Snap Version
Ubuntu will keep on using it as default, keeping the use of a native version complicated.
```
mkdir ~/.scripts
cd ~/.scripts/
wget https://raw.githubusercontent.com/trytomakeyouprivate/Arkenfox-softening/main/arkenfox-script-snap.sh
chmod +x arkenfox-script-snap.sh
sh arkenfox-script-snap.sh
```
