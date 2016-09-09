FROM ubuntu:latest
MAINTAINER s@lavr.me
# install deb package 

RUN apt-get update 

VOLUME ["/target"]

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
