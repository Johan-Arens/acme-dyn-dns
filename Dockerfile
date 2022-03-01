FROM debian:bullseye
RUN apt-get update && apt-get -y upgrade && apt-get -y install bind9
EXPOSE 53/udp
EXPOSE 53/tcp
ADD init.sh /init.sh
RUN chmod 750 /init.sh
WORKDIR /etc/bind
COPY config/* /etc/bind/
CMD ["/init.sh"]
