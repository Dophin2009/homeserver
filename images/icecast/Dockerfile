FROM alpine:3.13

ENV ICECAST_VERSION 2.4.4

ARG user=icecast
ARG group=icecast

RUN apk -q update \
    && apk -q --no-progress add icecast \
    && rm -rf /var/cache/apk/*

COPY icecast.xml /usr/share/icecast/icecast.xml

RUN mkdir -p /var/log/icecast \
    && chown -R ${user}:${group} /usr/share/icecast \
    && chown -R ${user}:${group} /var/log/icecast

ADD docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

EXPOSE 8000

USER ${user}
CMD ["./docker-entrypoint.sh"]
