#!/bin/sh
sed "s/{{PASSWORD}}/$(cat ${PASSWORD_FILE})/" /config/mpd.conf | 
  sed "s~{{LIBRARY}}~${LIBRARY}~" | 
  sed "s~{{PLAYLISTS}}~${PLAYLISTS}~" >/etc/mpd.conf

mpd --verbose --stdout --no-daemon /etc/mpd.conf
