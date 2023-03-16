# THIS IS EXPERIMENTAL

@echo off
mkdir %USERPROFILE%\.local\bin
cd %USERPROFILE%\.local\bin
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/trytomakeyouprivate/Arkenfox-softening/main/arkenfox-script.sh', 'arkenfox-script.sh')"
del arkenfox-script.sh

REM flatpak
powershell -Command "(Get-Content arkenfox-script.sh).replace('~/.mozilla/firefox/', '~/.var/app/org.mozilla.firefox/.mozilla/firefox/') | Set-Content arkenfox-script.sh"
REM snap
powershell -Command "(Get-Content arkenfox-script.sh).replace('~/.mozilla', '~/snap/firefox/common/.mozilla') | Set-Content arkenfox-script.sh"

:loop1
set /p "letterboxing=Do you want to disable Letterboxing, risking a lack of privacy for convenience? (y/n) "
if /i "%letterboxing%"=="y" (
  echo # Disable Letterboxing ---------------->> arkenfox-script.sh
  echo sed -i 's/resistFingerprinting.letterboxing", true/resistFingerprinting.letterboxing", false/g' user.js>> arkenfox-script.sh
) else if /i "%letterboxing%"=="n" (
  goto loop2
) else (
  echo Please answer yes or no.
  goto loop1
)

:loop2
set /p "captiveportal=Do you want to enable Captive Portal functionality, using captive.kuketz.de (This also disables HTTPS-only mode, second browser is strongly recommended) ? (y/n) "
if /i "%captiveportal%"=="y" (
  :loop3
  set /p "customserver=Do you want to use a custom Captive portal server (Any http-only server)? (y/n) "
  if /i "%customserver%"=="y" (
    set /p "URL=Enter a http:// URL: "
    echo # Allow Captive Portals: -------------->> arkenfox-script.sh
    echo sed -i 's/user_pref(canonicalURL", ";/canonicalURL", "%URL%/g' user.js>> arkenfox-script.sh
    echo sed -i 's/portal-service.enabled", false/portal-service.enabled", true/g' user.js>> arkenfox-script.sh
    echo sed -i 's/network.connectivity-service.enabled", false/network.connectivity-service.enabled", true/g' user.js>> arkenfox-script.sh
    echo sed -i 's/https_only_mode", true/https_only_mode", false/g' user.js>> arkenfox-script.sh
  ) else if /i "%customserver%"=="n" (
    set "URL=http://www.captive.kuketz.de"
    echo # Allow Captive Portals: -------------->> arkenfox-script.sh
    echo sed -i 's/user_pref(canonicalURL", ";/canonicalURL", "http://www.captive.kuketz.de/g' user.js>> arkenfox-script.sh
    echo sed -i 's/portal-service.enabled", false/portal-service.enabled", true/g' user.js>> arkenfox-script.sh
    echo sed -i 's/network.connectivity-service.enabled", false/network.connectivity-service.enabled", true/g' user.js>> arkenfox-script.sh
    echo sed -i 's/https_only_mode", true/https_only_mode", false/g' user.js>> arkenfox-script.sh
  ) else (
    echo Please answer yes or no.
