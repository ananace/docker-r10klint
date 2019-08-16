FROM alpine:latest

MAINTAINER Alexander Olofsson <alexander.olofsson@liu.se>

RUN apk update \
 && apk add \
      ruby ruby-dev ruby-etc ruby-json \
      git \
 && rm -f /var/cache/apk/* \
 && gem install -N \
      rake ra10ke r10k

ADD puppetfile-update /bin

VOLUME /code
