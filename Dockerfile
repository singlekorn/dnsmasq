FROM alpine:edge
RUN apk update \
    && apk add --no-cache dnsmasq

EXPOSE 53 53/udp

WORKDIR /opt

RUN echo '*/1  *  *  *  *    /opt/reload-cache.sh' > /etc/crontabs/root

COPY ./merakidns/ . 

ENTRYPOINT '/opt/run.sh'
