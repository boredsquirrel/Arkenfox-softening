# [Arkenfox](https://github.com/arkenfox/user.js) helper ![Firefox Icon in ice-colors with a dark planet](https://raw.githubusercontent.com/boredsquirrel/Arkenfox-softening/main/assets/images/arkenfox-icon.png)

Easy setup of Arkenfox, a tool to make your Firefox the most secure browser.

Includes an override file that reduces the extreme settings, to make it usable for everyday tasks.

Supports native (system App), Flatpak and Snap Firefox.

- Keep tabs
- Save history for a 7 days
- Enable cachig for speed
- Enable WebGL
- Allow quick search using shortcuts
- Autoupdate the script

I use this personally to make [Arkenfox](https://github.com/arkenfox/user.js) usable. It works pretty much like a normal Browser, but more secure! If you want the best security & anonymity, use the Tor-Browser or even Whonix, Tails or QubesOS.

---

## How to install

```
curl -sSL https://github.com/boredsquirrel/Arkenfox-softening/raw/main/setup | bash
```

## WARNING

This script enables WebGL, to run certain Map sites and Online-Games. [Use NoScript](https://addons.mozilla.org/en-US/firefox/addon/noscript/) and Block WebGL on `Default`, `Trusted` and `Untrusted` level. The few sites actually needing WebGL will probably tell you, and you can manually enable it. This is way better than having it blocked on all sites with a big complex user.js, and you should use NoScript if you care about privacy.

![WebGL Warning that NoScript displays](https://raw.githubusercontent.com/boredsquirrel/Arkenfox-softening/main/assets/images/webgl-maps.png)

The option to disable Letterboxing is included. Letterboxing may add grey bars to your browser window if the ratio is not 16:9 (as far as I know), preventing Websites fingerprinting you due to a special Screen size. This may have a bigger impact on experience than you want (although disabled in fullscreen, e.g. when watching a movie) but makes your fingerprint more unified.

Individual changes like that are included in the interactive chooser, which you run at startup to configure your own overwrite-script.

If you change your opinion, you can run `chooser.sh` as often as you like.

---

## Some information

- [Dangers of Captive Portals](https://www.eff.org/deeplinks/2017/08/how-captive-portals-interfere-wireless-security-and-privacy)
- [Is Pocket a privacy Threat? (Reddit)](https://www.reddit.com/r/privacy/comments/e1unj8/comment/f8rzn38/?utm_source=share&utm_medium=web2x&context=3)
- [Pocket Privacy Policy](https://getpocket.com/en/privacy/)
- [Browser Fingerprinting: Conver your tracks, EFF](https://coveryourtracks.eff.org/)
- [Firefox on Browser fingerprinting (no they dont block it by default)](https://www.mozilla.org/en-US/firefox/features/block-fingerprinting/)

## Versions
With this new update, the setup works for Native, Flatpak and Snap.

If you dont want to use the Snap, [here is a guide on how to replace the Snap with the DEB](https://www.omgubuntu.co.uk/2022/04/how-to-install-firefox-deb-apt-ubuntu-22-04). Easiest is to just uninstall it and install the Flatpak, but if Ubuntu makes using Flatpak hard too, just switch to Fedora instead ;D 

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

The new update changed basically everything, as the previous was just broken

1. Detect wether to use kdialog, zenity or notify-send for GUI dialogs
2. Detect the used Firefox Version and Directories
3. Creates an Arkenfox Profile folder and clones your current profile folder there
4. Change the profiles.ini to add the Arkenfox user
5. Launch Firefox in -p mode, so that the user enables the Arkenfox user as default; closes Firefox again
6. Downloads the Arkenfox git repo and the custom override, runs the updater from Arkenfox in "automatic mode" (piping "Y" into the script to skip the Y/N Dialog)
7. Copying the user.js back to the Arkenfox folder, now the profile is ready
8. Creating GUI Application launchers for Profile chooser and Arkenfox updater
9. Creating a user systemd script to automatically run the arkenfox updater every day 

## Related projects

### [Simple Context menu](https://github.com/boredsquirrel/Simple-Firefox-Menus)
Using [Simple Menu Wizard](https://github.com/stonecrusher/simpleMenuWizard) I created my personal "minimal context menu" userChrome.css.

All this file does, is reducing the displayed options in the context menu, for example emailing images, inspecting its usability, and more that a normal user doesnt need. It makes Firefox wayyy less cluttered, especially when some entries are already replaced (SingleFile for saving Pages as working HTML, Multi account containers instead of "new window").

### [Search Engines](https://github.com/boredsquirrel/Search-Engines)
Decentralize your Web usage using great search engines!

## Contributing

With the update, this should be fairly easy. So best is to read the Arkenfox user.js and find changes in new Firefox releases!

This makes updating always time-consuming so I am happy for help on this project! Just fork it and create a pull request for new versions if you like.

## To-Do
- [ ] add Windows and Mac support (merge requests, no time to do myself)
