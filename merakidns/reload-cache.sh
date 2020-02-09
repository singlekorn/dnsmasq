#!/bin/sh
PID=$(pidof dnsmasq)
if test -n "$PID" 
then
  kill -1 $PID
fi