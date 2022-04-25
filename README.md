# singlekorn/dnsmasq
This project is only used for experimenting with docker

# Building & Testing
docker build . -t dnsmasq:test
docker volume create hosts
docker run -it -v hosts:/opt/hosts -p 53:53/udp dnsmasq:test

# Bring up service
docker service create --name=dns --replicas=2 -p 53:53/udp dnsmasq:2.0
