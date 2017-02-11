#!/bin/bash
#set -e
#apache2ctl start

if [ ! -f /var/www/html/index.html ]; then
    echo "File not found!"
    cp /opt/www/* /var/www/html
fi

exec /opt/1C/v8.3/i386/ragent -port 1540 -regport 1541 -range 1561:1591
