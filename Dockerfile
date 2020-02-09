FROM alpine:edge
RUN apk update \
    && apk add --no-cache dnsmasq

EXPOSE 53 53/udp

WORKDIR /opt/merakidns

RUN echo '*/1  *  *  *  *    /opt/merakidns/reload-cache.sh' > /etc/crontabs/root

COPY ./merakidns/ . 

CMD['run.sh']