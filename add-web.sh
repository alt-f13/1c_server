#!/bin/bash
db=$1
/opt/1C/v8.3/i386/webinst -apache22 -wsdir $db -dir "/var/www/html/${db}/" -connStr "Srvr=\""db"\";Ref=\""$db"\"" -confPath /etc/apache2/apache2.conf

echo "<div class=\"list-group-item\"><a href=\"/$db/\">${db}</a><a href=\"/${db}.v8i\">config</a></div>\n" >> /var/www/db.list.html

cat <<EOF>/var/www/${db}.v8i
[$db]
Connect=ws="http://${VIRTUAL_HOST}/${db}/";
Folder=/
App=Auto
WA=1
Version=8.3
WSA=1

EOF
