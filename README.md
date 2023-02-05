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

*There is the option to disable Letterboxing included. Letterboxing may add grey bars to your browser window if the size is not 16:9 (as far as I know), preventing Websites fingerprinting you due to a special Screen size. This may have a bigger impact on experience than you want, remove the "#" before that line in that case.*

### 1. Native Version
likely preinstalled, Linux Mint, Debian, Fedora, Manjaro, POP!_OS all should be the same
```
mkdir -P ~/Tools/Scripts/
cd ~/Tools/Scripts/
wget https://raw.githubusercontent.com/trytomakeyouprivate/Arkenfox-softening/main/arkenfox-script.sh

# disable letterboxing (reduces browser window size against fingerprinting)
# sed -i 's/"#sed -i 's/resistFingerprinting.letterboxing"/"sed -i 's/resistFingerprinting.letterboxing"/g' arkenfox-script.sh

chmod +x arkenfox-script.sh
sh arkenfox-script.sh
```

### 2. Flatpak Version
[Flathub version recommended](https://dl.flathub.org/repo/appstream/org.mozilla.firefox.flatpakref), containerized, works fine apart from KDEConnect and Keepass-browser Addons
```
mkdir -P ~/Tools/Scripts/
cd ~/Tools/Scripts/
wget https://raw.githubusercontent.com/trytomakeyouprivate/Arkenfox-softening/main/arkenfox-script.sh

# Modify to work with Flatpak
sed -i 's/"~/.mozilla/firefox/"/"~/.var/app/org.mozilla.firefox/.mozilla/firefox/"/g' arkenfox-script.sh

# disable letterboxing (reduces browser window size against fingerprinting)
# sed -i 's/"#sed -i 's/resistFingerprinting.letterboxing"/"sed -i 's/resistFingerprinting.letterboxing"/g' arkenfox-script.sh

chmod +x arkenfox-script.sh
sh arkenfox-script.sh
```

### 3. Snap Version
Ubuntu will keep on using it as default, keeping the use of a native version complicated.
```
mkdir -P ~/Tools/Scripts/
cd ~/Tools/Scripts/
wget https://raw.githubusercontent.com/trytomakeyouprivate/Arkenfox-softening/main/arkenfox-script.sh

# modify to work with Snap
sed -i 's/"~/.mozilla"/"~/snap/firefox/common/.mozilla"/g' arkenfox-script.sh

# disable letterboxing (reduces browser window size against fingerprinting)
# sed -i 's/"#sed -i 's/resistFingerprinting.letterboxing"/"sed -i 's/resistFingerprinting.letterboxing"/g' arkenfox-script.sh

chmod +x arkenfox-script.sh
sh arkenfox-script.sh
```

---

## More Detailed explanation
Firefox is not really privacy friendly. It has horrible presets and even if you apply all GUI Settings to make it more private, remove Google etc., you still have lots of stuff under the hood.

But Firefox is very modular, with every setting being changeable by the user with the user.js. This is awesome, as the Tor-Browser uses these settings to become more secure, and Arkenfox is a long-existing preset of changes that are pretty much the same as those from the Tor-Browser.

The Arkenfox team saves us a lot of effort, the integrated links and sources are awesome, and they also include unnessecary settings (outdated, already covered, contraproductive) that you would maybe change accidently.

The problem is, that Arkenfox-Firefox will not work great for daily usage. You lose way too much functionality, that is not actually dangerous, so instead of creating my own user.js (stupid efford) I looked through that whole preset and changed only the annoying settings, resulting in this minimal changeset that completely changes the experience. 

Pocket News can be manually disabled, the rest of the Pocket integration is a bit annoying and I am not sure, if it harms privacy somehow. I may create a simple CSS to remove a few right-click-menu entries, as its completely bloated.

If you have any improvements or changes you wish, please create an issue report. 

Spread this script, fork it, change it, help make hardened Firefox more popular! You just cant install Arkenfox on some random persons computer, but this script should be totally fine.
