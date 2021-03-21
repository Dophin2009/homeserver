FROM alpine:3.13

ARG LIBRARY
ARG PLAYLISTS
ARG PASSWORD

RUN set -xe \
    && apk add --no-cache mpd mpc \
    && setcap -r /usr/bin/mpd

RUN mkdir -p /var/lib/mpd
RUN touch /var/lib/mpd/mpd.db

ADD mpd.conf /etc/mpd.conf
RUN sed -i "s/{{PASSWORD}}/${PASSWORD}/" /etc/mpd.conf

EXPOSE 6600
CMD ["mpd", "--verbose", "--stdout", "--no-daemon", "/etc/mpd.conf"]
