#!/bin/sh

if [ ! -f "/etc/redis.conf.old" ]; then
	mv /etc/redis.conf /etc/redis.conf.old
	mv /tmp/redis.conf /etc/redis.conf
fi

redis-server /etc/redis.conf --protected-mode no
