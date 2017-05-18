# pavelsr/kayako-dashboard-dev
# docker build -t pavelsr/kayako-dashboard-dev .

FROM pavelsr/alpine-perl-libxml2:latest

LABEL maintainer "Pavel Serikov <pavelsr@cpan.org>"

COPY cpanfile ./
RUN cpanm --verbose --installdeps . && rm cpanfile
EXPOSE 3000