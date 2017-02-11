#!/bin/bash
db=$1
/opt/1C/v8.3/i386/webinst -apache22 -wsdir $db -dir "/var/www/html/${db}/" -connStr "Srvr=\""10.11.1.8"\";Ref=\""$db"\"" -confPath /etc/apache2/apache2.conf

