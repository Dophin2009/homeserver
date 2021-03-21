#!/bin/sh
sed -i "s/{{PASSWORD}}/$(cat ${PASSWORD_FILE})/" /usr/share/icecast/icecast.xml
icecast -c /usr/share/icecast/icecast.xml
