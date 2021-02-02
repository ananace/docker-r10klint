FROM alpine:latest

MAINTAINER Alexander Olofsson <alexander.olofsson@liu.se>

RUN apk add --no-cache \
      ruby ruby-dev ruby-etc ruby-json \
      git \
 && mkdir /root/.cache \
 && gem install -N \
      rake ra10ke

ADD puppetfile-update /bin

VOLUME /code
