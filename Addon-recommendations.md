# Addon Recommendations

Arkenfox is done, but Firefoxes own parameters arent everything that can increase your privacy.

Be aware that Addons interfering with Network traffic, or Addons that are only Frontends for external services (translators, converters, etc.) will make you more unique or track you in general.

The Addon [Translate webpages](https://addons.mozilla.org/en-US/firefox/addon/traduzir-paginas-web/) ([Source Code](https://github.com/FilipePS/Traduzir-paginas-web) seems to be an exception, sending only Traffic to Google if you actively choose so.

## [NoScript](https://addons.mozilla.org/en-US/firefox/addon/noscript/)
The only Addon installed on the Tor-Browser.

My softening has enabled WebGL, so make sure to block it on all security levels in the settings.

The presets are made for useability with many big tracking companies being on "Trust", you can change that.

In general it doesnt hurt to block all sites from using:

- WebGL (Games and some Maps need that)
- ping
- Noscript (Sites may display their "no javascript" variant or simply refuse to work. As useless as the "Do not track" setting)
- unrestricted CSS (Sites will load slower but its more secure)
- LAN
- others


## [UBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin)
This Addon increases security, as Arkenfox removes Googles "Safe Browsing". It uses local filterlists to block tracking and malware domains, ads and more.

Using the right filterlists you can also use it to block Coockie Banners or "Social media" icons.

## [LibRedirect](https://addons.mozilla.org/en-US/firefox/addon/libredirect/)
This addon redirects common tracking monopoles to privacy-friendly servers hosted by volunteers, running OpenSource software.

Make sure to donate to frequently used servers, to keep them running!

## [LocalCDN](https://addons.mozilla.org/en-US/firefox/addon/localcdn-fork-of-decentraleyes/)
Many site creators are lazy and use external content like Google Fonts.

These are then always loaded from a third party, allowing them to see your IP, combined with the site you visit.

LocalCDN Downloads these contents and then redirects these requests to a local source, where the content is stored.

[More infos on their page](https://codeberg.org/nobody/LocalCDN). The Addon is a fork of Decentraleyes, so you dont need both!

## [KeepassXC integration](https://addons.mozilla.org/en-US/firefox/addon/keepassxc-browser/)
This addon does not work on Snap or Flatpak yet!

It allows you to use the very secure KeepassXC-password storage for inputs. 

To make it work you need URLs in your password entries and "Browser integration" enabled for your browser.

Firefox stores its passwords unencrypted on Android, on Linux they are unless you give a Masterpassword (why no kwallet or gnome-keyring integration??)

## [Add custom search engine](https://addons.mozilla.org/en-US/firefox/addon/add-custom-search-engine/)
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

In the settings you can assign a shortcut to this search engine.

While others use Google for everything, you can now use the most efficient choice and be faster and more private!

## [Snowflake](https://addons.mozilla.org/en-US/firefox/addon/torproject-snowflake/)
This addon helps people in censored countries use your Browser as a proxie to access the Tor-network.

If all entry-nodes are blacklisted on their DNS-servers or more, this is the only option for them to get free media and news.

It is not illegal in any way to connect to Tor Entrynodes. You may want to use a good VPN though.

## [Lightbeam](https://addons.mozilla.org/en-US/firefox/addon/lightbeam-chikl/)
This Addon analyzes the "families" of sites you visit, who share what resources and may gather your data. 

Really interesting but may be negative on Privacy.

## [ClearURLs](https://addons.mozilla.org/en-US/firefox/addon/clearurls/)
If you dont trust Firefox's URL cleaner, you can use that one, which is more agressive.

Removes tracking snippets from lots of URLs. May increase loading time and break certain sites, especially online payment sites!

## [Temporary Containers](https://addons.mozilla.org/en-US/firefox/addon/temporary-containers/)
This powerful addon allows you to open a tab quickly in a self-destructing container. 

You can also let the Addon delete that containers history when the tab is closed. 

Makes the Private Mode pretty useless.

## Containers for isolation
For using multiple accounts on the same site simultaneously, an Addon is not needed. Right-click on the "new tab" button and enter the Container menu.

It is also not needed, if you want to login to a site only in a specific container while saving your cookies for that domain (Settings->Privacy->Cookies->Manage Exclusions, i.e. you stay logged in, but normally you are not, only if you enter that container.

## VPN Addons...
are bullshit. Use a real paid VPN service or host your own.

A good VPN app like Mullvad supports Network blocking on early boot and for all apps, not just the Browser.
