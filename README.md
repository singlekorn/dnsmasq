# dnsmasq
dnsmasq container build

# Bring up service
docker service create --name=dns --replicas=2 -p 53:53/udp dnsmasq:2.0
