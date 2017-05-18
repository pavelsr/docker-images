# Image name : 
# pavelsr/alpine-perl-libxml2

# Build
# docker build -t pavelsr/alpine-perl-libxml2:1.0 .
# 

# Add tags like
# docker tag pavelsr/alpine-perl-libxml2:1.0 pavelsr/alpine-perl-libxml2:latest
# docker tag 0e5574283393 pavelsr/alpine-perl-libxml2:latest
# docker tag httpd fedora/httpd:version1.0

# Publish
# docker login
# docker push pavelsr/alpine-perl-libxml2

# Run for inspection
# docker run -t -i pavelsr/alpine-perl-libxml2 /bin/sh


FROM alpine:3.1

LABEL maintainer "Pavel Serikov <pavelsr@cpan.org>"

RUN apk update && \ 
    apk add perl perl-dev g++ make wget curl libxml2-dev && \ 
    curl -L https://cpanmin.us | perl - App::cpanminus && \
    rm -rf /root/.cpanm/* /usr/local/share/man/* && \
    cpanm --verbose JSON::XS XML::XML2JSON
