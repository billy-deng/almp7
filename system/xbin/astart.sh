#!/system/bin/sh

#/system/xbin/fcgiserver &

export PHP_FCGI_CHILDREN=10
export PHP_FCGI_MAX_REQUESTS=1000

#php-cgi -b 127.0.0.1:9000 -c /system/etc/php/php.ini >> /mnt/sdcard2/www/ROOT/var/log/fcgiserver.log 2>&1

#mysqld --defaults-file=/system/etc/mysql/my.ini > /dev/null &

php-cgi -b 127.0.0.1:9000 -c /system/etc/php/php.ini > /dev/null &

lighttpd -f /system/etc/lighttpd/lighttpd.conf
