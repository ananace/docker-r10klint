FROM alpine:latest

MAINTAINER Alexander Olofsson <alexander.olofsson@liu.se>

COPY ra10ke-3.1.0.gem /root/ra10ke.gem
RUN apk add --no-cache \
      ruby ruby-dev ruby-etc ruby-json \
      git \
 && mkdir /root/.cache \
 && gem install -N \
      rake /root/ra10ke.gem r10k rdoc \
 && gem cleanup r10k \
 && gem uninstall rdoc

ADD puppetfile-update /bin

VOLUME /code
