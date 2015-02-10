#!/bin/bash

# initialize the cache_dir
if [ ! -d /var/spool/squid3/00 ]; then
  /usr/sbin/squid3 -N -f /etc/squid3/squid.conf -z
fi

/usr/sbin/squid3 -NYC -d 1 -f /etc/squid3/squid.conf