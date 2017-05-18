Convenient to use for development of any Perl apps based on XML::LibXML

Based on alpine linux v3.1 (ibxml2 v2.9.2 inside).
Latest alpine has libxml2 v2.9.4 with regression bug, that's why I haven't used latest alpine.


Including:

```
perl
perl-dev
cpanm
wget 
curl 
libxml2
libxml2-dev
```

262MB total


FROM alpine:3.1

LABEL maintainer "Pavel Serikov <pavelsr@cpan.org>"

RUN apk update && \ 
    apk add perl perl-dev g++ make wget curl libxml2-dev && \ 
    curl -L https://cpanmin.us | perl - App::cpanminus && \
    rm -rf /root/.cpanm/* /usr/local/share/man/* && \
    cpanm --verbose JSON::XS XML::XML2JSON


