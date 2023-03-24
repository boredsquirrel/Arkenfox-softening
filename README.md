# [Arkenfox](https://github.com/arkenfox/user.js)-softening
Harden Firefox, but not so much.

- Keep tabs
- Save history for a 7 days
- Enable cachig for speed
- Enable WebGL
- Allow quick search using shortcuts
- Autoupdate the script

I use this personally to make [Arkenfox](https://github.com/arkenfox/user.js) usable. It works pretty much like a normal Browser, but more secure! If you want the best security & anonymity, use the Tor-Browser or even Whonix, Tails or QubesOS.

---

***WARNING***
This script enables WebGL, to run certain Map sites and Online-Games. [Use NoScript](https://addons.mozilla.org/en-US/firefox/addon/noscript/) and Block WebGL on `Default`, `Trusted` and `Untrusted` level. The few sites actually needing WebGL will probably tell you, and you can manually enable it. This is way better than having it blocked on all sites with a big complex user.js.

The option to disable Letterboxing is included. Letterboxing may add grey bars to your browser window if the ratio is not 16:9 (as far as I know), preventing Websites fingerprinting you due to a special Screen size. This may have a bigger impact on experience than you want (although disabled in fullscreen, e.g. when watching a movie) but makes your fingerprint more unified.

Individual changes like that are included in the interactive chooser, which you run at startup to configure your own overwrite-script.

If you change your opinion, you can run `chooser.sh` as often as you like.

---

## How to use
I created a script automatically changing settings in Arkenfox and adding a few lines to the File.

Choose the version you use and copy-paste the commands into your Terminal (`Ctrl+Shift+V`). 

You will be asked questions, information to answer them can be found here:

- [Dangers of Captive Portals](https://www.eff.org/deeplinks/2017/08/how-captive-portals-interfere-wireless-security-and-privacy)
- [Is Pocket a privacy Threat? (Reddit)](https://www.reddit.com/r/privacy/comments/e1unj8/comment/f8rzn38/?utm_source=share&utm_medium=web2x&context=3)
- [Pocket Privacy Policy](https://getpocket.com/en/privacy/)
- [Browser Fingerprinting: Conver your tracks, EFF](https://coveryourtracks.eff.org/)
- [Firefox on Browser fingerprinting (no they dont block it by default)](https://www.mozilla.org/en-US/firefox/features/block-fingerprinting/)

If you are unsure what Firefox version you use, try these commands:

```
firefox #native version
flatpak run org.mozilla.firefox #flatpak
snap run firefox #snap
```

### 1. Native Version
likely preinstalled, Linux Mint, Debian, Fedora, Manjaro, POP!_OS all should be the same
```
wget https://raw.githubusercontent.com/trytomakeyouprivate/Arkenfox-softening/main/chooser.sh
sed '7,11d' chooser.sh
chmod +x chooser.sh
./chooser.sh
```

You may want to use Mozillas official Flatpak Version for Video support on all Distros and Containerization, especially if you use a stable Distro like Debian, RockyLinux, Ubuntu LTS e.g.

### 2. Flatpak Version
[Flathub version recommended](https://dl.flathub.org/repo/appstream/org.mozilla.firefox.flatpakref), containerized, works fine apart from KDEConnect and Keepass-browser Addons (*native messaging*) as well as drag-and-drop or hardware security keys. 

```
wget https://raw.githubusercontent.com/trytomakeyouprivate/Arkenfox-softening/main/chooser.sh
sed '10,11d' chooser.sh
chmod +x chooser.sh
./chooser.sh
```

### 3. Snap Version
Ubuntu will keep on using it as default, making the use of the native version difficult. The Snap has the same pros and cons as the Flatpak, but it comes from a proprietary store and may be slower.

```
wget https://raw.githubusercontent.com/trytomakeyouprivate/Arkenfox-softening/main/chooser.sh
sed '7,9d' chooser.sh
chmod +x chooser.sh
./chooser.sh
```

If you dont want to use the Snap, [here is a guide on how to replace the Snap with the DEB](https://www.omgubuntu.co.uk/2022/04/how-to-install-firefox-deb-apt-ubuntu-22-04). Easiest is to just uninstall it and install the Flatpak, but Ubuntu will make using Flatpak hard too, so just switch to Fedora instead ;D 

Also [there is UnSnap](https://github.com/popey/unsnap), a really nice tool replacing installed Snaps with Flatpaks as well.

---

## More Detailed explanation
Firefox is not really privacy friendly. It has very bad presets and even if you apply all GUI Settings to make it more private, remove Google etc., you still have lots of stuff under the hood and even some Google presets stay ("top site" or others).

But Firefox is very modular, with nearly every setting being changeable with the user.js, a config file that overwrites inserted settings on every launch. This is awesome, as the Tor-Browser uses these settings to become the most secure browser, and Arkenfox is a long-existing preset of changes that are pretty much the same as those from the Tor-Browser.

The Arkenfox team saves us a lot of effort, the integrated links and sources are awesome, and they also include deactivated unnessecary "hardening" (outdated, already covered, contraproductive) that you could apply accidently, thinking it improves privacy.

The problem is, that Arkenfox-Firefox will not work great for daily usage. You lose way too much functionality which would not actually be dangerous, so instead of creating my own user.js (stupid efford) I looked through that user.js and changed only the annoying settings, resulting in this minimal changeset.

If you have any improvements, please create an issue report.

Spread this script, fork it, change it, help make hardened Firefox more popular! You just can't install Arkenfox on some random persons computer, but this script should be totally fine. Firefox stays one of the most private browsers out there, and its the only one competing with Chromium.

### How this script works

1. Determine what version you use
2. Download the chooser
3. Edit the chooser: `sed` removes unnessecary lines (these lines edit the firefox location in the actual arkenfox-script)
4. Chooser allows to edit the arkenfox-script for applying arguable settings
5. The arkenfox script then downloads the user.js and applies changes to it
6. The script creates a desktop entry for updating it manually, as well as setting up a systemd service to do it automatically every day
7. In the end the arkenfox script launches a scriptcleaner that removes lines only needed for startup.

## Related projects

### [Simple Context menu](https://github.com/trytomakeyouprivate/Simple-Firefox-Menus)
Using [Simple Menu Wizard](https://github.com/stonecrusher/simpleMenuWizard) I created my personal "minimal context menu" userChrome.css.

All this file does, is reducing the displayed options in the context menu, for example emailing images, inspecting its usability, and more that a normal user doesnt need. It makes Firefox wayyy less cluttered, especially when some entries are already replaced (SingleFile for saving Pages as working HTML, Multi account containers instead of "new window").

### [Search Engines](https://github.com/trytomakeyouprivate/Search-Engines)
Decentralize your Web usage using great search engines!

### [Firefox for Linux TV](https://github.com/trytomakeyouprivate/Fedora-TV-KDE-Bigscreen)
This is my try to create the perfect "Firefox for Linux TV" preset. Its a normally secure browser, using lots of snippets of the Arkenfox user.js, integrating many useful bookmarks, some Addons, a nice selection page and more, adjusting it to be used on a Linux TV.

## Contributing

Firefox settings change a lot, for example the recent change from

`user_pref("browser.startup.page", 3);`to  `user_pref("browser.startup.homepage", 3);`


This makes updating always time-consuming so I am happy for help on this project! Just fork it and create a pull request for new versions if you like.

## To-Do
- [ ] TEST!
- [ ] integrate prefscleaner
- [ ] integrate "allow cookies" sites
- [ ] preinstall some external Addons and enable some form of autoupdating: [BypassPaywallsClean](https://gitlab.com/magnolia1234/bypass-paywalls-firefox-clean/-/releases), ...
- [ ] add Windows and Mac support (merge requests, no time to do myself)
  - Mac uses bash so should work easier
  - I got some rough Windows code from some suspicious AI
- [ ] nicer homepage?
