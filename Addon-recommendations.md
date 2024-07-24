# Addon Recommendations

[Please use the Arkenfox Wiki for Extension Recommendations](https://github.com/arkenfox/user.js/wiki/4.1-Extensions)

Arkenfox is done, but Firefoxes own parameters aren't everything that can increase your privacy.

Be aware that Addons interfering with Network traffic, or Addons that are only Frontends for external services (translators, converters, etc.) will make you more unique or track you actively.

The Addon [Translate webpages](https://addons.mozilla.org/en-US/firefox/addon/traduzir-paginas-web/) ([Source Code](https://github.com/FilipePS/Traduzir-paginas-web) seems to be an exception, sending only Traffic to Google if you actively choose so.

Firefox Translate, now preinstalled, uses a different method by entirely relying on local translation after downloading the database. Recommendation!

## ![Image](https://addons.mozilla.org/user-media/addon_icons/0/722-64.png?modified=238235f7) [NoScript](https://addons.mozilla.org/en-US/firefox/addon/noscript/)
The only Addon installed on the Tor-Browser.

My softening has enabled WebGL, so make sure to block it on all security levels in the settings.

NoScripts presets are made for usability with many big tracking companies being on "Trust", you can change that when right-clicking on the addon icon, there on the "Snake with Tools" icon, then under "Permissions per Website".

In general it doesn't hurt to block all sites from using:

- WebGL (Games and some Maps need that)
- Ping
- Noscript (Sites may display their "no javascript" variant or simply refuse to work. As useless as the "Do not track" setting, as nearly no site respects it, but you can be tracked through it)
- Unrestricted CSS (Sites will load wayyy slower but its more secure)
- LAN
- others

Unrestricted CSS is way faster, so if your browser gets too slow for your needs, enable it for trusted domains. Bad CSS can cause memory overflows..

## ![Image](https://addons.mozilla.org/user-media/addon_icons/607/607454-64.png?modified=mcrushed) [UBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin)
Ublock Origin increases security, as Arkenfox removes Googles "Safe Browsing". It uses local filterlists to block tracking and malware domains, ads and more.

Using the right filterlists you can also use it to block Coockie Banners or "Social media" icons. Or using the small "dropper" tool you can remove any site elements you want, cookie banners, ads, annoying buttons,...

## ![Image](https://addons.mozilla.org/user-media/addon_icons/2738/2738435-64.png?modified=042b804c) [LibRedirect](https://addons.mozilla.org/en-US/firefox/addon/libredirect/)
This addon redirects common tracking monopoles to privacy-friendly servers hosted by volunteers, running OpenSource software.

Make sure to donate to frequently used servers, to keep them running!

## [LocalCDN](https://addons.mozilla.org/en-US/firefox/addon/localcdn-fork-of-decentraleyes/)
Not recommended anymore, outdated and not advanced enough to really help.

It could even create a unique browser fingerprint.

## ![Image](https://addons.mozilla.org/user-media/addon_icons/917/917354-64.png?modified=1648138451) [KeepassXC integration](https://addons.mozilla.org/en-US/firefox/addon/keepassxc-browser/)
This addon does not work on Snap or Flatpak yet, as well as other Addons commnicating with installed Apps.

It allows you to use the very secure KeepassXC password storage with automatic input.

To make it work you need URLs in your password entries.

Firefox stores its passwords unencrypted on Android, on Linux they too, unless you give a Master-password (why no kwallet or gnome-keyring integration??)

## ![Image](https://addons.mozilla.org/user-media/addon_icons/989/989796-64.png?modified=7877a2b4) [Add custom search engine](https://addons.mozilla.org/en-US/firefox/addon/add-custom-search-engine/)
Many sites dont support the "OpenSearch" standard for creating search-engines (by right-clicking the searchbar).

With that addon you can convert any URL-string to one, by replacing the word with "%s". You can add as many URL-parameters as you want and also use it for different things.

- [Random SearX](https://searx.neocities.org/#q=%s&category_general=on), ultimate privacy
- [Random SearX for images](https://searx.neocities.org/#q=%s&category_images=on) (you see you can add more parameters, searches for the same thing on all servers!)
- [Search for used eBay articles, sorted by price](https://www.ebay.de/sch/i.html?_fsrp=1&rt=nc&_nkw=%s&_sacat=0&_sop=15&LH_ItemCondition=4)
- [AlternativeTo](https://alternativeto.net/browse/search/?q=%s)
- [Create a reddit post in ... subreddit](https://www.reddit.com/r/%s/submit)
- [iFixIt](https://www.ifixit.com/Search?query=%s)
- [PGP keys from openpgp.org](https://keys.openpgp.org/search?q=%s)
- [PirateBay](https://pirate-bays.net/search?q=%s)
- [Translate from English to Russian using Dict](https://enru.dict.cc/?s=%s)
- [Search for an app that finally is only available as a snao](https://snapcraft.io/search?q=%s)
- [Search for Flatpaks](https://flathub.org/apps/search/test)
- [Search for Fedora COPR repositories](https://copr.fedorainfracloud.org/coprs/fulltext/?fulltext=%s)
- [Search for Apps on Flatpaks Github repo](https://github.com/search?q=org%3Aflathub+%s)

[A maintained list can be found here](https://github.com/boredsquirrel/Search-Engines)

In the settings you can assign a shortcut to this search engine.

While others use Google for everything, you can now use the most efficient choice and be faster and more private!

## ![Image](https://addons.mozilla.org/user-media/addon_icons/2299/2299025-64.png?modified=d36e7421) [Snowflake](https://addons.mozilla.org/en-US/firefox/addon/torproject-snowflake/)
This addon helps people in censored countries use your Browser as a proxy to access the Tor-network.

If all entry-nodes are blacklisted on their DNS-servers and Internet Providers, this is the only option for them to get free media and news.

It is not illegal in any way to connect to Tor Entry-Nodes. Also, nobody will abuse this, as the Connection is quite slow.

It's easy to help people fight evil governments!

Note: You will need to have WebRTC enabled, which is otherwise used for Videocalls e.g.

## ![Image](https://addons.mozilla.org/user-media/addon_icons/2750/2750338-64.png?modified=e01462ae) [Lightbeam](https://addons.mozilla.org/en-US/firefox/addon/lightbeam-chikl/)
This Addon analyzes the "families" of sites you visit, who share what resources and may gather your data. 

Really interesting but may be negative on Privacy.

## [ClearURLs](https://addons.mozilla.org/en-US/firefox/addon/clearurls/)
If you dont trust Firefox's URL cleaner, you can use that one, which is more agressive.

Removes tracking snippets from lots of URLs. May increase loading time and break certain sites, especially online payment sites!

You can replace it with [a UBlock Origin Filterlist](https://raw.githubusercontent.com/DandelionSprout/adfilt/master/ClearURLs%20for%20uBo/clear_urls_uboified.txt).

## ![Image](https://addons.mozilla.org/user-media/addon_icons/888/888648-64.png?modified=mcrushed) [Temporary Containers](https://addons.mozilla.org/en-US/firefox/addon/temporary-containers/)
This powerful addon allows you to open a tab quickly in a self-destructing container. 

You can also let the Addon delete that containers history when the tab is closed. 

Makes the Private Mode pretty useless.

## ![Image](https://addons.mozilla.org/user-media/addon_icons/1473/1473396-64.png?modified=ed940113) [Smart RSS](https://addons.mozilla.org/en-US/firefox/addon/smart-rss-reader/)
A nice local RSS feeder that doesnt phone anywhere, just loads content from sites you add.

## ![Image](https://addons.mozilla.org/user-media/addon_icons/851/851843-64.png?modified=1648138451) [Awesome RSS](https://addons.mozilla.org/en-US/firefox/addon/awesome-rss/)
Automatically searches for RSS feeds on sites you visit, right-clicking on the one you want allows you to add it to SmartRSS.

---

## "Free Internet" Addons
- [Bypass Paywalls Clean](https://gitlab.com/magnolia1234/bypass-paywalls-firefox-clean/-/releases)
- Wayback Machine: WARNING, enable "private mode" or it will send every site you visit
- Video Downloadhelper: Kinda shit, but works for some streams
- Download all images: this is gold!
- Sci-Hub X Now!
- Soundcloud Downloader

## Usability Addons
- Undo close tab
- Dark Background Light Text
- Favicon Switcher: When using many sites with the same favicon
- Limit Tabs: really useful against tab-hoarding
- Webcompat reporter: Be aware that sites should only be reported when not working on vanilla Firefox! Your hardened browser may break more.
- SingleFile: now supports compressed html containers!
- 404 Bookmarks: find dead links and maybe archive them using Internet Archives
- QR
- Cache Favicons for Bookmarks: WARNING, favicons can be used to track you, as they only load when you are new
- Unload Tabs
- Webhint
  
## Containers for isolation
For using multiple accounts on the same site simultaneously, an Addon is not needed. Right-click on the "new tab" button and enter the Container menu.

It is also not needed, if you want to login to a site only in a specific container while saving your cookies for that domain (Settings->Privacy->Cookies->Manage Exclusions, i.e. you stay logged in, but normally you are not, only if you enter that container.

## VPN Addons... ![Image](https://addons.mozilla.org/user-media/addon_icons/872/872622-64.png?modified=0f9dc327) ![Image](https://addons.mozilla.org/user-media/addon_icons/2273/2273849-64.png?modified=fa3be6ce) ![Image](https://addons.mozilla.org/user-media/addon_icons/817/817620-64.png?modified=64d09f2b)
are bullshit. Use a real paid VPN service or host your own.

A good VPN App like Mullvad supports Network blocking on early boot and for all apps, not just the Browser. Without a firewall ([OpenSnitch](https://github.com/evilsocket/opensnitch/releases/latest) for Linux and Mac, [SimpleWall](https://github.com/henrypp/simplewall/releases/latest) for Windows) using a VPN just in the browser makes no sense for most scenarios.

## "Small change addons"
There are tons of addons where all they do is change 1-2 settings in your `about:config`

- [Reject webp](https://addons.mozilla.org/en-US/firefox/addon/dont-accept-webp/)
- [Disable WebRTC](https://addons.mozilla.org/en-US/firefox/addon/happy-bonobo-disable-webrtc)
- [Toggle RFP](https://addons.mozilla.org/en-US/firefox/addon/toggle-resist-fingerprinting/)
- ...

These addons might not be bad, but may get outdated and often do stuff the Arkenfox user.js already does, or what you could easily find searching for what you want in the user.js (embedded documentation!) or in the `about:config`
