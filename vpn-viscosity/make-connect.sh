#!/bin/bash
GOEP_PWD=$(/bin/cat ~/.goep_password)
GOEP_TOKEN=$(/usr/local/bin/oathtool --totp -b GU6ON4MWCTFTPOVF)
echo -e "a.bonforti\n$GOEP_PWD$GOEP_TOKEN" > /tmp/.ovpn-tmp
chmod 777 /tmp/.ovpn-tmp

osascript -e "tell application \"/Applications/Tunnelblick.app\"" -e "connect \"GOEP-AD-CONFIG\"" -e "end tell"