#!/bin/sh

# Run python script to create a tg.1korn.io-datecode file

# Delete all but newest tg.1korn.io file in the /opt/hosts directory

# Send a SIGUP to dnsmasq to refresh the cache
PID=$(pidof dnsmasq)
if test -n "$PID" 
then
  kill -1 $PID
fi