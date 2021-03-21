FROM alpine:3.13

ARG user=icecast
ARG group=icecast
ARG PASSWORD

RUN apk -q update \
    && apk -q --no-progress add icecast \
    && rm -rf /var/cache/apk/*

COPY icecast.xml /usr/share/icecast/icecast.xml
RUN sed -i "s/{{PASSWORD}}/${PASSWORD}/" /usr/share/icecast/icecast.xml

RUN mkdir -p /var/log/icecast \
    && chown -R ${user}:${group} /usr/share/icecast \
    && chown -R ${user}:${group} /var/log/icecast

EXPOSE 8000

USER ${user}
CMD ["icecast", "-c", "/usr/share/icecast/icecast.xml"]
