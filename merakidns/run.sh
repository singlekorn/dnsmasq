#!/bin/sh

# Start Crond
crond

# Start dnsmasq
dnsmasq --no-hosts --clear-on-reload --stop-dns-rebind --conf-file=/opt/dnsmasq.conf --hostsdir=/opt/hosts --no-daemon