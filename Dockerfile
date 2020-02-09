FROM alpine:edge
RUN apk update \
    && apk add --no-cache dnsmasq 

EXPOSE 53 53/udp

WORKDIR /opt

COPY dnsmasq.conf . 

ENTRYPOINT ["dnsmasq","--no-hosts","--conf-file=/opt/dnsmasq.conf","--stop-dns-rebind","--no-daemon"]
