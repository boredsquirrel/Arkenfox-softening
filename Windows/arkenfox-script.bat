@echo off

echo Please close Firefox, if it is running.
timeout /t 10

mkdir %APPDATA%\Mozilla\Firefox\ARKENFOX
cd %APPDATA%\Mozilla\Firefox\ARKENFOX

powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/arkenfox/user.js/master/user.js', 'user.js')"

REM enable Firefox sync (disabled on Librewolf)
powershell -Command "(Get-Content user.js).replace('identity.fxaccounts.enabled\", false', 'identity.fxaccounts.enabled\", true') | Set-Content user.js"

REM allow search engine shortcuts
echo Keywords like 'ddg' or 'wiki' can be configured, make sure you trust the search engines.
powershell -Command "(Get-Content user.js).replace('keyword.enabled\", false', 'keyword.enabled\", true') | Set-Content user.js"

REM allow new version notes
powershell -Command "(Get-Content user.js | Where-Object { $_ -notmatch 'homepage_override.mstone\", \"ignore' }) | Set-Content user.js"

REM Restore session, don't autodelete everything
powershell -Command "(Get-Content user.js).replace('startup.homepage\", \"about:blank\"', 'startup.homepage\", 3') | Set-Content user.js"
echo user_pref("browser.history_expire_days",7); >> user.js
echo user_pref("browser.sessionstore.restore_pinned_tabs_on_demand",true); >> user.js
powershell -Command "(Get-Content user.js).replace('sanitizeOnShutdown\", true', 'sanitizeOnShutdown\", false') | Set-Content user.js"
powershell -Command "(Get-Content user.js).replace('clearOnShutdown.cache\", true', 'clearOnShutdown.cache\", false') | Set-Content user.js"
powershell -Command "(Get-Content user.js).replace('clearOnShutdown.history\", true', 'clearOnShutdown.history\", false') | Set-Content user.js"
powershell -Command "(Get-Content user.js).replace('clearOnShutdown.sessions\", true', 'clearOnShutdown.sessions\", false') | Set-Content user.js"

REM Cosmetic: prevent Amazon, Google etc. from being pinned to the Newtabpage should you use it
echo user_pref("browser.newtabpage.pinned", ""); >> user.js

REM Cosmetic: use system colors
powershell -
