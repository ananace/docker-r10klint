FROM alpine:latest

MAINTAINER Alexander Olofsson <alexander.olofsson@liu.se>

# COPY ra10ke-3.1.0.gem /root/ra10ke.gem
RUN apk add --no-cache \
      ruby ruby-dev ruby-etc ruby-json \
      build-base git \
 && mkdir /root/.cache \
 && gem install -N \
      rake ra10ke r10k \
 && gem cleanup r10k \
 && apk del build-base ruby-dev

ADD puppetfile-update /bin

VOLUME /code
