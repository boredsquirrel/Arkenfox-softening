// Arkenfox Override Settings file

// What does this do?
// https://github.com/arkenfox/user.js/wiki/3.1-Overrides
// The override changes the stated settings, to fit your needs
// Please modify it how you like, but don't modify the user.js itself


// Cosmetic: prevent Amazon, Google etc. from being pinned to the Newtabpage should you use it
// remove pinned website ads
user_pref("browser.newtabpage.pinned", "");
// remove Google & co. from "top sites"
user_pref("browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts.havePinned", "");


// delete history after one week
user_pref("browser.history_expire_days", 7);
// restore pinned tabs
user_pref("browser.sessionstore.restore_pinned_tabs_on_demand",true);

// Librewolf only, possible through GUI
//user_pref("identity.fxaccounts.enabled", true);

// Allow search shortcuts
user_pref("keyword.enabled", true);

// Disable Letterboxing (remove the screen borders, this makes you fingerprintable)
user_pref("privacy.resistFingerprinting.letterboxing", false);

// Allow Mozilla Addons Manager for regular behavior
user_pref("privacy.resistFingerprinting.block_mozAddonManager", false);

// Allow Firefoxes new Version notifications
// user_pref("browser.startup.homepage_override.mstone", "REPLACEWITHVERSIONNUMBER"); // this is removed in arkenfox, and needs to be removed entirely, otherwise you dont get version upgrade infos in the browser.
//user_pref("browser.startup.homepage", "about:home");
user_pref("browser.startup.page", 3);

// History & Session
// delete history after one week
user_pref("browser.history_expire_days", 7);
// restore pinned tabs
user_pref("browser.sessionstore.restore_pinned_tabs_on_demand",true);

//user_pref("privacy.sanitize.sanitizeOnShutdown", false); //prevents clearing Cookies on Shutdown
// user_pref("privacy.clearOnShutdown.cache", false); //clears a lot of trackers like ETags
user_pref("privacy.clearOnShutdown.history", false); // usability
user_pref("privacy.clearOnShutdown.sessions", false);
// new
user_pref("privacy.clearOnShutdown_v2.browsingHistoryAndDownloads", false);
user_pref("browser.sessionhistory.max_entries", 2);

// System colors
user_pref("browser.display.use_system_colors", true);

user_pref("webgl.disabled", false); // use noscript or UBlock-Origin to block it and allow it for single websites! "WebGL fingerprint defender" may also help

// speed
user_pref("network.http.max-persistent-connections-per-server", 30);
user_pref("browser.cache.disk.enable", false);

// Language CHANGE TO YOUR NATIVE ONE
// this is just here for usability.
user_pref("intl.accept_languages", "de-DE, de");
user_pref("javascript.use_us_english_locale", false); // [HIDDEN PREF]

// Captive Portal & Connectivity Check
// user_pref("captivedetect.canonicalURL", "");
// user_pref("network.captive-portal-service.enabled", false); // [FF52+]
// user_pref("network.connectivity-service.enabled", false);

// enable the native system Portal (Flatpak)
user_pref("widget.use-xdg-desktop-portal.file-picker", 1);
//user_pref("widget.use-xdg-desktop-portal.location", 1);
//user_pref("widget.use-xdg-desktop-portal.mime-handler", 1);
//user_pref("widget.use-xdg-desktop-portal.open-uri", 1);
//user_pref("widget.use-xdg-desktop-portal.settings", 1);
user_pref("media.webrtc.camera.allow-pipewire", true);
