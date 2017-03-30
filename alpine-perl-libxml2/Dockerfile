# Image name : 
# pavelsr/alpine-perl-libxml2

# Build and publish:
# docker build -t pavelsr/alpine-perl-libxml2 .
# docker login
# docker push pavelsr/alpine-perl-libxml2

FROM alpine

LABEL maintainer "Pavel Serikov <pavelsr@cpan.org>"

RUN apk update && \ 
    apk add perl perl-dev g++ make wget curl libxml2-dev && \ 
    curl -L https://cpanmin.us | perl - App::cpanminus && \
      rm -rf /root/.cpanm/* /usr/local/share/man/* \
      cpanm XML::LibXML
