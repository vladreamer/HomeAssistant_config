#!/bin/bash

#hass --script check_config
PRE_EXEC="cd /srv/homeassistant; python3 -m venv .; source bin/activate;"

# Typically /usr/bin/hass
HASS_BIN="hass"
RUN_AS="homeassistant"
CMD="$HASS_BIN --script check_config"
su -s /bin/bash -c "$CMD" $RUN_AS



cd /home/homeassistant/.homeassistant
git add .
git status
echo -n "Enter the Description for the Change: " 
read CHANGE_MSG
git commit -m "${CHANGE_MSG}"
git push origin master

exit
