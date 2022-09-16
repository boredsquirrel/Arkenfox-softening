# [Arkenfox](https://github.com/arkenfox/user.js)-softening
Harden Firefox, but not so much. Keep tabs, allow WebRTC (Video Calls, Audio and Video streaming), save history for a few days, enable cachig for speed and maybe more.

I use this personally to make [Arkenfox](https://github.com/arkenfox/user.js) usable. It works with the Addon SimpleTabGroups, Jitsi/BBB Video-calls and more. 

Firefox settings change a lot, for example the recent change from

`user_pref("browser.startup.page", 3);`to  `user_pref("browser.startup.homepage", 3);`


This makes updating always time-consuming so I am happy for help on this project! Just fork it and create a pull request for new versions if you like.

### How to use
manual: follow the normal Arkenfox procedure:

1. run the [prefs-cleaner](https://github.com/arkenfox/user.js) to remove old settings
2. download the latest Arkenfox user.js (fitting to your version of Firefox!)
3. Add the Additions to the file, if stated in the title, deactivate duplicate lines with "//"
4. In Firefox go to about:profiles and open your profile folder (Bookmark that location in your File Explorer, it varies between binary install, system package, flatpak, snap, OS, e.g.)
5. Close Firefox
6. Copy the newly "patched" user.js to the folder
7. Launch firefox, everything should be set!
