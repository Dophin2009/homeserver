FROM alpine:3.13

ARG LIBRARY
ARG PLAYLISTS
ARG PASSWORD_FILE

RUN set -xe \
    && apk add --no-cache mpd mpc \
    && setcap -r /usr/bin/mpd

ADD mpd.conf /config/mpd.conf

RUN mkdir -p /var/lib/mpd
RUN touch /var/lib/mpd/mpd.db

ADD docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

EXPOSE 6600
CMD ["./docker-entrypoint.sh"]
